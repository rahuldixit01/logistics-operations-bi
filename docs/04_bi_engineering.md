## 4.1 BI Engineering Foundation & Model Architecture

---

Stage 4 converts the validated Stage 3 business design into an implementable BI architecture. The objective is to establish the model, transformation, relationship, grain, and implementation boundaries before production Power Query and DAX are developed.

The engineering design must preserve the approved KPI definitions, validated data-quality findings, analytical populations, and business-question scope established in Stages 2 and 3.

### 4.1.1 BI Engineering Objectives

---

The primary objective of BI Engineering is to build a reliable analytical foundation for the approved Logistics Operations business questions and KPI portfolio.

Stage 4 must:

1. Convert the approved Stage 3 analytical design into an implementable BI model.
2. Preserve validated source data and documented data-quality limitations.
3. Maintain explicit analytical grain across different operational datasets.
4. Establish controlled Power Query transformation responsibilities.
5. Establish a reliable semantic-model architecture.
6. Define relationships without introducing uncontrolled fact-to-fact multiplication.
7. Implement approved KPI definitions without silently changing business logic.
8. Establish a controlled path from independent validation to DAX implementation.
9. Provide a model that supports the approved Stage 3.8 dashboard architecture.
10. Preserve traceability from business requirement through implementation and reconciliation.

BI Engineering is therefore an implementation stage, not a new business-definition stage.

### 4.1.2 Engineering Scope

---

The Stage 4 engineering scope is governed by the approved Stage 3 business design.

The primary analytical scope covers:

* Overall operational performance
* Delivery reliability
* Fleet utilization
* Fuel consumption and fuel cost
* Route performance
* Facility performance
* Driver and asset diagnostics where supported
* Maintenance diagnostics where supported
* Time-based operational analysis
* Customer and efficiency exploration where supported
* Profitability support assessment

The primary KPI portfolio consists of the nine validated P1 KPIs:

1. Completed Loads
2. Completed Trips
3. Total Revenue
4. On-Time Delivery %
5. Fleet Utilization %
6. Active Fleet Count
7. Total Fuel Consumption
8. Average Fuel Efficiency
9. Fuel Cost

All nine P1 KPIs were approved during Stage 3.5, with documented limitations where applicable.

Stage 4 must implement these approved definitions rather than create alternative KPI definitions.

### 4.1.3 BI Engineering Toolchain

---

The project follows the controlled analyst-first implementation workflow:

**Python → Excel → Power Query → Power BI/DAX**

#### Python

Python provides independent analytical computation and validation.

It may be used for:

* baseline calculation
* aggregation
* reconciliation
* exception analysis
* population checks
* distribution analysis
* independent KPI verification
* analytical investigation support

Python results must not be treated as production BI measures merely because they were independently calculated.

#### Excel

Excel is a first-class business-analysis and evidence layer.

It may be used for:

* PivotTables
* business comparisons
* trend analysis
* contribution analysis
* validation tables
* reconciliation
* management-oriented summaries
* evidence review

Excel evidence must remain traceable to the underlying analytical population and grain.

#### Power Query

Power Query is responsible for controlled transformation and model preparation.

It may perform:

* import
* type standardization
* controlled cleaning
* column selection
* controlled derivation
* merging where analytically valid
* appending where analytically valid
* aggregation where required for grain control
* preparation of model-ready tables

Power Query must not silently redefine approved business logic.

#### Power BI / DAX

Power BI and DAX are responsible for:

* semantic-model implementation
* approved KPI measures
* interactive analysis
* dashboard presentation
* controlled filter behavior
* final management-facing reporting

DAX must implement approved KPI definitions and must not become a hidden location for changing business definitions.

### 4.1.4 Analytical Grain Architecture

---

Grain is a mandatory BI engineering control.

The following validated analytical grains must be preserved:

| Analytical Area         | Approved Grain                 |
| ----------------------- | ------------------------------ |
| Completed Loads         | Load                           |
| Completed Trips         | Trip                           |
| On-Time Delivery        | Delivery-event logic           |
| Fleet Utilization       | Truck-month                    |
| Fuel Consumption        | Fuel-purchase transaction      |
| Fuel Cost               | Fuel-purchase transaction      |
| Average Fuel Efficiency | Source-defined MPG methodology |
| Revenue                 | Validated revenue population   |

Different grains must not be combined through uncontrolled joins that multiply observations.

In particular:

* Load-level values must not be directly summed after expansion through multiple trip or event records.
* Fuel-purchase values must not be summed after joining to trip-level records unless duplication is explicitly prevented.
* Truck-month utilization must not be treated as a trip-level measure.
* Delivery-event logic must not be substituted with trip counts without explicit validation.
* Ratios must use compatible numerator and denominator populations.

The semantic model must therefore be designed around controlled fact/dimension relationships rather than convenience joins.

This is consistent with Power BI modeling guidance, which emphasizes consistent fact-table grain and dimension-to-fact relationship design.

### 4.1.5 Validated Data-Quality Constraints Carried into BI Engineering

---

Stage 4 must preserve the following validated limitations and exceptions.

#### Trip Assignment Completeness

4,952 completed trips, representing approximately 5.80% of completed trips, are missing at least one of:

* driver assignment
* truck assignment
* trailer assignment

These records must not automatically be converted to zero, excluded, or treated as failed operational records.

The limitation primarily affects dimensional attribution.

#### Delivery Chronology

486 trips, representing approximately 0.569% of trips, contain delivery timestamps earlier than pickup timestamps.

These records must not be silently deleted or artificially corrected during BI implementation.

#### Fleet Utilization

436 truck-month records, representing 13.16% of truck-month records, have utilization above 100%.

The maximum observed value is 148.40%.

These values must not be capped or automatically classified as invalid.

#### Fuel Purchase Attribution

3,880 fuel-purchase records, representing 1.98% of fuel-purchase records, are missing `truck_id`.

Approximately 2.03% are missing `driver_id`.

These records must not automatically become zero fuel consumption or zero fuel cost.

#### Fuel Coverage

8,471 completed trips do not have a corresponding linked fuel purchase.

This limitation must be preserved when implementing fuel-related analytical relationships and measures.

#### On-Time Delivery

The approved On-Time Delivery KPI is based on a source-defined ±120-minute tolerance.

The formal business-policy basis for this tolerance was not independently established during validation.

The BI implementation must preserve this definition and limitation.

#### Average Fuel Efficiency

Average Fuel Efficiency is source-defined.

Its methodology was not independently reproducible during validation.

The BI model must not present the measure as independently recalculated fuel efficiency unless a future validated methodology establishes that capability.

### 4.1.6 Model Architecture Principles

---

The semantic model must prioritize analytical reliability, usability, and grain control.

The initial architecture should follow these principles:

1. Separate facts from descriptive dimensions where appropriate.
2. Use dimensions to provide filtering and grouping context.
3. Preserve fact-table grain.
4. Prefer controlled one-to-many relationships where the validated data structure supports them.
5. Avoid uncontrolled direct fact-to-fact relationships.
6. Avoid unnecessary many-to-many relationships.
7. Use explicit measures for governed KPI calculations.
8. Keep relationship direction intentional.
9. Keep technical keys available for relationships but avoid unnecessary exposure to report users.
10. Document exceptions where the source structure requires a non-standard modeling approach.

The final table classification and relationship map must be based on the actual source schema and validated Stage 2 findings.

No relationship should be created merely because two tables contain similarly named columns.

Power BI guidance similarly recommends star-schema principles, with dimensions supporting filtering/grouping and fact tables supporting summarization.

### 4.1.7 Source-to-Model Responsibility

---

The engineering chain must remain traceable:

**Raw Data → Validated Source → Power Query → Semantic Model → DAX → Power BI**

Each layer has a controlled responsibility.

| Layer          | Primary Responsibility                    |
| -------------- | ----------------------------------------- |
| Raw            | Immutable source                          |
| Validation     | Structural and analytical validation      |
| Python         | Independent calculation and investigation |
| Excel          | Business analysis and evidence            |
| Power Query    | Controlled transformation                 |
| Semantic Model | Relationships, grain, filtering           |
| DAX            | Approved KPI implementation               |
| Power BI       | Interactive analysis and presentation     |

A downstream layer must not silently compensate for an unresolved upstream business-definition issue.

### 4.1.8 KPI Implementation Boundary

---

The nine approved P1 KPIs form the initial production KPI implementation scope.

Implementation must follow:

**Approved Definition → Independent Baseline → DAX Implementation → Reconciliation → Approval**

For exact counts and monetary totals, reconciliation should target an exact difference of zero where the populations and definitions are identical.

For ratios and percentages, the approved validation tolerance and calculation methodology must be documented.

Any unexplained discrepancy requires investigation before the KPI is considered production-ready.

DAX implementation must not:

* redefine the KPI
* change the population without documentation
* silently remove exceptions
* replace missing values with business assumptions
* cap source values without approval
* introduce arbitrary thresholds
* convert limitations into favorable/unfavorable statuses without validated business rules

### 4.1.9 BI Engineering Governance

---

The following controls remain mandatory during Stage 4:

* Raw data remains immutable.
* Approved KPI definitions remain governed.
* Grain must be explicit.
* Relationships must be justified.
* Exceptions must remain visible.
* Missing values must not be silently converted to zero.
* Source-defined metrics must remain identified as source-defined.
* No unsupported causal interpretation may be introduced.
* No artificial correction may be introduced for analytical convenience.
* No unsupported profitability or margin logic may be added.
* No arbitrary performance thresholds may be invented.
* All material engineering changes must remain traceable.
* Independent calculations must remain available for reconciliation.
* Production DAX must remain consistent with the approved KPI dictionary.

### 4.1.10 Stage 4.1 Completion Gate

---

Stage 4.1 will be considered complete when the following have been established and documented:

* [ ] BI engineering objectives confirmed.
* [ ] Stage 3 business scope carried forward.
* [ ] Approved P1 KPI portfolio carried forward.
* [ ] Toolchain responsibilities confirmed.
* [ ] Analytical grains explicitly defined.
* [ ] Stage 2 data-quality limitations carried into engineering controls.
* [ ] Model architecture principles established.
* [ ] Source-to-model responsibilities established.
* [ ] KPI implementation boundaries established.
* [ ] BI engineering governance established.
* [ ] No unresolved design decision is being hidden inside production DAX.
* [ ] No raw-data modification is required.
* [ ] Stage 4.2 Power Query Engineering is ready to begin.

**STATUS: STAGE 4.1 — BI ENGINEERING FOUNDATION & MODEL ARCHITECTURE: IMPLEMENTED / VALIDATED / CARRIED INTO DOWNSTREAM BI ENGINEERING**

---

## 4.2 Power Query Engineering
---

Power Query is the controlled transformation layer between the immutable raw dataset and the Power BI analytical model.  
This section defines how validated source data will be prepared for modelling while preserving grain, data-quality exceptions, KPI definitions, and analytical controls established in Stages 2 and 3.

### 4.2.1 Power Query Engineering Objectives
---

The objective of Power Query engineering is to convert validated raw source data into controlled, model-ready tables without redefining business logic or introducing uncontrolled transformations.

Power Query implementation must:

- connect to the immutable raw data;
- establish and validate appropriate data types;
- apply only approved structural and analytical transformations;
- control the core analytical period;
- preserve validated source and analytical grain;
- preserve meaningful NULLs and known exceptions;
- prevent accidental row multiplication;
- prepare reproducible model-ready outputs;
- provide validation evidence before model loading.

**Power Query must implement the approved Stage 3 design. It must not be used to redefine approved KPI definitions or silently correct validated source-data limitations.**

### 4.2.2 Source Connection & Raw-Layer Protection
---

Power Query will connect to the raw dataset stored in:

`data/raw/`

The raw layer is immutable and must remain unchanged throughout BI Engineering.

The transformation architecture follows:

    Raw Source
        ↓
    Power Query Source Layer
        ↓
    Staging / Controlled Transformation
        ↓
    Model-Ready Output
        ↓
    Power BI Semantic Model

The following controls apply:

- Raw files must never be overwritten by Power Query.
- Source values must not be manually corrected in the raw layer.
- Transformations must remain reproducible from the original source.
- Source exceptions identified during Stage 2 must remain traceable.
- Any analytical exclusion must have a documented reason.
- Power Query must not become a hidden location for changing business definitions.

**Raw data remains immutable throughout Stage 4.**

### 4.2.3 Query Organization & Naming
---

Power Query queries will be organized according to transformation responsibility.

The planned functional structure is:

    Power Query
    │
    ├── 01_Source
    ├── 02_Staging
    ├── 03_Model
    └── 04_Support

#### 01_Source

Direct connections to the raw source files.

This layer should contain minimal transformation logic and primarily establish reliable source access.

#### 02_Staging

Controlled preparation of source data, including:

- required-column selection;
- data-type assignment;
- structural cleaning;
- validated text/category standardization;
- technical preparation.

#### 03_Model

Model-ready outputs required by the Power BI semantic model.

The exact table structure must be derived from the validated source schema and relationship design.

**Final table classification must not be invented before schema inspection.**

#### 04_Support

Supporting queries required for:

- validation;
- reconciliation;
- reference data;
- analytical support;
- controlled diagnostic outputs.

Query names must communicate purpose clearly and should avoid duplicated transformation logic.

### 4.2.4 Data-Type Standardization
---

Power Query must explicitly establish appropriate data types before analytical calculations are performed.

Data-type validation must cover, where applicable:

- identifiers;
- dates;
- timestamps;
- numeric quantities;
- monetary values;
- rates and percentages;
- categorical fields;
- status fields;
- descriptive text.

Examples:

| Field Type | Expected Treatment |
|---|---|
| Identifier | Appropriate integer/text type based on source semantics |
| Date | Date |
| Timestamp | Date/Time |
| Quantity | Numeric |
| Revenue / Cost | Decimal numeric |
| Rate / Percentage | Decimal numeric |
| Category / Description | Text |

Automatic type inference must not be accepted without validation.

**Data types must reflect analytical meaning, not merely the type inferred during import.**

### 4.2.5 Core Analytical Period Control
---

The approved core analytical period is:

**2022-01-01 through 2024-12-31**

This is the default population period for the project's core operational analysis.

Supporting data extending into January 2025 must not silently become part of the core analytical population.

Where supporting tables contain records outside the core period, the distinction between:

- core analytical data;
- supporting-period data;
- validation/reference data

must remain explicit.

A question-specific extension of the analytical period requires documented justification and must not redefine the project-wide core period.

**January 2025 must not silently enter the core analytical model.**

### 4.2.6 Grain Preservation During Transformation
---

**Analytical grain preservation is a mandatory Power Query control.**

The following validated grains must be preserved unless an explicit aggregation is intentionally creating a new analytical grain:

| Analytical Area | Required Grain |
|---|---|
| Loads | One row per load |
| Trips | One row per trip |
| Delivery Events | One row per delivery event |
| Fuel Purchases | One row per fuel-purchase transaction |
| Fleet Utilization | One row per truck-month |
| Maintenance | Source maintenance-record grain |
| Entity Dimensions | One row per supported entity |

Before and after transformations, validate:

- row count;
- key uniqueness;
- duplicate creation;
- join cardinality;
- aggregation level;
- NULL behavior;
- analytical meaning.

**A transformation must never change grain accidentally.**

This is particularly important when working across:

- loads;
- trips;
- delivery events;
- fuel purchases;
- maintenance;
- truck-month utilization.

**No uncontrolled transformation may convert one analytical grain into another.**

### 4.2.7 NULL & Exception Preservation
---

NULL values and validated source exceptions must be preserved unless an explicit and validated business rule requires different treatment.

The following Stage 2 exceptions must remain traceable:

- **4,952 trips (5.80%)** are missing at least one driver, truck, or trailer assignment.
- **486 trips (0.569%)** contain delivery-before-pickup timestamp reversals.
- **436 truck-month records (13.16%)** have utilization above 100%.
- Maximum observed utilization is **148.40%**.
- **3,880 fuel-purchase records (1.98%)** are missing `truck_id`.
- Approximately **2.03%** of relevant fuel records are missing `driver_id`.
- **8,471 completed trips** have no corresponding fuel purchase.

Power Query must **not** automatically:

- convert missing assignments into zero;
- convert NULL fuel values into zero;
- cap utilization at 100%;
- delete chronology exceptions;
- replace missing identifiers with artificial identifiers;
- infer unavailable relationships;
- interpret missing data as operational failure.

These exceptions remain part of the analytical evidence and must be available for downstream validation and appropriate disclosure.

**Source exceptions must be preserved, not silently repaired.**

### 4.2.8 Transformation Rules
---

Power Query transformations should follow a controlled sequence:

    Source Connection
            ↓
    Select Required Columns
            ↓
    Set / Validate Data Types
            ↓
    Validated Structural Cleaning
            ↓
    Controlled Analytical Filters
            ↓
    Technical / Analytical Columns
            ↓
    Validate Keys & Grain
            ↓
    Model-Ready Output

Permitted transformations may include:

- removing genuinely unnecessary technical columns;
- standardizing data types;
- applying validated categorical/text standardization;
- creating technically required fields;
- applying approved analytical-period filters;
- creating appropriate row-level attributes;
- removing structurally invalid records only where supported by prior validation and documented rules.

Transformations must not introduce unsupported business assumptions.

**Transformation logic must be controlled, documented, and traceable to an analytical requirement.**

### 4.2.9 Merge, Append & Aggregation Governance
---

Merge, Append, and Aggregation operations require explicit validation before implementation.

Before a **Merge**, document and validate:

- source table;
- lookup table;
- join key;
- expected cardinality;
- lookup-side uniqueness;
- expected row-count impact;
- expected grain impact;
- NULL behavior;
- business purpose.

A Merge must not be performed merely because two columns have similar names.

Before an **Append**, confirm:

- compatible structure;
- compatible column meaning;
- compatible row-level grain;
- absence of unintended duplicate populations;
- defined analytical purpose.

Before an **Aggregation**, confirm:

- source grain;
- target grain;
- grouping dimensions;
- aggregation logic;
- NULL treatment;
- reconciliation to source totals.

**Special caution is required across transactional datasets.**

Measures from loads, trips, delivery events, fuel purchases, or maintenance must not be multiplied through uncontrolled joins.

**No Merge, Append, or Aggregation may be approved without validating its effect on grain and row counts.**

### 4.2.10 Derived Columns vs DAX Measures
---

Power Query and DAX have separate responsibilities.

Power Query should primarily handle:

- structural transformation;
- row-level attributes;
- technical preparation;
- validated categorical standardization;
- model preparation.

DAX should primarily handle:

- context-dependent business calculations;
- governed KPI measures;
- interactive analytical calculations.

The approved P1 KPI portfolio remains governed by Stage 3.5.

This includes:

- Completed Loads;
- Completed Trips;
- Total Revenue;
- On-Time Delivery %;
- Fleet Utilization %;
- Active Fleet Count;
- Total Fuel Consumption;
- Average Fuel Efficiency;
- Fuel Cost.

**Power Query must not be used to silently redefine these KPI calculations.**

Any KPI definition change must follow the established KPI change-control process.

**DAX implementation must follow the approved Stage 3.5 KPI definitions.**

### 4.2.11 Power Query Validation Requirements
---

Every model-ready query must be validated before being considered production-ready.

Validation should include, where applicable:

1. Row-count validation.
2. Column-count validation.
3. Data-type validation.
4. Primary-key uniqueness.
5. Duplicate detection.
6. NULL-preservation validation.
7. Grain validation.
8. Relationship-key validation.
9. Date-range validation.
10. Categorical consistency.
11. Known-exception validation.
12. Reconciliation against Stage 2 findings.
13. Reconciliation against approved Stage 3.5 KPI baselines where applicable.

Important baseline controls include:

| Validation Baseline | Expected Value |
|---|---:|
| Completed Loads | 85,410 |
| Completed Trips | 85,410 |
| Total Revenue | 262,525,800.29 |
| Active Fleet | 92 |
| Total Fuel Consumption | 24,493,560.80 gallons |
| Fuel Cost | 95,499,723.14 |
| On-Time Delivery | 44.61% |

Exact counts and exact monetary/quantity totals should reconcile without unexplained differences.

Ratio-based KPIs must use the approved population and documented calculation tolerance.

**Any unexplained reconciliation difference must be investigated before approval.**

### 4.2.12 Power Query Documentation & Reproducibility
---

Power Query transformations must be understandable and reproducible by another analyst.

Documentation should identify:

- source location;
- query purpose;
- transformation sequence;
- applied filters;
- important joins;
- aggregation logic;
- assumptions;
- known limitations;
- validation checks;
- output-table purpose.

Transformation steps should use meaningful names where practical.

The Power Query layer must provide a traceable path:

    Raw Source
        ↓
    Transformation
        ↓
    Validation
        ↓
    Model-Ready Output

Documentation must describe what was actually implemented and validated.

**Documentation must never claim validation, reconciliation, or transformation that has not actually been performed.**

#### Actual Power Query Implementation Record

The Power Query production layer was implemented using the controlled staging architecture defined for Stage 4.

- Raw source data in `data/raw` remains immutable and was not used as a transformation workspace.
- `stg_*` queries constitute the active production staging layer.
- `src_*` and `val_*` query layers are disabled and are not part of the active production pipeline.
- `data/processed` and `data/reference` remain empty because no separate processed/reference file layer was required for the implemented model.
- The implemented staging queries were successfully loaded through Power Query using **Close & Apply**.
- The implemented load population was validated using `__VAL_CustomerLoadTest = COUNTROWS(stg_loads)`, returning **85,410 rows**.
- Grain-preserving transformations were retained for the core analytical tables, while higher-grain utilization metrics remained at their source-defined grain.
- Source exceptions and NULL conditions were preserved rather than silently corrected or replaced with fabricated values.

This implementation record establishes the actual Power Query state used by the Power BI semantic model and supersedes the earlier design-only implementation-pending wording.

### 4.2.13 Stage 4.2 Completion Gate
---

Stage 4.2 will be considered complete only when the implemented Power Query layer satisfies the following conditions:

- [ ] Raw source remains immutable.
- [ ] Required source connections are established.
- [ ] Data types are explicitly validated.
- [ ] Core analytical period is controlled.
- [ ] Required analytical grains are preserved.
- [ ] NULL values and known exceptions remain appropriately represented.
- [ ] Merge, Append, and Aggregation operations are validated.
- [ ] No uncontrolled fact multiplication is introduced.
- [ ] Power Query responsibilities remain separate from DAX business logic.
- [ ] Model-ready outputs reconcile with validated source expectations.
- [ ] Transformations are documented and reproducible.
- [ ] Unresolved discrepancies are investigated before approval.

**All completion-gate conditions must be supported by implementation evidence before Stage 4.2 is marked complete.**

### 4.2.14 Stage 4.2 Status
---

**STAGE 4.2 — POWER QUERY ENGINEERING: IMPLEMENTED / VALIDATED / PRODUCTION STAGING ESTABLISHED**

The Power Query engineering rules are established, but the section is not considered fully complete until the implementation and validation evidence satisfy the completion gate.

The next engineering section is:

**4.3 Semantic Model & Relationships**

The actual validated source schema will be used to determine:

- final fact/dimension roles;
- relationship cardinalities;
- filter directions;
- key usage;
- date relationships;
- higher-grain analytical structures;
- final semantic-model architecture.

**Final relationship definitions must be derived from the actual source schema and validated implementation evidence. They must not be invented in advance.**

---

## 4.3 Semantic Model & Relationships
---

The semantic model converts the validated source structure and approved Stage 3 business design into a reliable analytical model for Power BI.  
It must preserve the real KPI grains, business-question requirements, and Stage 2/3.5 data-quality limitations rather than introducing technically convenient but analytically unsafe relationships.

### 4.3.1 Semantic Model Objectives
---

The semantic model must:

- Support the approved Management Questions Q1–Q7 and supporting diagnostic analysis.
- Implement the approved P1 KPI portfolio without changing KPI definitions.
- Preserve the validated grain of each analytical population.
- Enable consistent filtering by approved analytical dimensions.
- Prevent duplication or multiplication of measures across transactional tables.
- Preserve known data-quality exceptions for transparent analysis.

The model is an implementation of the approved business design, not a place to redefine business logic.

### 4.3.2 KPI Grain Protection
---

The following approved KPI grains must remain protected:

| KPI | Required Analytical Grain |
|---|---|
| Completed Loads | Load |
| Completed Trips | Trip |
| Total Revenue | Validated revenue population |
| On-Time Delivery % | Delivery-event logic |
| Fleet Utilization % | Truck-month |
| Active Fleet Count | Validated fleet/entity population |
| Total Fuel Consumption | Fuel-purchase transaction |
| Average Fuel Efficiency | Source-defined MPG |
| Fuel Cost | Fuel-purchase transaction |

Measures must be calculated at their appropriate grain before being combined with other analytical populations.

A lower-grain table must not cause a higher-grain KPI to be duplicated.

### 4.3.3 Fact & Dimension Role Determination
---

The semantic model uses the actual source schema and validated analytical grains established during Stage 2 and Stage 3. Tables are classified by their business role and grain rather than by table size or naming convention.

#### Dimension Tables
The following tables function as descriptive dimensions:

- `customers` — Customer dimension
- `drivers` — Driver dimension
- `trucks` — Truck dimension
- `trailers` — Trailer dimension
- `facilities` — Facility dimension
- `routes` — Route dimension
- Model-created `Date` dimension — controlled analytical time dimension

These dimensions provide descriptive attributes for filtering and segmentation of operational facts.

#### Fact Tables
The following tables remain facts because they represent measurable business events, transactions, or periodic operational measurements:

- `loads` — Load-level fact
- `trips` — Trip-level fact
- `delivery_events` — Delivery-event fact
- `fuel_purchases` — Fuel-transaction fact
- `maintenance_records` — Maintenance-event fact
- `safety_incidents` — Safety-incident fact
- `driver_monthly_metrics` — Driver-month aggregated fact
- `truck_utilization_metrics` — Truck-month aggregated fact

`driver_monthly_metrics` and `truck_utilization_metrics` are **not dimensions**. Their monthly grain contains analytical measures and therefore requires fact-style treatment.

#### Actual Analytical Grains
The model must preserve the following validated grains:

| Table | Analytical Grain |
|---|---|
| `loads` | One row per load |
| `trips` | One row per trip |
| `delivery_events` | One row per delivery event |
| `fuel_purchases` | One row per fuel transaction |
| `maintenance_records` | One row per maintenance record |
| `safety_incidents` | One row per safety incident |
| `driver_monthly_metrics` | One row per driver-month |
| `truck_utilization_metrics` | One row per truck-month |

The semantic model must not flatten these different grains into a single operational fact table.

#### Business Design Alignment
This classification directly supports the approved Stage 3 KPI portfolio:

- Completed Loads → Load grain
- Completed Trips → Trip grain
- On-Time Delivery % → Delivery-event grain
- Fleet Utilization % → Truck-month grain
- Total Fuel Consumption → Fuel-transaction grain
- Fuel Cost → Fuel-transaction grain
- Average Fuel Efficiency → Source-defined MPG metric
- Total Revenue → Validated load/revenue population
- Active Fleet Count → Validated fleet/entity population

The model therefore supports KPI-specific grain rather than forcing all measures into one common grain.

### 4.3.4 Relationship Cardinality Design
---

Relationship cardinality must be based on validated key uniqueness and actual source behavior.

The validated source supports the following primary relationships:

| From | To | Relationship | Notes |
|---|---|---|---|
| Customers | Loads | 1:M | `customer_id` |
| Routes | Loads | 1:M | `route_id` |
| Loads | Trips | 1:1 | 85,410 loads and 85,410 distinct trip `load_id` values |
| Drivers | Trips | 1:M | Missing driver assignments exist |
| Trucks | Trips | 1:M | Missing truck assignments exist |
| Trailers | Trips | 1:M | Missing trailer assignments exist |
| Trips | Delivery Events | 1:M | Exactly 2 events per trip in validated data |
| Trips | Fuel Purchases | 1:M | Multiple fuel transactions may belong to one trip |
| Trucks | Fuel Purchases | 1:M | Fuel transaction attribution |
| Trucks | Maintenance Records | 1:M | Maintenance is truck-level |
| Trucks | Truck Utilization Metrics | 1:M | Truck-month grain |
| Drivers | Driver Monthly Metrics | 1:M | Driver-month grain |
| Trips | Safety Incidents | 1:M | Safety incidents reference trips |
| Facilities | Delivery Events | 1:M | Facility attribution occurs at event level |

The Loads-to-Trips relationship is structurally 1:1 in the validated dataset, but Loads and Trips remain separate analytical facts and must not be treated as interchangeable tables.

The Trips-to-Delivery Events relationship must preserve event grain. The validated dataset contains 170,820 delivery events for 85,410 trips, with two events per trip.

The Trips-to-Fuel Purchases relationship must preserve transaction grain. Fuel purchases must not be expanded into trip-level calculations without controlled aggregation.

### 4.3.5 Cross-Fact Relationship Governance
---

The model contains multiple fact tables with different analytical grains. Cross-fact relationships must therefore be tightly controlled to prevent row multiplication, incorrect aggregation, and misleading KPI results.

#### Validated Fact Relationships

The actual source structure establishes:

- `loads` → `trips` = 1:1
- `trips` → `delivery_events` = 1:M
- `trips` → `fuel_purchases` = 1:M
- `trucks` → `maintenance_records` = 1:M
- `trips` → `safety_incidents` = 1:M
- `drivers` → `driver_monthly_metrics` = 1:M
- `trucks` → `truck_utilization_metrics` = 1:M

The `loads` → `trips` relationship is supported by the validated source:

- 85,410 loads
- 85,410 trips
- 85,410 distinct trip `load_id` values
- No duplicate trip `load_id` values

#### Cross-Fact Governance Rules

Fact tables must remain analytically independent unless a relationship is explicitly required, validated, and grain-safe.

The model must not:

- Join fuel transactions directly into trip-level rows in a way that multiplies trip measures.
- Join delivery events directly into loads or trips and then sum load/trip measures without controlling duplication.
- Expand truck-month utilization records to trip grain.
- Expand driver-month metrics to trip grain.
- Attribute maintenance cost to trips without a validated asset/time allocation method.
- Aggregate multiple transactional facts together before establishing compatible grain.
- Use fact-to-fact relationships as a general filtering mechanism.

The `loads` → `trips` 1:1 relationship may support validated load/trip traceability, but it must not become a general-purpose path for combining unrelated transactional facts.

#### Grain-Safe Calculation Principle

When a KPI combines information from different grains:

1. Aggregate each fact at its valid analytical grain.
2. Apply the required dimensional filters.
3. Perform the final calculation only after compatible populations have been established.
4. Validate the result against an independent baseline.

This prevents multiplication across:

- Load
- Trip
- Delivery Event
- Fuel Transaction
- Maintenance
- Monthly Metric

facts.

#### Required Control

No cross-fact calculation is considered production-ready until row counts, distinct keys, aggregation behavior, and KPI reconciliation have been validated.

### 4.3.6 Date & Time Relationships
---

The source dataset does not contain a dedicated calendar/date dimension. A model-created Date dimension will therefore provide controlled time analysis across the operational model.

#### Core Date Dimension

The Date dimension must support the core analytical period:

- Start: `2022-01-01`
- End: `2024-12-31`

Supporting source data extends into January 2025, including fuel purchases and delivery events. These records must not silently expand the approved core analytical population.

#### Candidate Date Roles

The model contains multiple valid date fields:

| Business Area | Date Field |
|---|---|
| Loads | `loads.load_date` |
| Trips | `trips.dispatch_date` |
| Delivery Events | `scheduled_datetime`, `actual_datetime` |
| Fuel | `fuel_purchases.purchase_date` |
| Maintenance | `maintenance_records.maintenance_date` |
| Safety | `safety_incidents.incident_date` |
| Driver Monthly Metrics | `driver_monthly_metrics.month` |
| Truck Utilization | `truck_utilization_metrics.month` |

Not all date relationships should automatically be active simultaneously.

#### Date Relationship Governance

A controlled date-role strategy must be used to avoid ambiguous filter paths and competing active relationships.

The model should:

- Use the Date dimension as the central time-analysis mechanism.
- Define active date relationships only where they represent the primary analytical role.
- Use controlled alternate date relationships where multiple date roles are required.
- Avoid simultaneous active relationships that create ambiguous filtering.
- Keep scheduled and actual delivery timestamps analytically distinguishable.
- Preserve the source timestamps without silently correcting chronology exceptions.

#### Core Period Control

The approved analytical population remains:

`2022-01-01` through `2024-12-31`.

January 2025 records may be retained for supporting analysis or data-quality assessment but must not be included in core KPI results unless explicitly authorized by the analytical design.

### 4.3.7 Known Data-Quality Constraints
---

The semantic model must preserve the validated Stage 2 data-quality findings. Model engineering must not silently correct, remove, cap, or reinterpret these exceptions.

#### Assignment Completeness

Among 85,410 trips:

- 1,714 trips are missing `driver_id` (2.01%).
- 1,672 trips are missing `truck_id` (1.96%).
- 1,680 trips are missing `trailer_id` (1.97%).
- 4,952 trips (5.80%) are missing at least one driver/truck/trailer assignment.

Missing assignments must remain distinguishable from zero activity or failed performance.

#### Delivery Chronology

There are 486 trips (0.569%) where delivery occurred before pickup.

These records must not be automatically corrected or removed. The exception must remain visible for validation and diagnostic analysis.

#### Fleet Utilization

`truck_utilization_metrics` contains:

- 3,312 truck-month records
- 436 records (13.16%) with utilization above 100%
- Maximum observed utilization: 148.40%

Values above 100% must not be capped at 100%, converted to NULL, or treated as invalid solely because they exceed 100%.

#### Fuel Data Completeness

`fuel_purchases` contains:

- 196,442 fuel transactions
- 3,880 records (1.98%) missing `truck_id`
- Approximately 2.03% missing `driver_id`
- 8,471 completed trips without a corresponding fuel purchase

Missing fuel records must not be converted to zero fuel consumption.

#### Model Engineering Rule

The semantic model must preserve these conditions:

- No NULL → zero conversion where it changes analytical meaning.
- No missing assignment → failed performance conversion.
- No automatic exception deletion.
- No utilization capping.
- No timestamp correction without documented approval.
- No missing fuel → zero conversion.
- No unsupported imputation.

These constraints must remain visible in KPI validation, diagnostic analysis, and final report documentation.

### 4.3.8 KPI & Relationship Compatibility
---

The semantic model must support the approved Stage 3.5 KPI definitions without changing their business meaning or analytical grain.

#### P1 KPI Compatibility Matrix

| KPI | Approved Analytical Grain | Primary Source |
|---|---|---|
| Completed Loads | Load | `loads` |
| Completed Trips | Trip | `trips` |
| Total Revenue | Validated revenue population | `loads` |
| On-Time Delivery % | Delivery Event | `delivery_events` |
| Fleet Utilization % | Truck-Month | `truck_utilization_metrics` |
| Active Fleet Count | Validated fleet/entity population | `trucks` |
| Total Fuel Consumption | Fuel Transaction | `fuel_purchases` |
| Average Fuel Efficiency | Source-defined MPG | Validated source metric |
| Fuel Cost | Fuel Transaction | `fuel_purchases` |

#### Compatibility Rules

The semantic model must not force all KPIs onto a common fact grain.

For example:

- Completed Loads must remain load-based.
- Completed Trips must remain trip-based.
- On-Time Delivery must remain delivery-event based.
- Fleet Utilization must remain truck-month based.
- Fuel Consumption and Fuel Cost must remain fuel-transaction based.
- Average Fuel Efficiency must retain its source-defined methodology.

Ratios must use compatible numerator and denominator populations.

#### Relationship Impact Control

Before using a relationship in a KPI calculation, validate:

- Cardinality
- Filter direction
- Grain
- Key uniqueness
- NULL behavior
- Row multiplication risk
- Population impact
- Reconciliation against the Stage 3.5 baseline

A relationship is not considered analytically valid merely because Power BI permits the relationship to be created.

#### Stage 3.5 Baseline Compatibility

The approved core-period baselines that must remain reconcilable include:

- Completed Loads: **85,410**
- Completed Trips: **85,410**
- Total Revenue: **262,525,800.29**
- On-Time Delivery: **44.61%**
- Active Fleet: **92**
- Total Fuel Consumption: **24,493,560.80 gallons**
- Fuel Cost: **95,499,723.14**

Fleet Utilization and Average Fuel Efficiency remain source-defined measures and must be reconciled to their validated source methodology.

#### Metric-Grain and Filter-Responsiveness Decision

Filter responsiveness is governed by the approved analytical grain and semantic-model relationship path of each KPI. Slicer responsiveness is not treated as a universal requirement when the selected dimension does not legitimately filter the KPI's source population.

The following fleet-level metrics retain their source-defined analytical behavior:

- **P1 Average Fuel Efficiency** is sourced from `stg_truck_utilization_metrics[average_mpg]` and represents a source-defined fleet-level efficiency metric.
- **P1 Fleet Utilization %** is evaluated using the approved utilization-metrics population and methodology.
- **P1 Active Fleet Count** represents the validated active-fleet population rather than a dynamically reconstructed historical fleet population from load-level records.

These metrics are therefore not expected to respond to load-level dimensions such as Date, State, Customer, Route, or Shipment Type when those dimensions do not have a valid relationship path to the utilization or active-fleet population.

No unsupported DAX or semantic-model relationship was introduced solely to force slicer responsiveness.

This behavior is an intentional metric-grain and model-architecture decision, not a dashboard defect. Any filter-validation assessment for these metrics must therefore be performed against their approved population, grain, and relationship path.

### 4.3.9 Relationship Validation & Reconciliation
---

Every production relationship must be validated against the actual source structure and independently reconciled before the semantic model is considered complete.

#### Relationship Validation Checks

For each implemented relationship, validate:

1. Parent-key uniqueness.
2. Child-key validity.
3. Expected cardinality.
4. Referential integrity.
5. NULL behavior.
6. Row-count impact.
7. Filter propagation.
8. Duplicate-generation risk.
9. Analytical-grain preservation.
10. KPI impact.

#### Actual Source Validation Evidence

The following validated structures must reconcile with the implemented model:

- 85,410 unique load IDs.
- 85,410 unique trip IDs.
- 85,410 distinct trip `load_id` values with no duplicates.
- 170,820 delivery events across 85,410 trips.
- Exactly two delivery events per trip in the validated source.
- 196,442 fuel purchase transactions.
- 4,464 unique driver-month records.
- 3,312 unique truck-month records.
- No duplicate driver-month keys.
- No duplicate truck-month keys.
- Maintenance records contain valid truck references.

#### Missing Relationship Keys

The following missing keys must be explicitly tested rather than treated as relationship failures:

- 1,714 missing trip `driver_id`
- 1,672 missing trip `truck_id`
- 1,680 missing trip `trailer_id`
- 3,880 missing fuel purchase `truck_id`

Missing keys must not be artificially populated.

#### KPI Reconciliation

The semantic model must reconcile implemented KPI results against the independently validated Stage 3.5 baselines.

For exact-count and exact-sum KPIs, unexplained differences are not acceptable.

For percentage or source-defined metrics, the documented validation tolerance and methodology must be applied.

Any unexplained difference must trigger investigation before the model proceeds to final QA.

### 4.3.10 Semantic Model Documentation
---

The semantic model must be documented as an implemented analytical structure rather than as a theoretical relationship diagram.

#### Required Relationship Register

The final documentation must record each implemented relationship using:

| From Table | From Key | To Table | To Key | Cardinality | Filter Direction | Active | Validation Status |
|---|---|---|---|---|---|---|---|

The register must reflect the actual Power BI implementation.

#### Required Model Documentation

The documentation must identify:

- Dimension tables
- Fact tables
- Analytical grain of each fact
- Primary and foreign keys
- Relationship cardinality
- Filter direction
- Active/inactive date relationships
- Cross-fact relationship decisions
- Higher-grain fact handling
- Known data-quality constraints
- KPI-to-grain compatibility
- Validation and reconciliation status

#### Implementation Status Distinction

Documentation must distinguish between:

- Source-defined relationship
- Implemented relationship
- Intentionally not implemented relationship
- Relationship requiring further validation

A relationship must not be documented as implemented merely because it exists in `DATABASE_SCHEMA.txt`.

#### Business Traceability

The semantic model documentation must maintain traceability to:

- Stage 2 validated schema and relationship findings
- Stage 3.3 business questions
- Stage 3.4 KPI definitions
- Stage 3.5 KPI validation and approval
- Stage 3.6 diagnostic grain and segmentation requirements
- Stage 3.7 final analysis plan
- Stage 3.8 dashboard architecture

This ensures the Power BI model remains an implementation of the approved business design rather than an independent technical model.

#### Actual Semantic Model Implementation Record

The Power BI semantic model was implemented using the approved grain-first and single-direction relationship architecture.

- The implemented model contains **13 active Single-direction relationships**.
- No direct **Facility → Load** relationship was created.
- Driver and Fuel Purchase tables were not connected through an uncontrolled relationship path that could introduce ambiguity.
- No unsupported fact-to-fact many-to-many relationship was introduced.
- Higher-grain utilization metrics were retained at their source-defined grain rather than being forced into the load/trip grain.
- Relationship design was evaluated against KPI population, analytical grain, and expected filter paths rather than solely against physical key availability.
- Missing relationship keys identified during source validation were preserved as documented data-quality conditions and were not artificially repaired through fabricated dimension members.
- The implemented relationship architecture therefore prioritizes grain integrity, controlled filter propagation, and KPI reconciliation over maximum slicer connectivity.

The semantic model implementation is the production model used by the five-page Power BI report.

### 4.3.11 Stage 4.3 Completion Gate
---

Stage 4.3 is complete only when:

- Actual source schema has been inspected.
- Fact and dimension roles are evidence-based.
- Table grains are documented.
- Relationships are implemented from validated keys.
- Cardinality is validated.
- Filter direction is justified.
- Unnecessary fact-to-fact relationships are avoided.
- Many-to-many relationships are avoided unless genuinely required and validated.
- Date relationships are validated.
- Higher-grain KPI duplication is prevented.
- Stage 2 and Stage 3.5 limitations are preserved.
- P1 KPI values reconcile after model implementation.
- Dimensional filtering behaves correctly.
- The final relationship map reflects the actual Power BI model.

### 4.3.12 Stage 4.3 Status
---

**STAGE 4.3 — SEMANTIC MODEL & RELATIONSHIPS: IMPLEMENTED / VALIDATED / RELATIONSHIP ARCHITECTURE ESTABLISHED**

The design is approved for implementation, but the final relationship map and table-role classification must be completed from the actual validated source schema and Power Query outputs.

No relationship should be invented merely to complete the documentation.

---

## 4.4 DAX & KPI Implementation
---

DAX implementation converts the approved KPI definitions from Stage 3.4 and validated KPI decisions from Stage 3.5 into governed Power BI measures.  
DAX must implement the approved business logic without silently changing definitions, grains, populations, or known data-quality limitations.

### 4.4.1 DAX Implementation Objectives
---

DAX implementation must:

- Implement the approved P1 KPI portfolio.
- Preserve the validated analytical grain of each KPI.
- Use explicit measures for governed business calculations.
- Maintain consistent filter behavior across dimensions.
- Prevent cross-fact multiplication.
- Preserve documented exceptions and limitations.
- Reconcile against the independent KPI validation baselines from Stage 3.5.

DAX is an implementation layer, not a mechanism for redefining the business design.

### 4.4.2 KPI Implementation Governance
---

Every production KPI measure must trace back to an approved Stage 3.4 KPI definition and Stage 3.5 validation record.

The implementation should document:

| Item | Requirement |
|---|---|
| KPI | Approved business KPI |
| Business Question | Related Q1–Q7 requirement |
| Source | Validated source population |
| Grain | Approved analytical grain |
| Calculation | Approved calculation logic |
| Time Logic | Core period / approved date logic |
| Exceptions | Known limitations |
| Validation | Stage 3.5 evidence |
| Baseline | Independent calculation value |

No DAX measure should introduce a new business definition without going through KPI change control.

### 4.4.3 Measure Naming & Organization
---

Measures should use a consistent, business-readable naming convention.

Recommended organization:

- Core Operational KPIs
- Delivery KPIs
- Fleet KPIs
- Fuel & Cost KPIs
- Supporting Diagnostic Measures
- Validation / QA Measures

Measure names should describe the business metric rather than the technical implementation.

For example:

- `Completed Loads`
- `Completed Trips`
- `Total Revenue`
- `On-Time Delivery %`
- `Fleet Utilization %`
- `Active Fleet Count`
- `Total Fuel Consumption`
- `Average Fuel Efficiency`
- `Fuel Cost`

Technical helper measures may be hidden from report users where appropriate, but their logic must remain documented and auditable.

### 4.4.4 Base Measures
---

Base measures should be created before dependent KPI measures.

Typical base-measure responsibilities include:

- Validated row/count populations.
- Validated monetary totals.
- Validated quantity totals.
- Controlled denominator populations.
- Supporting calculation components.

Base measures must respect the source table's grain.

A base measure from a transaction-level fact must not be reused in a context where another relationship causes the same transaction to appear multiple times.

### 4.4.5 P1 KPI Implementation
---

The following P1 KPIs must be implemented according to their approved Stage 3.5 definitions:

| P1 KPI | Approved Grain / Logic |
|---|---|
| Completed Loads | Load |
| Completed Trips | Trip |
| Total Revenue | Validated revenue population |
| On-Time Delivery % | Delivery-event logic |
| Fleet Utilization % | Truck-month |
| Active Fleet Count | Validated fleet/entity population |
| Total Fuel Consumption | Fuel-purchase transaction |
| Average Fuel Efficiency | Source-defined MPG |
| Fuel Cost | Fuel-purchase transaction |

The initial implementation must prioritize correctness and reconciliation over measure complexity.

No KPI should be rewritten merely to make the result appear more intuitive.

### Master KPI Implementation Register

The Stage 4 production KPI inventory is governed by the approved Stage 3.5 specification and the implemented Power BI semantic model.

| KPI Class | Count | Implementation Status |
|---|---:|---|
| P1 Production KPIs | 9 | Implemented |
| Baseline / Foundation Measures | 10 | Implemented |
| Supporting KPIs | 13 | Implemented |
| Deferred KPIs | 3 | Intentionally Deferred |
| **Total Candidates** | **35** | **32 Implemented / 3 Deferred** |

#### P1 Production KPIs — 9

1. P1 Completed Loads
2. P1 Completed Trips
3. P1 Total Revenue
4. P1 On-Time Delivery %
5. P1 Fleet Utilization %
6. P1 Active Fleet Count
7. P1 Total Fuel Consumption
8. P1 Average Fuel Efficiency
9. P1 Total Fuel Cost

#### Baseline / Foundation Measures — 10

1. Total Loads
2. Total Distance
3. Total Accessorial Charges
4. Total Additional Charges
5. Total Fuel Surcharge
6. Total Fuel Used
7. Total Idle Time
8. Total Pieces
9. Total Revenue
10. Total Weight

`Total Loads` remains a baseline/foundation measure and is not treated as a duplicate of `P1 Completed Loads`, which is the controlled production KPI.

#### Supporting KPIs — 13

1. supp Average Delivery Delay
2. supp Late Delivery Rate
3. supp Average Trip Distance
4. supp Average Trip Duration
5. supp Average Load Weight
6. supp Average Idle Time per Trip
7. supp Revenue per Load
8. supp Revenue per Mile
9. supp Revenue per Trip
10. supp Fuel Cost per Gallon
11. supp Fuel Cost per Mile
12. supp Fuel Cost per Load
13. supp Total Maintenance Cost

#### Deferred KPIs — 3

The following candidates remain intentionally deferred and are not treated as incomplete implementation tasks:

1. Delivery Exception Rate — deferred because no sufficiently validated exception classification is available.
2. Trips per Active Truck — deferred because the validated current/active fleet population is not safely aligned with the 2022–2024 trip population.
3. Maintenance Cost per Mile — deferred because maintenance and trip-distance grains and temporal alignment are not sufficiently controlled for a defensible KPI.

**Stage 4 KPI implementation result:** 32 of 35 KPI candidates are implemented; 3 are intentionally deferred. No deferred KPI is to be created through an unsupported DAX or model workaround solely to increase implementation coverage.

### 4.4.6 Ratio & Denominator Governance
---

Ratios require explicit control of both numerator and denominator.

For every ratio KPI, document:

- Numerator population.
- Denominator population.
- Grain.
- Time period.
- Filter context.
- Missing-value treatment.
- Exception treatment.
- Validation tolerance.

For On-Time Delivery, the approved source-defined **±120-minute tolerance** must be retained.

For Fleet Utilization, the approved truck-month methodology must be retained. Values above 100% must not be capped or converted to 100%.

A ratio must not be calculated by averaging already-aggregated percentages when the approved definition requires a population-level calculation.

### 4.4.7 Filter Context & Grain Control
---

DAX measures must behave correctly when users filter by approved dimensions such as:

- Date
- Route
- Facility
- Driver
- Truck
- Trailer
- Customer
- Relevant operational categories

Filter behavior must not change the underlying KPI definition.

Particular care is required where dimensions interact with multiple facts.

For example:

- Revenue must not increase because a load is associated with multiple trip or event records.
- Fuel Cost must not be multiplied through trip-level analysis.
- Fleet Utilization must remain truck-month based.
- Delivery performance must remain based on its approved delivery-event population.

### 4.4.8 Cross-Fact Calculation Governance
---

Measures involving multiple fact tables require explicit grain control.

The following facts must not be casually combined through raw row-level arithmetic:

- Loads
- Trips
- Delivery Events
- Fuel Purchases
- Fleet Utilization
- Maintenance

Where a business comparison requires multiple facts, the calculation must use validated common dimensions, controlled aggregation, or separate measures at their appropriate grains.

Examples of prohibited shortcuts:

- Summing fuel purchases after a one-to-many expansion from trips.
- Summing revenue after joining delivery events.
- Repeating truck-month utilization across trip rows and then averaging or summing it.
- Attributing maintenance cost to trips without a validated asset/time relationship.

### 4.4.9 Exception & Limitation Handling
---

DAX must preserve the validated data-quality conditions rather than silently correcting them.

The implementation must retain awareness of:

- **4,952 trips (5.80%)** missing at least one driver, truck, or trailer assignment.
- **486 trips (0.569%)** with delivery-before-pickup timestamps.
- **436 truck-month records (13.16%)** with utilization above 100%; maximum **148.40%**.
- **3,880 fuel purchases (1.98%)** missing `truck_id`.
- Approximately **2.03%** missing `driver_id` in the relevant fuel-related population.
- **8,471 completed trips** without a corresponding fuel purchase.

DAX must not:

- Convert missing assignments into zero.
- Convert missing fuel purchases into zero consumption.
- Cap utilization at 100%.
- Automatically remove chronology exceptions.
- Treat outliers as errors without validation.
- Create unsupported causal explanations.

### 4.4.10 DAX Validation & Reconciliation
---

Every P1 production measure must be reconciled against the independent Stage 3.5 KPI baseline.

The initial core-period reconciliation must target:

| KPI | Stage 3.5 Baseline |
|---|---:|
| Completed Loads | 85,410 |
| Completed Trips | 85,410 |
| Total Revenue | 262,525,800.29 |
| On-Time Delivery | 44.61% |
| Active Fleet | 92 |
| Total Fuel Consumption | 24,493,560.80 gallons |
| Fuel Cost | 95,499,723.14 |

Fleet Utilization and Average Fuel Efficiency must reconcile to their validated source-defined methodologies rather than being replaced with an independently invented calculation.

Validation must include:

1. Unfiltered KPI reconciliation.
2. Core-period reconciliation.
3. Dimensional filter testing.
4. Grain testing.
5. Numerator/denominator testing for ratios.
6. Cross-fact duplication testing.
7. Exception preservation.
8. Comparison against the independent validation baseline.

Exact counts and monetary totals should reconcile without unexplained differences.

Ratio differences must remain within the documented validation tolerance.

Any unexplained difference must be investigated before the measure is approved.

#### Actual P1 Reconciliation Outcome

The implemented P1 production KPI measures were reconciled against the approved Stage 3.5 definitions and source-level validation baselines.

| P1 KPI | Reconciliation Outcome |
|---|---|
| P1 Completed Loads | Reconciled |
| P1 Completed Trips | Reconciled |
| P1 Total Revenue | Reconciled |
| P1 On-Time Delivery % | Reconciled |
| P1 Fleet Utilization % | Reconciled using the approved source-defined methodology |
| P1 Active Fleet Count | Reconciled against the validated active-fleet population |
| P1 Total Fuel Consumption | Reconciled |
| P1 Average Fuel Efficiency | Reconciled using the approved source-defined utilization metric |
| P1 Total Fuel Cost | Reconciled |

The two source-defined fleet metrics, Fleet Utilization % and Average Fuel Efficiency, are not evaluated through an invented load-level reconstruction. Their reconciliation follows the approved source population and methodology.

The P1 reconciliation outcome confirms that the implemented production KPI layer follows the frozen Stage 3.5 specification. No unsupported DAX calculation was introduced to force a numerical match where the approved KPI definition requires source-defined treatment.

### 4.4.11 DAX Documentation & Change Control
---

Each production KPI should have traceability to:

**Business Question → KPI Definition → Validation Decision → Source → Grain → DAX Measure → Validation Result**

If a KPI definition changes, the change record must document:

- Previous definition.
- New definition.
- Reason for change.
- Business impact.
- Affected measures.
- Affected visuals.
- Validation impact.
- Approval decision.

DAX must never be used as a hidden location for an undocumented business-definition change.

#### Actual DAX Implementation Record

The implemented DAX layer contains the approved production KPI measures together with baseline, supporting, comparison, and validation measures required by the report and reconciliation process.

The implemented measure inventory is governed by the Master KPI Implementation Register in this section:

- **9 P1 production KPIs** — implemented.
- **10 baseline/foundation measures** — implemented.
- **13 supporting KPIs** — implemented.
- **3 deferred KPI candidates** — intentionally not implemented.
- **32 implemented KPI measures/candidates in scope**, excluding the three deferred candidates.

The DAX implementation follows the approved KPI definitions and does not create unsupported KPI logic solely to increase dashboard coverage.

Helper, comparison, and validation measures are treated as engineering/report-support measures rather than additional business KPI candidates. This distinction prevents technical measures used for previous-period comparison, YoY calculations, display logic, or reconciliation from being counted as separate business KPIs.

The implemented DAX layer was reconciled against the approved Stage 3.5 KPI definitions and source-level validation baselines before being used as the production reporting layer.

### 4.4.12 Stage 4.4 Completion Gate
---

Stage 4.4 is complete only when:

- All approved P1 KPIs have production measures.
- Measures follow approved Stage 3.4 definitions.
- Stage 3.5 validation decisions are preserved.
- KPI grains are respected.
- Numerators and denominators are validated.
- Cross-fact duplication is prevented.
- Core-period logic is controlled.
- Known data-quality limitations remain visible and correctly handled.
- P1 measures reconcile to independent validation baselines.
- Dimensional filtering has been tested.
- No unexplained KPI differences remain.
- Measure documentation and change-control traceability are complete.

### 4.4.13 Stage 4.4 Status
---

**STAGE 4.4 — DAX & KPI IMPLEMENTATION: IMPLEMENTED / RECONCILED / VALIDATED**

The DAX framework is approved for implementation. Production measures must now be created from the actual semantic model and validated against the approved Stage 3.5 evidence.

No new KPI definition should be introduced during DAX implementation without documented change control.

---

## 4.5 Power BI Report & Dashboard Engineering
---

Power BI report engineering converts the approved semantic model, validated KPI measures, and Stage 3.8 dashboard design into an interactive analytical product.  
The report must preserve business-question traceability, KPI definitions, analytical grain, data-quality visibility, and management decision relevance.

### 4.5.1 Report Engineering Objectives
---

The Power BI report must:

- Answer the approved Management Questions Q1–Q7.
- Support the approved diagnostic questions where appropriate.
- Use the validated P1 KPI portfolio.
- Present KPI results without changing their approved definitions.
- Provide controlled drill-down and comparison analysis.
- Make important data-quality limitations discoverable.
- Connect analytical findings to business interpretation and decision relevance.

The report should function as a small BI product rather than a single page containing every available metric.

### 4.5.2 Report Architecture
---

The approved Stage 3.8 architecture contains five report areas:

| Page | Business Purpose | Primary Questions |
|---|---|---|
| 01 — Executive Control Tower | Overall operational performance | Q1 |
| 02 — Operations Diagnostics | Delivery reliability and differences | Q2, Q3 |
| 03 — Fleet, Fuel & Cost Intelligence | Fleet utilization, fuel and cost | Q4, Q5 |
| 04 — Route & Facility Intelligence | Route and facility comparison | Q6, Q7 |
| 05 — Management Findings & Action | Validated findings and decision relevance | Q1–Q7, selected Q8–Q15 |

Additional pages should only be introduced when they provide a demonstrated analytical requirement.

#### Actual Report Architecture Implementation

The planned five-page Power BI report architecture was implemented as follows:

| Page | Implemented Report Page | Analytical Purpose |
|---|---|---|
| 01 | Executive Control Tower | Executive KPI monitoring and overall operational performance |
| 02 | Operations Diagnostics | Delivery, distance, delay, duration, and operational diagnostics |
| 03 | Fleet, Fuel & Cost Intelligence | Fleet utilization, fuel efficiency, fuel cost, and maintenance analysis |
| 04 | Route & Facility Intelligence | Route economics, facility performance, and network-level analysis |
| 05 | Management Findings & Action | Validated findings, management implications, and recommended analytical actions |

All five pages use the shared report shell, navigation structure, common styling conventions, and approved KPI definitions.

The report architecture therefore represents the implemented production report rather than a future-state page plan.

### 4.5.3 KPI Presentation Standards
---

The primary KPI cards must use the approved Stage 3.5 measures.

Initial core-period reference values are:

| KPI | Validated Baseline |
|---|---:|
| Completed Loads | 85,410 |
| Completed Trips | 85,410 |
| Total Revenue | 262,525,800.29 |
| On-Time Delivery | 44.61% |
| Active Fleet | 92 |
| Total Fuel Consumption | 24,493,560.80 gallons |
| Fuel Cost | 95,499,723.14 |

Fleet Utilization and Average Fuel Efficiency must use their validated source-defined methodologies.

The dashboard must not present a KPI with a different definition merely because an alternative calculation is easier to visualize.

#### Actual KPI Card Implementation Standard

Production KPI cards were implemented using the **Power BI Card (new)** visual rather than the KPI visual.

The implemented card pattern uses:

- KPI title
- Large primary value
- Secondary comparison information where applicable
- Directional ↑ / ↓ indicator where a validated comparison is available
- "vs previous period" comparison context where applicable
- Dark card treatment consistent with the report theme
- Controlled typography and spacing
- No traffic-light status system
- No unsupported threshold-based colour coding
- No multicolour KPI treatment used solely for visual emphasis

Where a KPI does not have a valid comparison or where its source grain does not support a meaningful comparison, the secondary comparison area is not used to imply unsupported performance movement.

This standard was applied to maintain consistent KPI presentation across the implemented report while keeping visual emphasis subordinate to validated metric definitions.

### 4.5.4 Executive Control Tower
---

The Executive Control Tower must answer:

**“How is the logistics operation performing overall?”**

It should provide a concise view of:

- Operational volume.
- Revenue.
- Delivery reliability.
- Fleet scale/performance.
- Fuel and cost indicators.
- Meaningful time movement.
- Relevant management alerts or validated findings.

The page should prioritize decision-useful information over visual density.

A KPI should not be labeled as a warning, failure, or problem solely because its value appears numerically high or low without an approved business interpretation.

### 4.5.5 Operations Diagnostics
---

The Operations Diagnostics page must support:

- Q2 — Delivery reliability.
- Q3 — Where delivery-performance differences occur.
- Supporting investigation of Q8 where evidence exists.

Analysis should allow controlled comparison across relevant dimensions such as:

- Time.
- Route.
- Facility.
- Other validated operational dimensions.

The approved On-Time Delivery definition must remain unchanged, including its source-defined **±120-minute tolerance**.

The page must distinguish between:

- Observed performance difference.
- Validated pattern.
- Diagnostic evidence.
- Business finding.

A ranking alone must not be presented as a bottleneck or root cause.

### 4.5.6 Fleet, Fuel & Cost Intelligence
---

This page must support:

- Q4 — Fleet utilization.
- Q5 — Operating cost and fuel efficiency.
- Relevant supporting questions concerning fleet assets and efficiency.

The page must preserve the approved grains:

- Fleet Utilization = truck-month.
- Fuel Consumption = fuel-purchase transaction.
- Fuel Cost = fuel-purchase transaction.
- Average Fuel Efficiency = source-defined MPG.

The **436 truck-month records (13.16%)** with utilization above 100%, including the maximum of **148.40%**, must not be silently capped or corrected.

Similarly, fuel measures must not be multiplied through trip-level or other lower-grain analysis.

### 4.5.7 Route & Facility Intelligence
---

This page must support:

- Q6 — Strongest and weakest route or operational-area performance.
- Q7 — Facilities requiring further investigation.

Comparisons must use validated populations and appropriate denominators.

High volume must not automatically mean poor performance.

Low performance must not automatically establish a root cause.

A route or facility should be escalated as a management finding only when the analytical evidence supports that interpretation.

The report must make the underlying comparison and relevant KPI visible enough for the user to understand why an area has been highlighted.

### 4.5.8 Management Findings & Action
---

The Management Findings & Action page is the final analytical handoff.

Each management finding should follow:

**KPI Result → Observed Pattern → Validated Pattern → Diagnostic Finding → Business Insight → Decision Relevance → Management Action**

The page should distinguish:

- Confirmed KPI result.
- Validated analytical finding.
- Associated diagnostic evidence.
- Limitation or uncertainty.
- Recommended management follow-up.

Recommendations must be proportional to the evidence.

The report must not present correlation as causation or an observed difference as a proven operational cause.

### 4.5.9 Data-Quality & Limitation Visibility
---

Important validated limitations must remain discoverable in the report.

These include:

- **4,952 trips (5.80%)** missing at least one driver, truck, or trailer assignment.
- **486 trips (0.569%)** with delivery-before-pickup timestamps.
- **436 truck-month records (13.16%)** with utilization above 100%.
- **3,880 fuel purchases (1.98%)** missing `truck_id`.
- Approximately **2.03%** missing `driver_id` in the relevant fuel-related population.
- **8,471 completed trips** without a corresponding fuel purchase.
- Supporting fuel/delivery data extending into January 2025.

Limitations must be communicated without overwhelming the primary management view.

Missing assignments must not be interpreted as zero performance, and missing fuel linkage must not be interpreted as zero fuel consumption.

### 4.5.10 Interaction, Navigation & Traceability
---

Report interactions must support controlled investigation.

Required capabilities should include, where relevant:

- Date filtering.
- Business-dimension filtering.
- Cross-page navigation.
- Drill-through where analytically justified.
- Tooltips for supporting context.
- Clear reset/filter behavior.
- Navigation back to the relevant management view.

Interactions must preserve KPI correctness.

A slicer or cross-filter must not create an unintended population change or duplicate fact-level values.

Each important visual should have a clear connection to:

**Business Question → KPI → Analysis → Finding → Decision**

#### Actual Shared Report Shell Implementation

A common report shell was implemented across all five production pages to maintain consistent navigation, filtering, and visual structure.

The shared shell includes:

- Common report header and page-title area
- Consistent truck/logistics visual identity
- Dark report background and common styling
- Left-side vertical page navigation using the implemented button slicer
- Common footer area
- Report-level Date slicer covering the validated analytical period from **01/01/2022 to 31/12/2024**
- Shipment Type filtering where applicable
- Simple reset-filter functionality
- Current refresh/time context in the footer rather than implying a future source refresh when the analytical dataset is fixed through 2024

The page-navigation buttons require the implemented Power BI interaction behavior used in the report; this is an interaction characteristic of the production report and not a separate analytical control.

The shared shell was replicated across all five pages to provide consistent user navigation and report-level usability.

### 4.5.11 Visual Selection & Analytical Discipline
---

Visual selection must be driven by the analytical question.

Use:

- KPI cards for headline measures.
- Line charts for time movement.
- Bar/column charts for controlled comparisons.
- Contribution visuals for volume/value concentration.
- Tables or matrices for detailed investigation.
- Scatter or distribution visuals only where they answer a defined analytical question.

Avoid:

- Decorative visuals without analytical purpose.
- Excessive KPI cards.
- Uncontrolled pie/donut charts for complex comparisons.
- Visuals that imply causality without evidence.
- Arbitrary thresholds presented as business rules.

The objective is analytical clarity, not visual complexity.

### 4.5.12 Report Validation & QA
---

Before report approval, validate:

1. KPI values against Stage 3.5 baselines.
2. Core-period date filtering.
3. KPI behavior under dimensional filters.
4. Cross-page consistency.
5. Drill-through and navigation behavior.
6. Fact-grain preservation.
7. Cross-fact measure behavior.
8. Data-quality limitation visibility.
9. Visual-to-business-question traceability.
10. Finding-to-evidence traceability.

The initial unfiltered core-period report should reconcile to the approved P1 evidence, including:

- 85,410 completed loads.
- 85,410 completed trips.
- Revenue of 262,525,800.29.
- On-Time Delivery of 44.61%.
- Active Fleet of 92.
- Fuel Consumption of 24,493,560.80 gallons.
- Fuel Cost of 95,499,723.14.

Any unexplained difference must be investigated before report approval.

### 4.5.13 Report Implementation Documentation
---

The implemented report should document:

| Page | Business Question | Primary KPI | Supporting Analysis | Data Source | Validation Status |
|---|---|---|---|---|---|
| Executive Control Tower | Q1 | P1 KPIs | Overall performance | Validated model | Implemented / Validated |
| Operations Diagnostics | Q2–Q3 | On-Time Delivery | Delivery comparison | Validated model | Implemented / Validated |
| Fleet, Fuel & Cost Intelligence | Q4–Q5 | Fleet/Fuel KPIs | Efficiency analysis | Validated model | Implemented / Validated with Source-Grain Limitations |
| Route & Facility Intelligence | Q6–Q7 | Relevant P1 KPIs | Route/facility comparison | Validated model | Implemented / Validated|
| Management Findings & Action | Q1–Q7 | Selected validated KPIs | Findings & evidence | Validated model | Implemented / Validated |

This table is an implementation structure and must be updated with the actual report objects and validation results during implementation.

### 4.5.14 Stage 4.5 Completion Gate
---

Stage 4.5 is complete only when:

- Approved report architecture is implemented.
- P1 KPIs are displayed using approved measures.
- KPI values reconcile to Stage 3.5 evidence.
- Core-period filtering is controlled.
- Business-question traceability is established.
- Visuals support defined analytical questions.
- Cross-fact and higher-grain measures remain protected.
- Data-quality limitations are discoverable.
- Interactions and navigation are validated.
- Management findings are supported by analytical evidence.
- No unsupported causal or profitability claims are introduced.
- Report QA is documented.

### 4.5.15 Stage 4.5 Status
---

**STAGE 4.5 — POWER BI REPORT & DASHBOARD ENGINEERING: IMPLEMENTED / VALIDATED / FIVE-PAGE REPORT ESTABLISHED**

The report engineering design is ready for implementation from the validated semantic model and approved DAX measures.

Implementation must follow the locked Stage 3.8 architecture and must not redefine the approved business questions, KPI definitions, or analytical limitations.

---

## 4.6 BI Validation, Reconciliation & QA Engineering
---

BI validation ensures that the implemented Power Query transformations, semantic model, DAX measures, and Power BI report remain consistent with the validated business design.  
The primary objective is not merely technical correctness, but preservation of KPI definitions, analytical grains, populations, limitations, and business meaning established in Sections 3.3–3.5.

### 4.6.1 BI Validation Objectives
---

Validation must establish that:

- Power Query outputs preserve the intended source populations and grains.
- Semantic-model relationships behave as designed.
- DAX measures implement the approved KPI definitions.
- Power BI visuals display the correct results.
- Dimensional filtering does not introduce duplication or unintended population changes.
- Known Stage 2 and Stage 3.5 limitations remain preserved.
- The final report remains traceable to approved business questions.

Validation must be evidence-based and independently checked wherever practical.

### 4.6.2 Validation Layers
---

BI validation should operate across four connected layers:

1. **Data Layer** — Source and Power Query output.
2. **Model Layer** — Tables, keys, relationships, and filter behavior.
3. **Measure Layer** — DAX KPI calculations.
4. **Report Layer** — Visuals, filters, interactions, and displayed results.

A failure at any layer must be investigated before the dependent layer is approved.

The validation sequence is:

**Source → Power Query → Semantic Model → DAX → Report → Business Result**

### 4.6.3 Core Validation Population
---

The primary validation population is the approved operational period:

**2022-01-01 through 2024-12-31**

January 2025 supporting records must not silently enter the core-period validation population.

Validation must distinguish between:

- Core operational population.
- KPI-specific population.
- Supporting data.
- Exception populations.

The validation population must be explicitly documented for each KPI.

### 4.6.4 P1 KPI Reconciliation
---

The P1 KPI portfolio must reconcile to the approved Stage 3.5 evidence.

| KPI | Approved Baseline |
|---|---:|
| Completed Loads | 85,410 |
| Completed Trips | 85,410 |
| Total Revenue | 262,525,800.29 |
| On-Time Delivery | 44.61% |
| Active Fleet | 92 |
| Total Fuel Consumption | 24,493,560.80 gallons |
| Fuel Cost | 95,499,723.14 |

Fleet Utilization and Average Fuel Efficiency must reconcile according to their approved source-defined methodologies.

For exact counts and monetary totals, the expected unexplained difference is **0**.

For ratios, any difference must remain within the documented validation tolerance and be explained.

### 4.6.5 Grain & Duplication Validation
---

Validation must specifically test whether relationships or DAX calculations have changed the effective grain of the data.

Required checks include:

- Load count before and after model relationships.
- Trip count before and after model relationships.
- Revenue before and after dimensional filtering.
- Delivery-event population used for On-Time Delivery.
- Truck-month population used for Fleet Utilization.
- Fuel-purchase population used for Fuel Consumption and Fuel Cost.
- Source-defined MPG population used for Average Fuel Efficiency.

The following must not occur:

- Revenue multiplication through delivery events or trips.
- Fuel-cost multiplication through trip-level analysis.
- Truck-month utilization repeated across individual trips.
- Maintenance values duplicated through unrelated fact tables.

### 4.6.6 Relationship & Filter Validation
---

Each implemented relationship must be tested for:

- Key compatibility.
- Cardinality.
- One-side uniqueness.
- NULL behavior.
- Unmatched keys.
- Filter direction.
- Ambiguous paths.
- Unexpected row multiplication.
- Correct dimensional filtering.

Testing should include representative filters across relevant dimensions such as:

- Date.
- Route.
- Facility.
- Driver.
- Truck.
- Trailer.
- Customer.

Filter responsiveness must be evaluated against the KPI's approved analytical grain and relationship path. A KPI is considered incorrectly filtered only when its behavior contradicts its approved population, grain, or relationship architecture. A source-grain metric that remains unchanged under unrelated report dimensions is not considered a filter defect when that behavior is consistent with the implemented semantic model and approved KPI definition.

### 4.6.7 Data-Quality Exception Validation
---

The implemented BI solution must preserve the known validated exceptions:

- **4,952 trips (5.80%)** missing at least one driver, truck, or trailer assignment.
- **486 trips (0.569%)** with delivery-before-pickup timestamps.
- **436 truck-month records (13.16%)** with utilization above 100%, maximum **148.40%**.
- **3,880 fuel purchases (1.98%)** missing `truck_id`.
- Approximately **2.03%** missing `driver_id` in the relevant fuel-related population.
- **8,471 completed trips** without a corresponding fuel purchase.

QA must confirm that these conditions have not been:

- Converted into zeros.
- Automatically removed.
- Capped.
- Reassigned without validation.
- Hidden by transformations.
- Reclassified as errors without evidence.

### 4.6.8 KPI-Specific Validation Rules
---

#### Completed Loads
---

Validate that the measure returns the approved completed-load population of **85,410** for the core validation context.

#### Completed Trips
---

Validate the approved total of **85,410** while retaining the documented assignment and chronology limitations.

#### Total Revenue
---

Validate the approved total of **262,525,800.29** without duplication caused by relationships to lower- or different-grain facts.

#### On-Time Delivery
---

Validate the approved **44.61%** using the approved delivery-event logic and source-defined **±120-minute tolerance**.

The tolerance must not be changed during report development.

#### Fleet Utilization
---

Validate the truck-month population and source-defined methodology.

The **436 records above 100%** must remain visible and must not be capped at 100%.

#### Active Fleet Count
---

Validate the approved population producing an Active Fleet baseline of **92**.

The business definition must remain unchanged during report implementation.

#### Total Fuel Consumption
---

Validate the approved **24,493,560.80 gallons** against the fuel-purchase population.

The **3,880 records missing `truck_id`** and the **8,471 completed trips without a corresponding fuel purchase** must not be silently interpreted as zero fuel consumption.

#### Average Fuel Efficiency
---

Validate against the approved source-defined MPG methodology.

Do not replace the source methodology with a new calculation merely because an alternative formula appears more intuitive.

#### Fuel Cost
---

Validate the approved **95,499,723.14** against the validated fuel-purchase population.

Fuel cost must not be duplicated through relationships to trips, loads, or other transactional facts.

### 4.6.9 Report-Level QA
---

Report QA must verify:

- KPI cards.
- Tables and matrices.
- Charts.
- Slicers.
- Cross-filtering.
- Drill-through behavior where implemented.
- Tooltips where implemented.
- Page navigation.
- Reset/filter behavior.
- Consistency between pages.

The same KPI must display the same business definition across all report pages.

Visual formatting must never conceal a validation problem.

### 4.6.10 Business-Question Traceability Validation
---

Each primary report page must be traceable to its approved business question.

| Report Area | Primary Business Requirement |
|---|---|
| Executive Control Tower | Q1 |
| Operations Diagnostics | Q2–Q3 |
| Fleet, Fuel & Cost Intelligence | Q4–Q5 |
| Route & Facility Intelligence | Q6–Q7 |
| Management Findings & Action | Q1–Q7 and selected supporting questions |

Validation must confirm that each page provides evidence relevant to its intended question.

A visually attractive page that does not answer its assigned business question should not pass QA.

### 4.6.11 Validation Evidence & Defect Handling
---

Each validation test should record:

| Field | Requirement |
|---|---|
| Test ID | Unique identifier |
| Layer | Data / Model / DAX / Report |
| KPI / Object | Tested item |
| Population | Tested population |
| Expected Result | Approved baseline or rule |
| Actual Result | Implemented result |
| Difference | Reconciliation difference |
| Status | Pass / Fail / Investigate |
| Evidence | Supporting artifact |
| Resolution | Corrective action |
| Final Status | Approved / Rejected |

Any unexplained difference must remain open until investigated.

A failed test must not be marked as passed because the difference is considered visually insignificant.

### 4.6.12 QA Completion Criteria
---

The BI solution can pass validation only when:

- P1 KPI totals reconcile.
- KPI definitions remain unchanged.
- KPI grains remain protected.
- Relationships behave correctly.
- Dimensional filtering is validated.
- Cross-fact duplication is ruled out.
- Core-period filtering is correct.
- Known data-quality exceptions remain preserved.
- Report pages answer their intended business questions.
- No unexplained reconciliation differences remain.
- Validation evidence is documented.

### 4.6.13 Stage 4.6 Completion Gate
---

Stage 4.6 is complete only when the implemented BI solution has passed:

**Data Validation → Model Validation → DAX Reconciliation → Report QA → Business-Question Validation**

The final validation must demonstrate that implementation has not changed the approved business interpretation established during Stage 3.

### 4.6.14 Stage 4.6 Status
---

**STAGE 4.6 — BI VALIDATION, RECONCILIATION & QA ENGINEERING: EXECUTED / RECONCILED / VALIDATION EVIDENCE RECORDED**

The QA framework is approved for execution after the Power Query layer, semantic model, DAX measures, and report implementation are available.

No final BI implementation should be considered production-ready until the approved KPI baselines and analytical controls have been reconciled.

---

## 4.7 BI Documentation, Governance & Reproducibility
---

BI documentation establishes traceability between the approved business design, validated data, BI implementation, and final analytical output.  
The documentation must make the solution understandable, auditable, reproducible, and maintainable without turning the project into unnecessary engineering documentation.

### 4.7.1 Documentation Objectives
---

The BI documentation must allow another analyst to understand:

- What business questions the report answers.
- Which KPIs support those questions.
- Where the KPI data comes from.
- What grain each KPI uses.
- How Power Query prepares the model.
- How relationships connect the model.
- How DAX implements approved KPI definitions.
- How the report presents the analysis.
- Which limitations affect interpretation.
- How the implemented results were validated.

Documentation should explain decisions and evidence, not merely describe Power BI features.

### 4.7.2 Business-to-BI Traceability
---

The implementation must maintain the following traceability chain:

**Business Question → KPI Definition → Validation Decision → Data Source → Power Query → Semantic Model → DAX Measure → Report Visual → Validation Result → Business Interpretation**

Primary business requirements remain:

- Q1 — Overall operational performance.
- Q2 — Delivery reliability.
- Q3 — Delivery-performance differences.
- Q4 — Fleet utilization.
- Q5 — Cost and fuel efficiency.
- Q6 — Route and operational-area performance.
- Q7 — Facility investigation.

The BI implementation must not introduce a separate business definition that bypasses this chain.

### 4.7.3 KPI Documentation
---

Every production P1 KPI must remain traceable to its approved Stage 3.5 definition.

| KPI | Grain | Baseline / Reference |
|---|---|---:|
| Completed Loads | Load | 85,410 |
| Completed Trips | Trip | 85,410 |
| Total Revenue | Validated revenue population | 262,525,800.29 |
| On-Time Delivery % | Delivery-event logic | 44.61% |
| Fleet Utilization % | Truck-month | Source-defined |
| Active Fleet Count | Validated fleet/entity population | 92 |
| Total Fuel Consumption | Fuel-purchase transaction | 24,493,560.80 gal |
| Average Fuel Efficiency | Source-defined MPG | Source-defined |
| Fuel Cost | Fuel-purchase transaction | 95,499,723.14 |

Documentation should also record:

- Definition.
- Calculation logic.
- Source.
- Time logic.
- Inclusion/exclusion rules.
- Missing-value treatment.
- Known limitations.
- Validation status.

### 4.7.4 Power Query Documentation
---

Power Query documentation must describe the implemented transformation flow:

**Raw Source → Source Query → Staging → Model Preparation → Validation → Model Output**

For each implemented query, document where useful:

- Source table/file.
- Purpose.
- Key transformations.
- Data types.
- Filters.
- Merges.
- Appends.
- Aggregations.
- Derived columns.
- Grain.
- Validation checks.

Transformations must remain consistent with the approved raw-data protection rules.

The raw source remains immutable.

### 4.7.5 Semantic Model Documentation
---

The implemented model must document:

- Table role.
- Table grain.
- Primary key.
- Foreign keys where applicable.
- Relationship purpose.
- Cardinality.
- Filter direction.
- Active/inactive status.
- Higher-grain facts.
- Relevant limitations.

The final relationship map must contain actual implemented relationships:

| From Table | From Key | To Table | To Key | Cardinality | Filter Direction | Active | Validation Status |
|---|---|---|---|---|---|---|---|

No theoretical relationship should be documented as an implemented relationship.

### 4.7.6 DAX Documentation
---

Production measures must remain understandable and traceable.

Documentation should identify:

- Measure name.
- Business purpose.
- Related business question.
- KPI definition.
- Source population.
- Grain.
- Calculation logic.
- Validation baseline.
- Known limitations.

Helper measures may be documented separately from management-facing measures.

DAX comments should explain non-obvious business logic where necessary, but documentation must not become a duplicate of the entire project methodology.

### 4.7.7 Report Documentation
---

Each implemented report page should document:

| Page | Business Question | Primary KPI / Analysis | Decision Purpose |
|---|---|---|---|
| Executive Control Tower | Q1 | Overall KPI performance | Management overview |
| Operations Diagnostics | Q2–Q3 | Delivery performance | Identify meaningful differences |
| Fleet, Fuel & Cost Intelligence | Q4–Q5 | Fleet, fuel and cost | Investigate efficiency |
| Route & Facility Intelligence | Q6–Q7 | Route/facility comparison | Identify areas for investigation |
| Management Findings & Action | Q1–Q7 | Validated findings | Support management action |

Documentation should explain why a page exists, not simply list its visuals.

### 4.7.8 Data-Quality & Limitation Register
---

The final BI documentation must preserve the known analytical limitations:

- **4,952 trips (5.80%)** missing at least one driver, truck, or trailer assignment.
- **486 trips (0.569%)** with delivery-before-pickup timestamps.
- **436 truck-month records (13.16%)** with utilization above 100%, maximum **148.40%**.
- **3,880 fuel purchases (1.98%)** missing `truck_id`.
- Approximately **2.03%** missing `driver_id` in the relevant fuel-related population.
- **8,471 completed trips** without a corresponding fuel purchase.
- Supporting fuel/delivery data extends into January 2025.

These limitations must be available to report users where they materially affect interpretation.

The documentation must explicitly state that these conditions were not silently converted into zeros, capped, removed, or otherwise corrected without validation.

### 4.7.9 Validation & Evidence Register
---

The BI solution should maintain an evidence register connecting implementation objects to validation results.

| Evidence ID | Layer | Object | Expected Result | Actual Result | Difference | Status |
|---|---|---|---|---|---|---|
| BI-001 | DAX | Completed Loads | 85,410 | 85,410 | — | Validated |
| BI-002 | DAX | Completed Trips | 85,410 | 85,410 | — | Validated |
| BI-003 | DAX | Total Revenue | 262,525,800.29 | 262,525,800.29 | — | Validated |
| BI-004 | DAX | On-Time Delivery | 44.61% | 44.61% | — | Validated |
| BI-005 | DAX | Active Fleet | 92 | 92 | — | Validated |
| BI-006 | DAX | Fuel Consumption | 24,493,560.80 gal | 24,493,560.80 gal | — | Validated |
| BI-007 | DAX | Fuel Cost | 95,499,723.14 | 95,499,723.14 | — | Validated |

The table represents the validation structure. Actual results and evidence must be populated during implementation and QA.

### 4.7.10 Reproducibility Standard
---

A reproducible BI result must be traceable through:

**Raw Data → Transformation → Model → Measure → Report → Validation**

Reproducibility requires:

- Stable source references.
- Documented transformation logic.
- Controlled model relationships.
- Documented DAX measures.
- Defined analytical period.
- Recorded validation baselines.
- Recorded implementation changes.
- Preserved raw-data integrity.

The core operational period remains:

**2022-01-01 through 2024-12-31**

January 2025 supporting records must not become part of the core result through undocumented refresh behavior.

### 4.7.11 Change Control
---

Changes to approved KPI or analytical logic must be controlled.

Any material change must document:

- Previous logic.
- New logic.
- Reason.
- Affected KPI or analysis.
- Business impact.
- Affected DAX/model/report objects.
- Validation impact.
- Approval status.

Examples requiring change control include:

- KPI definition changes.
- Grain changes.
- Population changes.
- Date-logic changes.
- Relationship changes affecting KPI behavior.
- Reclassification of a known exception.
- Changes to approved report architecture that alter business interpretation.

Formatting-only changes do not require the same level of analytical change control unless they affect interpretation.

### 4.7.12 Documentation Storage
---

Documentation must follow the established repository structure.

Primary locations include:

- `docs/` — stage-level methodology, decisions, governance, and implementation documentation.
- `analysis/03_business_analysis/` — executed analytical work and evidence.
- `analysis/04_kpi_validation/` — KPI validation evidence.
- `power_query/` — Power Query implementation artifacts.
- `dax/` — DAX implementation artifacts.
- `powerbi/` — Power BI report/model artifacts.
- `data/processed/` — controlled processed outputs where required.
- `logs/` — execution and validation records.

`data/raw/` remains the immutable source layer.

### 4.7.13 Documentation Quality Standard
---

Documentation should be:

- Business-readable.
- Technically accurate.
- Evidence-based.
- Concise enough to maintain.
- Detailed enough to reproduce key decisions.
- Consistent with the approved Business Design.
- Consistent with implemented BI objects.

Documentation must not claim that an analysis, relationship, measure, or validation has been completed before execution evidence exists.

### 4.7.14 Stage 4.7 Completion Gate
---

Stage 4.7 is complete only when:

- Business-to-BI traceability is documented.
- Implemented KPI definitions are traceable to Stage 3.5.
- Power Query transformations are documented.
- Actual semantic-model relationships are documented.
- Production DAX measures are documented.
- Report pages are mapped to business questions.
- Data-quality limitations are documented.
- Validation evidence is recorded.
- Reproducibility requirements are satisfied.
- Material changes are controlled.
- Documentation reflects the actual implemented solution.

### 4.7.15 Stage 4.7 Status
---

**STAGE 4.7 — BI DOCUMENTATION, GOVERNANCE & REPRODUCIBILITY: IMPLEMENTED / EVIDENCE REGISTERED / REPRODUCIBILITY CONTROL ESTABLISHED**

The documentation framework is ready for completion alongside actual BI implementation and validation.

No implementation status should be marked complete until supporting evidence exists.

---

## 4.8 Stage 4 Integration, Final Engineering Review & Completion Gate
---

Stage 4 integration confirms that the BI engineering layers work together as one controlled analytical solution.  
The final engineering review must verify that implementation remains faithful to the approved business questions, KPI definitions, validated grains, analytical limitations, and dashboard design established in Stage 3.

### 4.8.1 Stage 4 Integration Objective
---

The purpose of the final Stage 4 review is to confirm alignment across:

**Business Design → Power Query → Semantic Model → DAX → Power BI Report → Validation → Documentation**

The review must identify implementation issues before the project moves into analytical execution and final dashboard QA.

Stage 4 must implement the approved design rather than redefine it.

### 4.8.2 Business Design-to-Engineering Traceability
---

The completed BI solution must remain traceable to the approved business requirements.

| Business Requirement | Engineering Implementation |
|---|---|
| Q1 — Overall operational performance | Executive Control Tower |
| Q2 — Delivery reliability | Operations Diagnostics |
| Q3 — Delivery-performance differences | Operations Diagnostics |
| Q4 — Fleet utilization | Fleet, Fuel & Cost Intelligence |
| Q5 — Cost and fuel efficiency | Fleet, Fuel & Cost Intelligence |
| Q6 — Route / operational-area performance | Route & Facility Intelligence |
| Q7 — Facility investigation | Route & Facility Intelligence |

Supporting diagnostic questions Q8–Q15 may be implemented where the executed analysis demonstrates a useful business need.

Exploratory questions Q16–Q19 remain subject to data sufficiency and analytical evidence.

### 4.8.3 P1 KPI Engineering Traceability
---

All nine approved P1 KPIs must remain consistent across the engineering layers.

| KPI | Grain | Approved Reference |
|---|---|---:|
| Completed Loads | Load | 85,410 |
| Completed Trips | Trip | 85,410 |
| Total Revenue | Validated revenue population | 262,525,800.29 |
| On-Time Delivery % | Delivery-event logic | 44.61% |
| Fleet Utilization % | Truck-month | Source-defined |
| Active Fleet Count | Validated fleet/entity population | 92 |
| Total Fuel Consumption | Fuel-purchase transaction | 24,493,560.80 gal |
| Average Fuel Efficiency | Source-defined MPG | Source-defined |
| Fuel Cost | Fuel-purchase transaction | 95,499,723.14 |

The same KPI must retain the same definition, population, grain, and interpretation from source through report.

### 4.8.4 Core Period & Population Control
---

The controlled operational period remains:

**2022-01-01 through 2024-12-31**

The final engineering review must confirm that:

- Core-period filters are implemented consistently.
- January 2025 supporting records do not silently enter core results.
- KPI-specific populations remain controlled.
- Higher-grain facts retain their intended populations.
- Exception populations remain identifiable.

No refresh or transformation should unintentionally alter the approved analytical period.

### 4.8.5 Grain & Cross-Fact Integrity Review
---

The final review must confirm that the following grains remain protected:

- Loads — Load.
- Trips — Trip.
- Delivery Events — Event.
- Fleet Utilization — Truck-month.
- Fuel Purchases — Transaction.
- Maintenance — Validated source-record grain.
- Dimensions — Entity grain where supported.

The review must specifically rule out:

- Revenue multiplication.
- Fuel-cost multiplication.
- Fuel-consumption multiplication.
- Repeated truck-month utilization.
- Unvalidated maintenance attribution.
- Other cross-fact duplication.

Any issue affecting KPI correctness must be resolved before Stage 4 completion.

### 4.8.6 Data-Quality Preservation Review
---

The engineering implementation must preserve the validated Stage 2 conditions:

- **4,952 trips (5.80%)** missing at least one driver, truck, or trailer assignment.
- **486 trips (0.569%)** with delivery-before-pickup timestamps.
- **436 truck-month records (13.16%)** with utilization above 100%, maximum **148.40%**.
- **3,880 fuel purchases (1.98%)** missing `truck_id`.
- Approximately **2.03%** missing `driver_id` in the relevant fuel-related population.
- **8,471 completed trips** without a corresponding fuel purchase.

The engineering layers must not silently:

- Convert missing values to zero.
- Remove exception records.
- Cap utilization at 100%.
- Correct timestamps without approved logic.
- Treat missing assignments as failed performance.
- Treat missing fuel linkage as zero fuel consumption.

### 4.8.7 Power BI Report Integration Review
---

The report must reflect the approved Stage 3.8 architecture:

1. Executive Control Tower.
2. Operations Diagnostics.
3. Fleet, Fuel & Cost Intelligence.
4. Route & Facility Intelligence.
5. Management Findings & Action.

Each page must have a defined business purpose and appropriate KPI/analysis coverage.

Visuals, filters, navigation, and drill-through functionality must not alter the underlying KPI definitions.

Management findings must be based on executed analytical evidence rather than being predetermined during dashboard construction.

### 4.8.8 End-to-End Reconciliation
---

The final engineering review must confirm reconciliation from independent validation through Power BI presentation.

The core-period baseline includes:

- Completed Loads: **85,410**
- Completed Trips: **85,410**
- Total Revenue: **262,525,800.29**
- On-Time Delivery: **44.61%**
- Active Fleet: **92**
- Total Fuel Consumption: **24,493,560.80 gallons**
- Fuel Cost: **95,499,723.14**

Validation should follow:

**Independent Baseline → DAX Measure → Report Visual**

Exact counts and monetary values should reconcile without unexplained differences.

Ratios must remain within their approved validation tolerance.

### 4.8.9 Engineering Defect Classification
---

Any implementation issue should be classified before closure.

| Classification | Meaning |
|---|---|
| Critical | Changes KPI correctness, grain, population, or business interpretation |
| High | Materially affects analytical results or report behavior |
| Medium | Requires correction but does not materially change core results |
| Low | Minor documentation, formatting, or usability issue |

Critical and High issues must be resolved before Stage 4 completion.

Medium and Low issues may only remain open when they do not affect analytical correctness and are explicitly documented.


### 4.8.10 Final Engineering Review Checklist
---

The final review must confirm:

- [ ] Power Query outputs are validated.
- [ ] Table grains are documented.
- [ ] Relationships are validated.
- [ ] Cross-fact duplication is ruled out.
- [ ] DAX P1 measures are implemented.
- [ ] P1 measures reconcile to approved baselines.
- [ ] Core-period filtering is controlled.
- [ ] Known data-quality limitations are preserved.
- [ ] Power BI report architecture follows Stage 3.8.
- [ ] Report interactions are validated.
- [ ] Business-question traceability is complete.
- [ ] KPI definitions have not changed.
- [ ] Material implementation changes are documented.
- [ ] Validation evidence is available.
- [ ] No Critical or High engineering defects remain.

### Stage 4 Implementation Decision Register

The following implementation decisions were made during Stage 4 and form part of the final production BI architecture.

| Decision ID | Implementation Decision | Engineering Treatment |
|---|---|---|
| DEC-01 | Raw data remains immutable | Raw source data is preserved in `data/raw`; transformations are performed through the controlled staging layer. |
| DEC-02 | `stg_*` is the production staging layer | Active production transformations use the `stg_*` query layer; disabled `src_*` and `val_*` layers are not part of the production pipeline. |
| DEC-03 | Controlled relationship architecture | The implemented semantic model contains 13 active Single-direction relationships. |
| DEC-04 | No direct Facility → Load relationship | Facility analysis is kept within the approved relationship architecture rather than introducing a shortcut relationship to the load fact. |
| DEC-05 | No uncontrolled Driver ↔ Fuel Purchase relationship | The model avoids an ambiguous cross-fact relationship path between driver and fuel-purchase data. |
| DEC-06 | Source-defined Average Fuel Efficiency | `stg_truck_utilization_metrics[average_mpg]` is retained as the approved source-defined fleet-level efficiency metric. |
| DEC-07 | Fleet metrics are not artificially made slicer-responsive | Active Fleet Count, Fleet Utilization %, and Average Fuel Efficiency retain their approved source population and relationship behavior. |
| DEC-08 | Card (new) visual used for KPI presentation | Production KPI cards use the Card (new) visual with controlled comparison and directional indicators where supported. |
| DEC-09 | No unsupported threshold or traffic-light logic | Visual status coding is not introduced without a validated business threshold or approved rule. |
| DEC-10 | Five-page report architecture implemented | The production report consists of the five approved analytical pages. |
| DEC-11 | Deferred KPIs remain deferred | Delivery Exception Rate, Trips per Active Truck, and Maintenance Cost per Mile are not forced into production without sufficient validation. |
| DEC-12 | Fuel Cost per Load semantic naming | The implemented measure previously presented as `Cost per Load` is documented semantically as `supp Fuel Cost per Load`; the underlying validated calculation is not changed solely for naming. |

These decisions are implementation controls, not additional KPI definitions. They document the final engineering choices that govern model behavior, metric interpretation, and report presentation.

#### Engineering Treatment of Known Data-Quality Limitations

The following validated source limitations were carried into the BI implementation without unsupported correction.

| Limitation | Validated Condition | Engineering Treatment |
|---|---|---|
| Missing trip asset assignments | 4,952 trips have missing driver, truck, or trailer assignment across the three asset fields. | Missing values are preserved; no artificial asset assignment is created. |
| Pickup/delivery chronology reversals | 486 pickup → delivery reversals were identified. | Records are preserved and are not silently reordered or corrected in the BI layer. |
| Utilization values above 100% | 436 utilization records exceed 100%. | Source values are preserved; no arbitrary capping is applied. |
| Missing truck assignment in fuel purchases | 3,880 fuel-purchase records have missing `truck_id`. | Missing dimensional attribution is preserved; records are not discarded solely because truck attribution is unavailable. |
| Trips without fuel linkage | 8,471 trips do not have a corresponding fuel-purchase linkage. | Absence of a fuel linkage is not converted into zero fuel consumption. |
| Source-defined Average MPG | Average Fuel Efficiency is provided through the source-defined utilization metric. | The source-defined metric is retained rather than reconstructed through an unsupported calculation. |
| Active fleet population | The validated active fleet population represents the current/approved fleet definition rather than a historical 2022–2024 trip-population denominator. | Trips per Active Truck remains deferred rather than using an incompatible denominator. |
| Maintenance and trip-distance grain mismatch | Maintenance cost and trip-distance populations do not have sufficiently controlled temporal/grain alignment. | Maintenance Cost per Mile remains deferred. |

These conditions are treated as documented analytical limitations rather than implementation defects. The BI layer preserves the underlying evidence and prevents unsupported transformations from creating apparently cleaner but less defensible results.

### 4.8.11 Stage 4 Completion Gate
---

Stage 4 may be formally closed only when:

1. Power Query implementation is complete and validated.
2. Semantic model and relationships are implemented and validated.
3. Approved P1 DAX measures are implemented and reconciled.
4. Power BI report architecture is implemented.
5. Report-level QA is complete.
6. Business-question traceability is established.
7. Known data-quality limitations remain preserved.
8. Documentation reflects the actual implementation.
9. Critical and High defects are resolved.
10. End-to-end KPI reconciliation passes.

Stage 4 completion does **not** mean that the final business analysis is complete.

The next analytical work must still execute the Stage 3.6 and 3.7 investigation plan using the validated BI solution.

#### Final Stage 4 Closure Statement

All required BI engineering layers have been implemented and reconciled against the approved business design:

- Power Query production staging is implemented and validated.
- The semantic model and relationship architecture are implemented and validated.
- Production DAX and KPI measures are implemented and reconciled.
- The five-page Power BI report is implemented and validated.
- Known data-quality limitations and metric-grain constraints are documented.
- KPI validation evidence has been recorded.
- Implementation decisions and engineering treatments are documented.
- Deferred KPI candidates remain explicitly deferred and are not treated as incomplete implementation.
- Stage 3.5 approved KPI definitions remain the controlled specification for Stage 4 implementation.

**Stage 4 is therefore complete, with implementation, validation, documentation, and engineering closure recorded in this document.**

### 4.8.12 Stage 4 Status
---

**STAGE 4 — BI ENGINEERING: IMPLEMENTED / VALIDATED / DOCUMENTED / COMPLETE**

Sections 4.1–4.8 establish the controlled engineering framework required to implement the approved Business Design.

Formal Stage 4 closure requires actual implementation evidence, reconciliation results, report QA, and completion of the final engineering gate.

After the gate passes, the project proceeds to analytical execution rather than redefining the business design.

---

