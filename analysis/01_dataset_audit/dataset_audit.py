"""
Project 2 - Logistics Operations BI
Stage 1A - Dataset Audit

Purpose
-------
Programmatically audit the immutable raw Logistics Operations dataset
before Power Query / Power BI modelling.

IMPORTANT
---------
1. Raw files are READ ONLY.
2. This script does NOT clean, rename, modify, or overwrite raw data.
3. Raw CSV files are located directly inside:
       data/raw/
4. Audit logs and structured audit outputs are written to:
       logs/dataset_audit/

Audit Coverage
--------------
1. Raw file inventory
2. Table row and column counts
3. Column names and data types
4. Null counts and percentages
5. Duplicate rows
6. Primary-key uniqueness
7. Unique-value counts
8. Date columns and date ranges
9. Numeric statistics
10. Categorical columns
11. Foreign-key integrity
12. Preliminary table classification
13. Audit execution logging
"""

from pathlib import Path
from datetime import datetime

import pandas as pd


# ============================================================
# 1. PROJECT PATHS
# ============================================================

# Current file:
# analysis/01_dataset_audit/dataset_audit.py
#
# parents[0] = 01_dataset_audit
# parents[1] = analysis
# parents[2] = project root

PROJECT_ROOT = Path(__file__).resolve().parents[2]

# IMPORTANT:
# Raw CSV files are directly inside data/raw/
RAW_DIR = PROJECT_ROOT / "data" / "raw"

# Functional logging directory
LOG_DIR = PROJECT_ROOT / "logs" / "dataset_audit"

LOG_DIR.mkdir(parents=True, exist_ok=True)


# ============================================================
# 2. EXPECTED RAW TABLES
# ============================================================

EXPECTED_TABLES = [
    "customers",
    "drivers",
    "trucks",
    "trailers",
    "facilities",
    "routes",
    "loads",
    "trips",
    "delivery_events",
    "fuel_purchases",
    "maintenance_records",
    "safety_incidents",
    "driver_monthly_metrics",
    "truck_utilization_metrics",
]


# ============================================================
# 3. PRIMARY KEY DEFINITIONS
# ============================================================

PRIMARY_KEYS = {
    "customers": ["customer_id"],
    "drivers": ["driver_id"],
    "trucks": ["truck_id"],
    "trailers": ["trailer_id"],
    "facilities": ["facility_id"],
    "routes": ["route_id"],
    "loads": ["load_id"],
    "trips": ["trip_id"],
    "delivery_events": ["event_id"],
    "fuel_purchases": ["fuel_purchase_id"],
    "maintenance_records": ["maintenance_id"],
    "safety_incidents": ["incident_id"],
    "driver_monthly_metrics": ["driver_id", "month"],
    "truck_utilization_metrics": ["truck_id", "month"],
}


# ============================================================
# 4. PRELIMINARY TABLE CLASSIFICATION
# ============================================================

TABLE_CLASSIFICATION = {
    "customers": "Dimension",
    "drivers": "Dimension",
    "trucks": "Dimension",
    "trailers": "Dimension",
    "facilities": "Dimension",
    "routes": "Dimension",
    "loads": "Fact",
    "trips": "Fact",
    "delivery_events": "Fact / Event",
    "fuel_purchases": "Fact",
    "maintenance_records": "Fact / Event",
    "safety_incidents": "Fact / Event",
    "driver_monthly_metrics": "Supporting Aggregate",
    "truck_utilization_metrics": "Supporting Aggregate",
}


# ============================================================
# 5. FOREIGN KEY DEFINITIONS
# ============================================================

FOREIGN_KEYS = {
    "loads": {
        "customer_id": ("customers", "customer_id"),
        "route_id": ("routes", "route_id"),
    },

    "trips": {
        "load_id": ("loads", "load_id"),
        "driver_id": ("drivers", "driver_id"),
        "truck_id": ("trucks", "truck_id"),
        "trailer_id": ("trailers", "trailer_id"),
    },

    "delivery_events": {
        "load_id": ("loads", "load_id"),
        "trip_id": ("trips", "trip_id"),
        "facility_id": ("facilities", "facility_id"),
    },

    "fuel_purchases": {
        "trip_id": ("trips", "trip_id"),
        "truck_id": ("trucks", "truck_id"),
        "driver_id": ("drivers", "driver_id"),
    },

    "maintenance_records": {
        "truck_id": ("trucks", "truck_id"),
    },

    "safety_incidents": {
        "trip_id": ("trips", "trip_id"),
        "truck_id": ("trucks", "truck_id"),
        "driver_id": ("drivers", "driver_id"),
    },

    "driver_monthly_metrics": {
        "driver_id": ("drivers", "driver_id"),
    },

    "truck_utilization_metrics": {
        "truck_id": ("trucks", "truck_id"),
    },
}


# ============================================================
# 6. HELPER FUNCTIONS
# ============================================================

def print_section(title):
    """Print a formatted section heading."""

    print("\n" + "=" * 75)
    print(title)
    print("=" * 75)


def detect_date_columns(df):
    """Detect columns whose names indicate date/time information."""

    date_columns = []

    for column in df.columns:

        column_lower = column.lower()

        if any(
            keyword in column_lower
            for keyword in [
                "date",
                "datetime",
                "timestamp",
                "month",
            ]
        ):
            date_columns.append(column)

    return date_columns


def detect_numeric_columns(df):
    """Return numeric columns."""

    return df.select_dtypes(
        include="number"
    ).columns.tolist()


def detect_categorical_columns(df):
    """Return object/category columns."""

    return df.select_dtypes(
        include=["object", "category"]
    ).columns.tolist()


def check_primary_key(df, table_name):
    """
    Check primary-key uniqueness and null values.

    Supports both single-column and composite primary keys.
    """

    keys = PRIMARY_KEYS.get(table_name)

    if not keys:
        return {
            "keys": "Not defined",
            "duplicate_key_rows": None,
            "null_key_rows": None,
        }

    missing_keys = [
        key for key in keys
        if key not in df.columns
    ]

    if missing_keys:

        return {
            "keys": ", ".join(keys),
            "duplicate_key_rows": "KEY COLUMN MISSING",
            "null_key_rows": "KEY COLUMN MISSING",
        }

    duplicate_count = df.duplicated(
        subset=keys,
        keep=False
    ).sum()

    null_count = df[keys].isna().any(
        axis=1
    ).sum()

    return {
        "keys": ", ".join(keys),
        "duplicate_key_rows": int(
            duplicate_count
        ),
        "null_key_rows": int(
            null_count
        ),
    }


def check_foreign_keys(dataframes):
    """
    Check foreign-key coverage and orphan records.

    Null foreign keys are not treated as orphan records.
    """

    results = []

    for child_table, relationships in FOREIGN_KEYS.items():

        child_df = dataframes.get(child_table)

        if child_df is None:
            continue

        for (
            child_column,
            (parent_table, parent_column)
        ) in relationships.items():

            if child_column not in child_df.columns:

                results.append({
                    "child_table": child_table,
                    "child_column": child_column,
                    "parent_table": parent_table,
                    "parent_column": parent_column,
                    "non_null_values": None,
                    "orphan_values": "COLUMN MISSING",
                })

                continue

            parent_df = dataframes.get(
                parent_table
            )

            if (
                parent_df is None
                or parent_column not in parent_df.columns
            ):

                results.append({
                    "child_table": child_table,
                    "child_column": child_column,
                    "parent_table": parent_table,
                    "parent_column": parent_column,
                    "non_null_values": None,
                    "orphan_values": "PARENT MISSING",
                })

                continue

            child_values = (
                child_df[child_column]
                .dropna()
            )

            parent_values = set(
                parent_df[parent_column]
                .dropna()
            )

            orphan_count = (
                ~child_values.isin(parent_values)
            ).sum()

            results.append({
                "child_table": child_table,
                "child_column": child_column,
                "parent_table": parent_table,
                "parent_column": parent_column,
                "non_null_values": int(
                    len(child_values)
                ),
                "orphan_values": int(
                    orphan_count
                ),
            })

    return results


# ============================================================
# 7. MAIN AUDIT FUNCTION
# ============================================================

def main():

    start_time = datetime.now()

    timestamp = start_time.strftime(
        "%Y%m%d_%H%M%S"
    )

    # Main execution log
    log_file = (
        LOG_DIR
        / f"audit_run_{timestamp}.txt"
    )

    print_section(
        "LOGISTICS OPERATIONS DATASET AUDIT"
    )

    print(
        f"Project root : {PROJECT_ROOT}"
    )

    print(
        f"Raw dataset  : {RAW_DIR}"
    )

    print(
        f"Log directory: {LOG_DIR}"
    )

    # ========================================================
    # 1. CHECK RAW DIRECTORY
    # ========================================================

    if not RAW_DIR.exists():

        raise FileNotFoundError(
            f"Raw dataset directory not found:\n"
            f"{RAW_DIR}"
        )

    # ========================================================
    # 2. FILE INVENTORY
    # ========================================================

    print_section(
        "1. RAW FILE INVENTORY"
    )

    csv_files = sorted(
        RAW_DIR.glob("*.csv")
    )

    schema_file = (
        RAW_DIR
        / "DATABASE_SCHEMA.txt"
    )

    print(
        f"CSV files discovered: "
        f"{len(csv_files)}"
    )

    for file in csv_files:

        print(
            f"  - {file.name}"
        )

    print(
        f"\nSchema file present: "
        f"{schema_file.exists()}"
    )

    # ========================================================
    # 3. EXPECTED TABLE CHECK
    # ========================================================

    discovered_tables = {
        file.stem
        for file in csv_files
    }

    expected_tables = set(
        EXPECTED_TABLES
    )

    missing_tables = (
        expected_tables
        - discovered_tables
    )

    unexpected_tables = (
        discovered_tables
        - expected_tables
    )

    print_section(
        "2. EXPECTED TABLE CHECK"
    )

    if not missing_tables:

        print(
            "Missing expected tables: NONE"
        )

    else:

        print(
            "Missing expected tables:"
        )

        for table in sorted(
            missing_tables
        ):
            print(
                f"  - {table}"
            )

    if not unexpected_tables:

        print(
            "Unexpected CSV tables: NONE"
        )

    else:

        print(
            "Unexpected CSV tables:"
        )

        for table in sorted(
            unexpected_tables
        ):
            print(
                f"  - {table}"
            )

    # ========================================================
    # 4. LOAD DATA
    # ========================================================

    dataframes = {}

    print_section(
        "3. LOADING RAW TABLES"
    )

    for file in csv_files:

        table_name = file.stem

        print(
            f"Loading: {table_name}"
        )

        df = pd.read_csv(file)

        dataframes[
            table_name
        ] = df

    # ========================================================
    # 5. TABLE INVENTORY
    # ========================================================

    print_section(
        "4. TABLE INVENTORY"
    )

    inventory_results = []

    for table_name, df in dataframes.items():

        classification = (
            TABLE_CLASSIFICATION.get(
                table_name,
                "Unclassified"
            )
        )

        inventory_results.append({

            "table": table_name,

            "rows": len(df),

            "columns": len(
                df.columns
            ),

            "classification": classification,

        })

        print(
            f"{table_name:30} "
            f"Rows: {len(df):>10,} | "
            f"Columns: {len(df.columns):>3} | "
            f"Class: {classification}"
        )

    # ========================================================
    # 6. COLUMN / DATA TYPE AUDIT
    # ========================================================

    print_section(
        "5. COLUMN / DATA TYPE AUDIT"
    )

    column_results = []

    for table_name, df in dataframes.items():

        print(
            f"\n[{table_name}]"
        )

        for column in df.columns:

            dtype = str(
                df[column].dtype
            )

            null_count = int(
                df[column].isna().sum()
            )

            null_pct = (
                null_count
                / len(df)
                * 100
                if len(df) > 0
                else 0
            )

            unique_count = int(
                df[column].nunique(
                    dropna=True
                )
            )

            column_results.append({

                "table": table_name,

                "column": column,

                "dtype": dtype,

                "null_count": null_count,

                "null_pct": round(
                    null_pct,
                    2
                ),

                "unique_count":
                    unique_count,

            })

            print(
                f"  {column:30} "
                f"{dtype:12} "
                f"Nulls: "
                f"{null_count:>7,} "
                f"({null_pct:6.2f}%) "
                f"Unique: "
                f"{unique_count:>8,}"
            )

    # ========================================================
    # 7. DUPLICATE ROW AUDIT
    # ========================================================

    print_section(
        "6. DUPLICATE ROW AUDIT"
    )

    duplicate_results = []

    for table_name, df in dataframes.items():

        duplicate_count = int(
            df.duplicated().sum()
        )

        duplicate_results.append({

            "table": table_name,

            "duplicate_rows":
                duplicate_count,

        })

        print(
            f"{table_name:30} "
            f"Duplicate rows: "
            f"{duplicate_count:,}"
        )

    # ========================================================
    # 8. PRIMARY KEY AUDIT
    # ========================================================

    print_section(
        "7. PRIMARY KEY AUDIT"
    )

    primary_key_results = []

    for table_name, df in dataframes.items():

        result = check_primary_key(
            df,
            table_name
        )

        result["table"] = (
            table_name
        )

        primary_key_results.append(
            result
        )

        print(
            f"{table_name:30} "
            f"Key: {result['keys']} | "
            f"Duplicate key rows: "
            f"{result['duplicate_key_rows']} | "
            f"Null key rows: "
            f"{result['null_key_rows']}"
        )

    # ========================================================
    # 9. DATE AUDIT
    # ========================================================

    print_section(
        "8. DATE COLUMN AUDIT"
    )

    date_results = []

    for table_name, df in dataframes.items():

        date_columns = (
            detect_date_columns(df)
        )

        for column in date_columns:

            series = (
                df[column]
                .dropna()
            )

            if len(series) == 0:
                continue

            parsed_dates = (
                pd.to_datetime(
                    series,
                    errors="coerce"
                )
            )

            valid_dates = (
                parsed_dates
                .dropna()
            )

            if len(valid_dates) == 0:
                continue

            result = {

                "table": table_name,

                "column": column,

                "min_date":
                    valid_dates.min(),

                "max_date":
                    valid_dates.max(),

                "valid_dates":
                    len(valid_dates),

                "invalid_dates":
                    len(series)
                    - len(valid_dates),

            }

            date_results.append(
                result
            )

            print(
                f"{table_name:30} "
                f"{column:30} "
                f"{valid_dates.min()} "
                f"→ "
                f"{valid_dates.max()}"
            )

    # ========================================================
    # 10. NUMERIC AUDIT
    # ========================================================

    print_section(
        "9. NUMERIC COLUMN AUDIT"
    )

    numeric_results = []

    for table_name, df in dataframes.items():

        numeric_columns = (
            detect_numeric_columns(df)
        )

        for column in numeric_columns:

            series = (
                df[column]
                .dropna()
            )

            if len(series) == 0:
                continue

            result = {

                "table": table_name,

                "column": column,

                "min": series.min(),

                "max": series.max(),

                "mean": series.mean(),

                "median": series.median(),

                "zero_count":
                    int(
                        (series == 0).sum()
                    ),

                "negative_count":
                    int(
                        (series < 0).sum()
                    ),

            }

            numeric_results.append(
                result
            )

            print(
                f"{table_name:30} "
                f"{column:30} "
                f"Min: {series.min()} | "
                f"Max: {series.max()} | "
                f"Mean: "
                f"{series.mean():.2f}"
            )

    # ========================================================
    # 11. CATEGORICAL AUDIT
    # ========================================================

    print_section(
        "10. CATEGORICAL COLUMN AUDIT"
    )

    categorical_results = []

    for table_name, df in dataframes.items():

        categorical_columns = (
            detect_categorical_columns(df)
        )

        for column in categorical_columns:

            unique_count = int(
                df[column].nunique(
                    dropna=True
                )
            )

            categorical_results.append({

                "table": table_name,

                "column": column,

                "unique_values":
                    unique_count,

            })

            print(
                f"{table_name:30} "
                f"{column:30} "
                f"Unique values: "
                f"{unique_count}"
            )

    # ========================================================
    # 12. FOREIGN KEY AUDIT
    # ========================================================

    print_section(
        "11. FOREIGN KEY AUDIT"
    )

    foreign_key_results = (
        check_foreign_keys(
            dataframes
        )
    )

    for result in foreign_key_results:

        print(
            f"{result['child_table']}."
            f"{result['child_column']} "
            f"→ "
            f"{result['parent_table']}."
            f"{result['parent_column']} "
            f"| Orphans: "
            f"{result['orphan_values']}"
        )

    # ========================================================
    # 13. PRELIMINARY CLASSIFICATION
    # ========================================================

    print_section(
        "12. PRELIMINARY TABLE CLASSIFICATION"
    )

    classification_results = []

    for table_name in dataframes:

        classification = (
            TABLE_CLASSIFICATION.get(
                table_name,
                "Unclassified"
            )
        )

        classification_results.append({

            "table": table_name,

            "classification":
                classification,

        })

        print(
            f"{table_name:30} "
            f"{classification}"
        )

    # ========================================================
    # 14. SAVE STRUCTURED AUDIT RESULTS
    # ========================================================

    print_section(
        "13. SAVING AUDIT RESULTS"
    )

    output_files = []

    def save_output(df, filename):

        output_path = (
            LOG_DIR
            / f"{filename}_{timestamp}.csv"
        )

        df.to_csv(
            output_path,
            index=False
        )

        output_files.append(
            output_path
        )

    save_output(
        pd.DataFrame(
            inventory_results
        ),
        "table_inventory"
    )

    save_output(
        pd.DataFrame(
            column_results
        ),
        "column_audit"
    )

    save_output(
        pd.DataFrame(
            duplicate_results
        ),
        "duplicate_audit"
    )

    save_output(
        pd.DataFrame(
            primary_key_results
        ),
        "primary_key_audit"
    )

    save_output(
        pd.DataFrame(
            date_results
        ),
        "date_audit"
    )

    save_output(
        pd.DataFrame(
            numeric_results
        ),
        "numeric_audit"
    )

    save_output(
        pd.DataFrame(
            categorical_results
        ),
        "categorical_audit"
    )

    save_output(
        pd.DataFrame(
            foreign_key_results
        ),
        "foreign_key_audit"
    )

    save_output(
        pd.DataFrame(
            classification_results
        ),
        "table_classification"
    )

    # ========================================================
    # 15. WRITE EXECUTION LOG
    # ========================================================

    end_time = datetime.now()

    duration = (
        end_time - start_time
    )

    with open(
        log_file,
        "w",
        encoding="utf-8"
    ) as log:

        log.write(
            "PROJECT 2 - DATASET AUDIT RUN\n"
        )

        log.write(
            "=" * 50 + "\n"
        )

        log.write(
            f"Start time: {start_time}\n"
        )

        log.write(
            f"End time: {end_time}\n"
        )

        log.write(
            f"Duration: {duration}\n"
        )

        log.write(
            f"Project root: {PROJECT_ROOT}\n"
        )

        log.write(
            f"Raw directory: {RAW_DIR}\n"
        )

        log.write(
            f"CSV files discovered: "
            f"{len(csv_files)}\n"
        )

        log.write(
            f"Expected tables: "
            f"{len(EXPECTED_TABLES)}\n"
        )

        log.write(
            f"Loaded tables: "
            f"{len(dataframes)}\n"
        )

        log.write(
            f"Missing expected tables: "
            f"{len(missing_tables)}\n"
        )

        log.write(
            f"Unexpected tables: "
            f"{len(unexpected_tables)}\n"
        )

        log.write(
            f"Schema file present: "
            f"{schema_file.exists()}\n"
        )

        log.write(
            "\nRAW DATA STATUS\n"
        )

        log.write(
            "Raw files were READ ONLY.\n"
        )

        log.write(
            "No raw files were modified.\n"
        )

        log.write(
            "\nAUDIT OUTPUTS\n"
        )

        for output_file in output_files:

            log.write(
                f"- {output_file.name}\n"
            )

    # ========================================================
    # 16. COMPLETION MESSAGE
    # ========================================================

    print_section(
        "AUDIT COMPLETE"
    )

    print(
        f"Started : {start_time}"
    )

    print(
        f"Finished: {end_time}"
    )

    print(
        f"Duration: {duration}"
    )

    print(
        f"\nAudit outputs saved to:"
    )

    print(
        f"{LOG_DIR}"
    )

    print(
        "\nRaw dataset was READ ONLY."
    )

    print(
        "No raw files were modified."
    )


# ============================================================
# 8. SCRIPT ENTRY POINT
# ============================================================

if __name__ == "__main__":
    main()