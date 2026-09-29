# Data Quality Findings

## 1. Data Quality Assessment

### 1.1 Purpose

This analysis evaluates data-quality conditions that may affect the interpretation, completeness, or reliability of the Logistics Operations BI analysis.

The purpose is not to reproduce the technical validation implementation documented in `docs/04_bi_engineering.md`.

Instead, this file records the **business and analytical significance of validated data-quality conditions**.

---

## 1.2 Assessment Dimensions

Data quality is assessed across five dimensions:

| Dimension                  | Analytical Question                                                            |
| -------------------------- | ------------------------------------------------------------------------------ |
| Completeness               | Are required records or attributes missing?                                    |
| Referential Integrity      | Do records connect correctly across related operational entities?              |
| Temporal / Event Integrity | Are operational events ordered consistently?                                   |
| Validity                   | Do observed values conform to the expected business structure?                 |
| Analytical Impact          | Could the issue materially affect a KPI, diagnostic, or management conclusion? |

---

## 1.3 Severity Interpretation

A data-quality condition is not automatically considered a critical business issue merely because an anomaly exists.

Its significance depends on:

1. the number or proportion of affected records,
2. the analytical grain affected,
3. the measures that depend on those records,
4. whether the condition changes an analytical conclusion,
5. whether the condition can be isolated or controlled during analysis.

The assessment therefore distinguishes **observed data-quality exceptions** from their potential analytical impact.

---

## 1.4 Validated Dataset Baseline

The analysis population contains:

* **85,410 loads**
* **85,410 trips**
* **170,820 delivery events**
* **196,442 fuel-purchase records**
* **150 driver records**
* **120 truck records**
* **180 trailer records**
* **50 facilities**
* **58 routes**

The validation work was performed against the operational relationships and fields used by the BI model.

---

## 1.5 Analytical Treatment

Validated data-quality issues are handled in one of three ways:

### Monitor

The condition is documented but does not materially prevent the intended analysis.

### Qualify

The condition does not invalidate the analysis, but findings involving the affected dimension must be interpreted with an explicit limitation.

### Investigate

The condition is sufficiently material that additional record-level or source-system investigation would be appropriate before making stronger conclusions.

This framework prevents data-quality observations from being either ignored or overstated.

---

## 2. Resource Assignment Completeness

### 2.1 Validation Evidence

The trip-level validation identified missing resource assignments in the following fields:

| Field                           | Missing Records | Share of 85,410 Trips |
| ------------------------------- | --------------: | --------------------: |
| Driver assignment               |           1,714 |                 2.01% |
| Truck assignment                |           1,672 |                 1.96% |
| Trailer assignment              |           1,680 |                 1.97% |
| At least one missing assignment |           4,952 |                 5.80% |

The field-level counts overlap because a single trip may have more than one missing assignment.

Therefore, the three field-level counts must not be added together.

### 2.2 Data Quality Finding

**5.80% of trips do not have a complete driver/truck/trailer assignment.**

This represents a measurable completeness issue in the resource-attribution fields.

The issue is material for analyses that depend on assigning operational activity to an individual driver, truck, or trailer.

### 2.3 Analytical Impact

The condition has different implications depending on analytical grain.

**Aggregate load/trip analysis**

The missing assignments do not inherently prevent aggregate analysis of the full trip population because the trip itself remains present.

**Driver-level analysis**

Trips without driver assignments cannot be fully attributed to individual drivers.

**Truck-level analysis**

Trips without truck assignments cannot be fully attributed to individual trucks.

**Trailer-level analysis**

Trips without trailer assignments cannot be fully attributed to individual trailers.

Therefore, resource-level analysis may have lower coverage than aggregate operational analysis.

### 2.4 Assessment

**Classification:** Completeness
**Analytical treatment:** Qualify

The condition should be disclosed when interpreting driver-, truck-, or trailer-level results.

It does not justify removing all affected trips from aggregate analysis without a specific analytical

---

## 3. Delivery Event Sequence Integrity

### 3.1 Validation Evidence

The delivery-event population contains **170,820 records**.

Validation identified:

* **486 pickup → delivery sequence reversals**
* **0 dispatch-before-load exceptions**

The pickup-to-delivery reversal condition represents approximately **0.57% of the validated delivery-event population**.

### 3.2 Data Quality Finding

The dataset contains a small but measurable number of delivery-event sequences that do not follow the expected pickup → delivery ordering.

This is classified as a **temporal/event-integrity exception**.

The absence of dispatch-before-load exceptions provides a separate validation result: that specific sequencing condition was not observed in the validated population.

### 3.3 Analytical Impact

The primary impact is on analyses that depend directly on event sequencing or event chronology.

Potentially affected analytical areas include:

* event-sequence diagnostics
* process-duration calculations based on event order
* record-level operational investigations
* interpretations that depend on a strictly ordered delivery process

The existence of the reversals does not, by itself, invalidate aggregate delivery-performance measures.

### 3.4 Assessment

**Classification:** Temporal / Event Integrity
**Analytical treatment:** Qualify

The exception should remain documented because event ordering is part of the operational meaning of delivery-event data.

However, the relatively small observed proportion means it should not automatically be treated as evidence that the overall delivery-event dataset is unusable.

### 3.5 Evidence Boundary

The validation establishes that the observed event ordering contains 486 pickup → delivery reversals.

It does not establish whether the reversals represent:

* genuine operational sequence deviations,
* timestamp-entry issues,
* event-recording delays,
* source-system ordering behavior, or
* other data-generation conditions.

Additional record-level investigation would be required to determine the underlying cause.

---

## 4. Driver Master Data Completeness

### 4.1 Validation Evidence

The driver master dataset contains **150 driver records**.

Of these, **124 records have a NULL `termination_date`**, while 26 records contain a termination date.

This means approximately **82.7% of driver records do not contain a termination date**.

### 4.2 Data Quality Finding

The high proportion of NULL termination dates represents a **master-data completeness condition**.

A NULL termination date should not automatically be interpreted as evidence that a driver is currently active, because the meaning of a missing termination date depends on the source-system business rules.

### 4.3 Analytical Impact

The condition is particularly relevant to analyses involving:

* historical driver status
* active-versus-terminated driver populations
* driver tenure
* workforce turnover
* driver availability by period

If active status is inferred solely from a NULL termination date without confirming the source-system definition, historical workforce analysis could be misinterpreted.

### 4.4 Assessment

**Classification:** Completeness / Master Data
**Analytical treatment:** Qualify

The driver table remains usable for analyses supported by the available driver attributes and validated relationships.

However, analyses that require a reliable historical active/terminated status should explicitly account for the incomplete termination-date field.

### 4.5 Evidence Boundary

The validation establishes that 124 of 150 driver records have no recorded termination date.

It does not establish that:

* all 124 drivers were active throughout the full analysis period,
* the drivers remained employed for the entire period,
* the NULL values represent data-entry errors, or
* the NULL values follow a documented source-system convention.

A reliable historical employment-status analysis would require an explicit business definition or additional source data.

---

## 5. Referential Integrity

### 5.1 Validation Evidence

The operational model was validated across the principal entity relationships used for analysis.

Key validation results include:

* **85,410 loads**
* **85,410 trips**
* **196,442 fuel-purchase records**
* Fuel-purchase records were matched to the trip population through `trip_id`.
* The load/trip relationship was validated at the operational grain used by the model.
* Delivery events were validated against the trip population through `trip_id`.

### 5.2 Data Quality Finding

The principal operational entities provide sufficient referential linkage for the core load → trip → delivery-event analytical flow.

The validation therefore supports the use of these relationships for aggregate operational analysis.

This is important because a KPI can appear numerically correct while still being analytically unreliable if its underlying records cannot be consistently connected.

### 5.3 Analytical Significance

The validated linkage supports analysis across the operational chain:

**Load → Trip → Delivery Event**

This enables measures from different operational stages to be analyzed together without requiring unsupported direct relationships between unrelated grains.

The validated fuel-purchase → trip linkage also supports fuel-cost and fuel-consumption analysis at the trip level.

### 5.4 Facility Relationship Consideration

Facility analysis requires additional care.

Facilities are connected to delivery events, while loads are connected through trips. Therefore, facility-associated load and revenue analysis follows the operational path:

**Facility → Delivery Event → Trip → Load**

A direct facility → load relationship is not assumed.

This distinction is important for analytical integrity because introducing an unsupported direct relationship could create ambiguous or duplicated filter paths.

### 5.5 Assessment

**Classification:** Referential Integrity
**Analytical treatment:** Monitor

The principal relationships required for the core analysis were validated.

The documented resource-assignment and event-sequence exceptions remain separate data-quality conditions and should not be confused with a general failure of referential integrity.

### 5.6 Evidence Boundary

The validation establishes that the principal analytical relationships used by the model are sufficiently connected for the intended analysis.

It does not imply that every record is complete or that every business attribute is valid.

Referential connectivity and data completeness are separate quality dimensions.

---

## 6. Overall Data Quality Assessment

### 6.1 Validated Conditions

| Data Quality Condition                              |       Evidence | Analytical Treatment |
| --------------------------------------------------- | -------------: | -------------------- |
| Missing driver assignments                          |    1,714 trips | Qualify              |
| Missing truck assignments                           |    1,672 trips | Qualify              |
| Missing trailer assignments                         |    1,680 trips | Qualify              |
| Trips with at least one missing resource assignment | 4,952 / 85,410 | Qualify              |
| Pickup → delivery reversals                         |     486 events | Qualify              |
| Dispatch-before-load exceptions                     |              0 | Monitor              |
| Drivers with NULL termination date                  |      124 / 150 | Qualify              |
| Core load → trip → delivery-event linkage           |      Validated | Monitor              |
| Fuel-purchase → trip linkage                        |      Validated | Monitor              |

### 6.2 Overall Finding

The dataset contains **specific, measurable quality exceptions**, but the identified conditions do not by themselves prevent the core aggregate logistics analysis from being performed.

The principal analytical impact is concentrated in areas requiring:

* complete resource attribution
* reliable event sequencing
* historical driver-status interpretation

This distinction is important. A dataset can be suitable for aggregate business analysis while still containing limitations for more granular analysis.

### 6.3 Impact by Analytical Grain

**Aggregate operational analysis**

The validated load and trip population supports analysis of overall operating volume, revenue, delivery performance, and other aggregate measures.

**Event-level analysis**

The 486 sequence reversals require qualification where event chronology is central to the conclusion.

**Resource-level analysis**

The 4,952 trips with at least one missing resource assignment limit complete attribution to drivers, trucks, and trailers.

**Driver master-data analysis**

The high proportion of NULL termination dates limits confidence in historical active/terminated-status interpretation.

### 6.4 Management Relevance

The most important data-quality consideration is not simply the existence of anomalies, but **where those anomalies intersect with business decisions**.

For example:

* A missing truck assignment matters when evaluating truck-level performance.
* A missing driver assignment matters when evaluating driver-level productivity.
* An event-order reversal matters when interpreting event chronology.
* A missing termination date matters when evaluating workforce history.

The analytical impact is therefore **use-case dependent**.

### 6.5 Overall Assessment

The available evidence supports the use of the dataset for the project's primary **descriptive and diagnostic logistics analysis**, provided the documented limitations are retained.

The analysis should not extend beyond the evidence into unsupported conclusions about:

* root causes
* employee status
* operational failure
* resource accountability
* causality

without additional evidence.

### 6.6 Portfolio-Level Data Quality Conclusion

The data-quality assessment demonstrates that the BI solution was not built on the assumption that source data is automatically clean.

Instead, the project:

1. validates the operational population,
2. identifies measurable quality exceptions,
3. evaluates their analytical impact,
4. qualifies affected analyses where necessary, and
5. preserves the limitations alongside the business findings.

This provides an explicit link between **data reliability and analytical interpretation**, rather than treating data quality as a separate technical exercise.

---
