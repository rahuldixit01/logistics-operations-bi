## 3.1 Business Context & Problem Definition

### 3.1.1 Business Context

The project focuses on analyzing logistics operations through a multi-table operational dataset representing customers, loads, trips, delivery events, routes, drivers, trucks, trailers, fuel purchases, maintenance records, safety incidents, facilities, and operational performance metrics.

The objective is to use this operational data to understand how the logistics operation performs across delivery, cost, fleet, driver, route, maintenance, and facility dimensions.

The analysis is intended to support management-oriented decision making by identifying important performance patterns, operational bottlenecks, efficiency opportunities, and areas requiring further investigation.

The project is positioned as a **Logistics Operations Intelligence / Logistics Operations Control Tower** solution using Power BI and related analytical techniques.

The dataset is treated as a synthetic operational dataset and will be analyzed according to the actual structures, relationships, grains, and validated characteristics identified during Stages 1 and 2.

---

### 3.1.2 Business Problem

Logistics operations generate information across multiple interconnected operational processes. However, individual transactional tables alone do not provide management with a consolidated view of operational performance.

The business problem is therefore to determine:

> **How efficiently is the logistics operation performing, where are the major cost, delivery, fleet, and operational bottlenecks, and what should management do about them?**

The analysis must connect operational activity with measurable business outcomes while preserving the underlying data grain and relationships.

The problem is not to assume that the operation is inefficient or underperforming.

Instead, the analysis must use the validated data to determine **where performance differences, inefficiencies, delays, cost drivers, or operational risks actually exist**.

---

### 3.1.3 Problem Statement

The project will develop a decision-focused Power BI analytical solution that enables management to:

* Monitor overall logistics operational performance.
* Evaluate delivery and fulfillment performance.
* Identify route-level performance differences.
* Assess fleet utilization and operating efficiency.
* Evaluate driver performance where supported by the data.
* Analyze fuel usage and operating-cost efficiency.
* Examine maintenance activity and downtime-related patterns where supported.
* Identify facility-level or operational bottlenecks.
* Investigate cost and profitability drivers where the available data supports them.
* Understand relevant time-based operational patterns.

The analysis will prioritize the business questions with the strongest evidence and decision value rather than attempting to include every available field or analysis area.

---

### 3.1.4 Analytical Scope

The initial analytical scope will consider the following areas:

1. **Overall Operational Performance**
2. **Delivery / Fulfillment Performance**
3. **Route Performance**
4. **Fleet Utilization**
5. **Driver Performance**
6. **Fuel and Operating-Cost Efficiency**
7. **Maintenance / Downtime**
8. **Facility / Operational Bottlenecks**
9. **Profitability / Cost Drivers where supported**
10. **Time-Based / Seasonal Patterns where supported**

These areas represent the initial analytical scope rather than a commitment to include every area in the final dashboard.

Each area will be evaluated through subsequent business-question and KPI design work.

Only analyses that are supported by the actual dataset, validated definitions, and meaningful business questions will progress into the final Power BI solution.

The final analytical scope will therefore be **evidence-driven and prioritized by business value**.

---

## 3.2 Business Objectives

The business objectives translate the defined logistics operations problem into specific analytical objectives that will guide business-question development, KPI design, diagnostic analysis, and final decision support.

The objectives are based on the **validated dataset, confirmed relationships, identified data limitations, and analytical requirements from Stages 1 and 2**.

> **Important:** These objectives define what the analysis is intended to investigate. They do **not** assume that a particular operational problem exists. Findings must be established from evidence during subsequent analysis.

---

### 3.2.1 Monitor Overall Operational Performance

Establish a consolidated view of logistics operational activity and performance to understand the overall scale, efficiency, and operational outcomes of the operation.

The analysis should provide management with a reliable baseline from which meaningful performance differences and areas requiring investigation can be identified.

> **Business purpose:** Establish the overall operational baseline before investigating specific performance areas.

---

### 3.2.2 Evaluate Delivery and Fulfillment Performance

Assess delivery performance to determine whether shipments are being completed reliably and within expected operational timeframes.

The analysis should examine delivery outcomes, delays, and reliability across relevant time periods, routes, facilities, and other supported dimensions.

> **Important:** The analysis must **determine whether delivery-performance problems exist** rather than assume that delays indicate operational failure.

> **Business purpose:** Identify meaningful delivery-performance differences that may require management attention.

---

### 3.2.3 Identify Route-Level Performance Differences

Evaluate operational performance across routes to determine whether meaningful differences exist in volume, delivery reliability, efficiency, cost, or other supported performance measures.

The analysis should identify routes that demonstrate materially different performance and may therefore warrant further investigation.

> **Business purpose:** Help management identify where route-level performance differs and where deeper investigation may provide operational value.

---

### 3.2.4 Assess Fleet Utilization and Operating Efficiency

Evaluate how effectively available fleet resources are being utilized and identify meaningful differences in utilization and operating efficiency across vehicles, time periods, or other supported dimensions.

Stage 2 identified **436 truck-month records with utilization above 100%**. Therefore, utilization must be **properly defined and interpreted before conclusions are drawn from the metric**.

> **Important:** A utilization value above 100% must **not automatically be classified as an error or inefficiency**. Its business meaning must first be established through KPI definition and analytical validation.

> **Business purpose:** Understand fleet utilization patterns and identify areas where fleet-resource performance warrants investigation.

---

### 3.2.5 Evaluate Driver and Asset-Associated Performance

Assess driver-associated and asset-associated operational performance where sufficient assignment data is available.

The analysis may consider workload, delivery performance, efficiency, and other relevant operational indicators.

Stage 2 identified that **5.80% of trips have at least one missing driver, truck, or trailer assignment**.

> **Important:** Driver and asset KPIs must account for incomplete assignment coverage. Results should **not be presented as a complete population-level assessment** where the underlying assignment data is incomplete.

> **Business purpose:** Understand supported driver and asset performance while maintaining appropriate analytical limitations.

---

### 3.2.6 Analyze Fuel and Operating-Cost Efficiency

Evaluate fuel consumption and available operating-cost measures to identify meaningful differences in operating efficiency and potential cost drivers.

The analysis should examine relationships between operational activity, distance, fuel usage, fuel efficiency, and available cost measures where the data supports defensible calculations.

> **Important:** Cost-efficiency conclusions must be based on clearly defined and compatible measures rather than simply comparing raw cost values.

> **Business purpose:** Identify meaningful operating-cost and fuel-efficiency patterns that may support cost-management decisions.

---

### 3.2.7 Examine Maintenance and Operational Downtime Patterns

Assess maintenance activity and available downtime-related information to determine whether meaningful operational patterns exist across vehicles, time periods, facilities, or other supported dimensions.

Where supported by the data, the analysis should investigate whether maintenance activity is associated with operational availability or efficiency patterns.

> **Important:** The analysis should identify patterns and relationships without automatically claiming that maintenance activity caused operational performance changes.

> **Business purpose:** Support investigation of fleet reliability, maintenance activity, and potential operational continuity issues.

---

### 3.2.8 Identify Facility-Level and Operational Bottlenecks

Evaluate facility-level operational activity and performance to identify locations or operational points with materially different levels of volume, delay, throughput, cost, or efficiency.

The analysis should determine whether observed differences represent meaningful operational bottlenecks or simply differences in operational scale.

> **Business purpose:** Identify facilities or operational areas that may require deeper management investigation.

---

### 3.2.9 Understand Cost and Profitability Drivers Where Supported

Evaluate available revenue, cost, and related financial measures to understand the major drivers of operating value and financial performance.

Profitability or margin analysis will only be performed where the available data supports a **clear and defensible financial definition**.

> **Important:** Profitability must **not be manufactured from incompatible or incomplete financial fields**. If the dataset does not support a reliable profitability definition, the analysis will remain focused on supported cost and revenue measures.

> **Business purpose:** Understand the financial implications of operational activity where the data provides sufficient evidence.

---

### 3.2.10 Identify Relevant Time-Based Operational Patterns

Analyze operational performance over time to identify meaningful trends, recurring patterns, changes in activity, and potential seasonal effects.

The analysis will respect the validated temporal coverage identified during Stage 2.

The core operational period is primarily **2022–2024**, while certain supporting tables extend slightly into **January 2025**.

> **Important:** Extended supporting-data periods must not automatically be treated as part of the same core operational reporting period.

> **Business purpose:** Determine whether operational performance changes meaningfully over time and whether time-based patterns are relevant to management decisions.

---

### 3.2.11 Objective Prioritization Principle

The objectives above establish the **initial analytical direction** of the project. They do not require every objective to receive equal analytical depth or dashboard space.

Objectives will be prioritized according to:

1. **Business decision value**
2. **Data availability and quality**
3. **Reliability of KPI definitions**
4. **Analytical depth supported by the dataset**
5. **Relevance to logistics operations management**
6. **Potential to produce actionable findings**
7. **Suitability for a management-oriented Power BI solution**

> **Important:** An objective may be reduced, combined, or excluded if subsequent investigation shows that the data does not support a meaningful or defensible analysis.

---

### 3.2.12 Evidence-Driven Business Design Principle

The objectives establish **what management needs to understand**, not what the analysis is expected to find.

All subsequent Stage 3 work must remain evidence-driven.

The analytical process will therefore follow:

> **Objective → Business Question → KPI → Investigation → Evidence → Finding → Insight → Decision**

The analysis must determine:

> **What is happening? → Where is it happening? → How significant is it? → What evidence supports it? → What decision, if any, should management consider?**

This principle prevents the project from creating conclusions merely because a particular KPI, chart, or business narrative appears desirable.

It also ensures that the final Power BI solution is based on **validated evidence and genuine business questions rather than assumed operational problems**.

---

## 3.3 Prioritized Business Questions

The business questions translate the approved business objectives into specific questions that can be investigated using the validated logistics operations dataset.

The questions are prioritized according to:

* **Business decision value**
* **Relevance to logistics operations**
* **Availability and reliability of supporting data**
* **Potential for meaningful diagnostic analysis**
* **Ability to produce actionable business insight**
* **Suitability for a management-oriented Power BI solution**

> **Important:** A business question is included only when the available data can provide a defensible answer. The existence of a question does not imply that the expected problem or outcome exists.

---

### 3.3.1 Priority Framework

Business questions will be classified into three priority levels.

### Priority 1 — Core Management Questions

Questions with high business value, strong data support, and clear potential to influence operational decisions.

These questions are expected to form the foundation of the final analytical solution.

### Priority 2 — Supporting Diagnostic Questions

Questions that provide deeper explanation for Priority 1 findings.

These questions will primarily be used during diagnostic analysis to determine **where performance differences originate and what factors may be associated with them**.

### Priority 3 — Exploratory Questions

Questions with potential analytical value but lower decision priority, weaker data support, or greater dependency on findings from earlier analysis.

These questions will only progress if the evidence demonstrates that they add meaningful business value.

> **Important:** Priority does not mean that a question will definitely appear as a dashboard visual. Some questions may be investigated analytically and not require a dedicated visual.

---

### 3.3.2 Priority 1 — Core Management Questions

### Q1. How is the logistics operation performing overall?

**Objective linkage:** Overall Operational Performance

Management needs a reliable baseline of operational activity and performance before individual problem areas can be evaluated.

The analysis should establish the overall scale of operations and identify whether meaningful performance patterns require deeper investigation.

**Decision relevance:** Provides the management-level operational baseline.

**Priority:** **P1 — Core**

---

### Q2. How reliable is delivery performance?

**Objective linkage:** Delivery and Fulfillment Performance

The analysis should determine the level of successful and timely delivery performance and identify whether meaningful delay or reliability patterns exist.

**Decision relevance:** Helps management understand whether delivery execution requires attention.

**Priority:** **P1 — Core**

---

### Q3. Where are the most significant delivery-performance differences occurring?

**Objective linkage:** Delivery + Route + Facility Performance

Once overall delivery performance is established, the analysis should determine whether meaningful differences exist across routes, facilities, time periods, or other supported dimensions.

**Decision relevance:** Identifies where management should focus further investigation.

**Priority:** **P1 — Core**

---

### Q4. How effectively is the fleet being utilized?

**Objective linkage:** Fleet Utilization and Operating Efficiency

The analysis should evaluate fleet utilization across relevant vehicles and time periods while using a clearly defined utilization measure.

Because Stage 2 identified **436 truck-month records with utilization above 100%**, the meaning and calculation of utilization must be established before performance conclusions are made.

**Decision relevance:** Supports fleet-resource planning and operational efficiency decisions.

**Priority:** **P1 — Core**

---

### Q5. What are the major drivers of operating cost and fuel efficiency?

**Objective linkage:** Fuel and Operating-Cost Efficiency

The analysis should determine which operational dimensions are associated with meaningful differences in fuel consumption, fuel efficiency, and available operating costs.

**Decision relevance:** Supports cost-control and operational-efficiency decisions.

**Priority:** **P1 — Core**

---

### Q6. Which routes or operational areas demonstrate the strongest and weakest overall performance?

**Objective linkage:** Route Performance + Delivery + Cost + Efficiency

The analysis should compare relevant performance measures across routes or operational areas to determine where meaningful differences exist.

**Decision relevance:** Supports prioritization of operational improvement efforts.

**Priority:** **P1 — Core**

---

### Q7. Are there facilities that require further operational investigation?

**Objective linkage:** Facility / Operational Bottlenecks

The analysis should determine whether specific facilities exhibit materially different performance in volume, delays, throughput, cost, or efficiency.

High activity alone should not automatically be interpreted as a bottleneck.

**Decision relevance:** Helps identify facilities requiring deeper investigation.

**Priority:** **P1 — Core**

---

### 3.3.3 Priority 2 — Supporting Diagnostic Questions

### Q8. What factors are associated with delivery delays?

**Objective linkage:** Delivery Performance

The analysis should investigate whether delay patterns differ by route, facility, time period, operational characteristics, or other supported dimensions.

> **Important:** Association must not automatically be interpreted as causation.

**Priority:** **P2 — Diagnostic**

---

### Q9. Which routes contribute most to operational volume, cost, or revenue?

**Objective linkage:** Route Performance + Cost Drivers

The analysis should identify routes that materially contribute to overall operational activity and financial measures where supported.

**Priority:** **P2 — Diagnostic**

---

### Q10. Which fleet assets demonstrate materially different utilization or efficiency patterns?

**Objective linkage:** Fleet Utilization

The analysis should investigate vehicle-level differences in utilization, mileage, fuel efficiency, and related operational measures.

**Important limitation:** Missing truck assignments must be considered when interpreting asset-level results.

**Priority:** **P2 — Diagnostic**

---

### Q11. Which drivers demonstrate materially different supported performance patterns?

**Objective linkage:** Driver Performance

Where assignment coverage is sufficient, the analysis should investigate differences in workload, delivery performance, fuel efficiency, or relevant operational indicators.

> **Important:** Driver-level results must account for the **5.80% of trips with at least one missing driver, truck, or trailer assignment** identified during Stage 2.

**Priority:** **P2 — Diagnostic**

---

### Q12. What maintenance patterns are visible across the fleet?

**Objective linkage:** Maintenance / Downtime

The analysis should examine maintenance frequency, maintenance spend, and available downtime-related measures to identify meaningful fleet patterns.

**Priority:** **P2 — Diagnostic**

---

### Q13. Are maintenance patterns associated with differences in fleet performance?

**Objective linkage:** Maintenance + Fleet Efficiency

Where the data supports the comparison, investigate whether vehicles with different maintenance patterns also demonstrate different operational performance.

> **Important:** The analysis will identify **associations**, not claim that maintenance activity directly causes performance outcomes.

**Priority:** **P2 — Diagnostic**

---

### Q14. How does operational performance change over time?

**Objective linkage:** Time-Based Operational Patterns

The analysis should identify meaningful trends, changes in activity, and recurring patterns across the validated operational period.

**Priority:** **P2 — Diagnostic**

---

### Q15. Are there meaningful seasonal or recurring operational patterns?

**Objective linkage:** Time-Based Operational Patterns

Where sufficient temporal coverage exists, investigate whether operational activity or performance varies systematically across months, quarters, or other relevant periods.

**Priority:** **P2 — Diagnostic**

---

### 3.3.4 Priority 3 — Exploratory Questions

### Q16. Which customers or customer segments contribute most to operational value?

**Objective linkage:** Overall Performance + Revenue

Where customer-level information supports meaningful analysis, investigate differences in volume, revenue, delivery activity, or other relevant measures.

**Priority:** **P3 — Exploratory**

---

### Q17. Which operational dimensions are associated with higher cost per mile or similar efficiency measures?

**Objective linkage:** Cost and Operating Efficiency

Investigate whether meaningful differences in cost-efficiency measures exist across routes, fleet, facilities, or other supported dimensions.

**Priority:** **P3 — Exploratory**

---

### Q18. Are there meaningful relationships between operational volume and efficiency?

**Objective linkage:** Overall Performance + Efficiency

Investigate whether higher or lower operational volume corresponds with materially different efficiency patterns.

> **Important:** Correlation or association will not be presented as proof of causation.

**Priority:** **P3 — Exploratory**

---

### Q19. Is profitability or margin analysis sufficiently supported by the available data?

**Objective linkage:** Cost and Profitability

Before implementing profitability KPIs, determine whether revenue and cost fields provide a logically compatible and defensible basis for profitability analysis.

> **Important:** Profitability will only proceed if the underlying financial definitions are sufficiently reliable.

**Priority:** **P3 — Exploratory / Validation-dependent**

---

### 3.3.5 Question Prioritization Matrix

| ID  | Business Question                                            | Priority | Primary Area                | Intended Use           |
| --- | ------------------------------------------------------------ | -------- | --------------------------- | ---------------------- |
| Q1  | How is the logistics operation performing overall?           | **P1**   | Overall Performance         | Executive baseline     |
| Q2  | How reliable is delivery performance?                        | **P1**   | Delivery                    | Core analysis          |
| Q3  | Where are delivery-performance differences occurring?        | **P1**   | Delivery / Route / Facility | Diagnostic             |
| Q4  | How effectively is the fleet being utilized?                 | **P1**   | Fleet                       | Core analysis          |
| Q5  | What drives operating cost and fuel efficiency?              | **P1**   | Cost / Fuel                 | Core analysis          |
| Q6  | Which routes/areas show strongest and weakest performance?   | **P1**   | Route                       | Comparison             |
| Q7  | Are there facilities requiring investigation?                | **P1**   | Facility                    | Bottleneck analysis    |
| Q8  | What factors are associated with delivery delays?            | **P2**   | Delivery                    | Diagnostic             |
| Q9  | Which routes contribute most to volume/cost/revenue?         | **P2**   | Route                       | Diagnostic             |
| Q10 | Which fleet assets show different utilization/efficiency?    | **P2**   | Fleet                       | Diagnostic             |
| Q11 | Which drivers show different supported performance?          | **P2**   | Driver                      | Diagnostic             |
| Q12 | What maintenance patterns exist?                             | **P2**   | Maintenance                 | Diagnostic             |
| Q13 | Are maintenance patterns associated with fleet performance?  | **P2**   | Maintenance / Fleet         | Diagnostic             |
| Q14 | How does performance change over time?                       | **P2**   | Time                        | Trend analysis         |
| Q15 | Are there recurring/seasonal patterns?                       | **P2**   | Time                        | Exploratory diagnostic |
| Q16 | Which customers contribute most to operational value?        | **P3**   | Customer                    | Exploratory            |
| Q17 | Which dimensions are associated with higher cost efficiency? | **P3**   | Cost                        | Exploratory            |
| Q18 | Are volume and efficiency meaningfully related?              | **P3**   | Operations                  | Exploratory            |
| Q19 | Is profitability sufficiently supported?                     | **P3**   | Financial                   | Validation-dependent   |

---

### 3.3.6 Prioritization Rules

The prioritization is **not final merely because a question has been listed**.

During KPI definition and diagnostic analysis, each question must be tested against:

1. **Data availability**
2. **Data completeness**
3. **Metric definition reliability**
4. **Grain compatibility**
5. **Relationship validity**
6. **Analytical significance**
7. **Business decision value**
8. **Potential for actionable insight**

A question may be downgraded, combined, or removed if the underlying data cannot support a reliable answer.

Similarly, a Priority 3 question may be promoted if diagnostic analysis demonstrates unexpectedly strong business value.

> **Important:** Prioritization is therefore **evidence-driven and iterative**, rather than permanently fixed at the beginning of Stage 3.

---

### 3.3.7 Business Question → Analysis Principle

Every prioritized question must eventually connect to the full analytical chain:

> **Business Question**
>
> ↓
>
> **Business Objective**
>
> ↓
>
> **KPI / Measurement Definition**
>
> ↓
>
> **Investigation / Validation**
>
> ↓
>
> **Diagnostic Analysis**
>
> ↓
>
> **Finding**
>
> ↓
>
> **Business Insight**
>
> ↓
>
> **Decision / Recommendation**

A question will not automatically result in a dashboard visual.

> **Important:** A visual will only be justified when the underlying analysis demonstrates that it communicates a meaningful business result or supports a necessary management decision.

---

### 3.3.8 Stage 3 Question-Selection Principle

The final set of questions used in the Power BI solution will be determined by the evidence produced during subsequent KPI validation and diagnostic analysis.

The project will prioritize **fewer high-value questions with strong analytical support** over a large collection of superficial questions.

The final analytical story should therefore answer:

> **What matters most to management?**

rather than:

> **How many different analyses can be created from the dataset?**

---

## 3.4 KPI Design / KPI Dictionary

### 3.4.1 KPI Design Principles & KPI Governance

KPI design will translate the prioritized business questions into **clearly defined, measurable, and decision-relevant performance indicators**.

KPIs will be designed only after considering the validated dataset structure, table grain, relationships, data quality findings, temporal coverage, and known analytical limitations from Stages 1 and 2.

> **Core principle:** A KPI is not included merely because the required column exists. It must have a clear **business purpose, defensible definition, appropriate grain, and reliable analytical interpretation**.

---

#### 3.4.1.1 Business Relevance

Every KPI must answer a meaningful business question or support a management decision.

Each KPI must therefore be linked to at least one approved business objective and prioritized business question.

> **Rule:** No KPI without a business purpose.

---

#### 3.4.1.2 Clear and Unambiguous Definition

Each KPI must have one documented definition before implementation.

The definition should specify:

* What the KPI measures
* What constitutes the numerator and denominator, where applicable
* Which records are included
* Which records are excluded
* The relevant business grain
* The applicable time period
* The dimensions through which it may be analyzed

> **Important:** Similar-sounding metrics must not be treated as interchangeable unless their definitions are proven equivalent.

---

#### 3.4.1.3 Grain Awareness

KPI calculations must respect the validated grain of the underlying data.

Measures must not combine transactional and aggregated data in a way that causes duplicated counts, inflated sums, or other forms of measure multiplication.

This is particularly important because the dataset contains multiple one-to-many transactional relationships.

> **Critical rule:** Every KPI must have a defined **calculation grain** and must be tested against the source-table grain before implementation.

---

#### 3.4.1.4 Relationship Awareness

KPI calculations must use only validated relationships between tables.

A relationship must not be assumed to exist merely because two columns appear to contain similar identifiers.

Where a KPI requires information from multiple tables, the relationship path and its effect on the calculation must be understood before implementation.

---

#### 3.4.1.5 Data-Quality Awareness

KPI definitions must explicitly account for known data-quality conditions.

The following Stage 2 findings must be considered where relevant:

* **5.80% of trips have at least one missing driver, truck, or trailer assignment.**
* **486 pickup → delivery actual-timestamp reversals (0.569%)** were identified as potential temporal inconsistencies.
* **1,907 records (2.23%)** showed small MPG precision differences consistent with stored-value rounding.
* **436 truck-month records (13.16%)** have utilization values above 100%.

> **Audit rerun confirmation:** The raw-dataset audit was re-executed on **2026-08-31** with the immutable source files. The finding profile remained **0 Critical, 1 High, 7 Medium, 7 Low**; the current findings report confirms the same material conditions used in this business design.
* Supporting fuel-purchase and delivery-event data extends into **January 2025**, beyond the core 2022–2024 operational period.

> **Rule:** Known limitations must be documented within the KPI definition rather than ignored after implementation.

---

#### 3.4.1.6 KPI Interpretation Before Calculation

A KPI must be **understood conceptually before it is calculated in DAX**.

This is especially important for metrics such as:

* On-time delivery
* Delay rate
* Average delay
* Fleet utilization
* Fuel efficiency
* Cost per mile
* Availability / downtime
* Profit or margin

> **Important:** A technically valid mathematical calculation is not automatically a valid business KPI.

---

#### 3.4.1.7 No Assumption-Based KPIs

KPIs must not be designed around an assumed operational problem.

For example:

* Do not define an "Underutilized Truck Rate" before establishing what utilization means.
* Do not label all late deliveries as operational failures without defining the expected delivery-time basis.
* Do not define "Unprofitable Loads" without confirming that revenue and cost measures are compatible.

The KPI should measure the business condition objectively; the analysis must determine whether that condition represents a problem.

---

#### 3.4.1.8 Numerator and Denominator Integrity

For percentage and rate KPIs, the numerator and denominator must represent the same valid population unless a documented business definition states otherwise.

Examples include:

* On-time %
* Delay rate
* Utilization %
* Fuel-efficiency measures
* Incident rates
* Availability %

> **Rule:** A percentage is only meaningful when its denominator is clearly defined.

---

#### 3.4.1.9 Time Logic

Every time-sensitive KPI must define the date used for analysis.

Where multiple operational dates exist, the business meaning of each date must be established before selecting it.

Examples may include:

* Load date
* Dispatch date
* Pickup timestamp
* Delivery timestamp
* Maintenance date
* Fuel purchase date

> **Important:** The existence of several date fields does not mean that any one of them can automatically be used as the KPI's reporting date.

---

#### 3.4.1.10 Coverage and Missing-Value Rules

KPI definitions must document how missing values affect the calculation.

Missing data should not automatically be converted into zero.

A NULL may represent:

* Unknown
* Not recorded
* Not applicable
* Not assigned
* Not completed

> **Rule:** Missing values must be interpreted according to their business meaning before inclusion, exclusion, or replacement decisions are made.

---

#### 3.4.1.11 Comparability

A KPI should support meaningful comparison across appropriate dimensions such as:

* Time
* Route
* Facility
* Truck
* Driver
* Operational category

Comparisons must only be made where the underlying populations and definitions are sufficiently comparable.

For example, a raw volume comparison may not fairly compare routes with substantially different operational scales.

---

#### 3.4.1.12 Aggregation Rules

Each KPI must define whether it should be:

* Summed
* Averaged
* Calculated as a ratio
* Recalculated from underlying components
* Counted distinctly
* Evaluated at a specific grain

> **Critical rule:** Ratios and percentages should generally be recalculated from their underlying numerator and denominator rather than averaged across already aggregated records unless an approved business definition explicitly requires averaging.

---

#### 3.4.1.13 Exception Handling

Exceptional values must not automatically be removed because they appear unusual.

Examples include:

* Utilization above 100%
* Unusual fuel-efficiency values
* Large delays
* High maintenance costs

Exceptions must first be interpreted according to their business meaning and validated data context.

> **Rule:** Preserve valid source values unless a documented transformation or exclusion is supported by an actual business requirement.

---

#### 3.4.1.14 KPI Evidence Requirement

Each KPI must be supported by sufficient underlying data.

Before approval, the KPI should be evaluated for:

* Data availability
* Data completeness
* Grain compatibility
* Relationship support
* Definition reliability
* Business interpretability
* Analytical usefulness

A KPI may be rejected, modified, or deferred if the evidence does not support a reliable calculation.

---

#### 3.4.1.15 KPI Approval Standard

A KPI will be considered ready for implementation only when the following are documented:

| Requirement               | Status Required |
| ------------------------- | --------------- |
| Business purpose          | Defined         |
| Related business question | Identified      |
| KPI definition            | Approved        |
| Calculation logic         | Defined         |
| Grain                     | Defined         |
| Source table(s)           | Identified      |
| Time logic                | Defined         |
| Inclusion/exclusion rules | Defined         |
| Missing-value treatment   | Defined         |
| Known limitations         | Documented      |
| Interpretation            | Understood      |
| Business usefulness       | Confirmed       |

Only approved KPIs will progress to DAX implementation in Stage 4.

---

#### 3.4.1.16 KPI Governance Principle

The KPI dictionary will act as the **single source of truth for KPI meaning and calculation logic** across the project.

The same KPI definition must remain consistent across:

* Power BI measures
* Diagnostic analysis
* Dashboard visuals
* Documentation
* Business recommendations
* Interview explanations

> **Final KPI rule:** If a KPI cannot be clearly explained in business terms, mathematically defined, linked to validated data, and defended during an interview, it is not ready for implementation.

---

#### 3.4.1.17 KPI Design Decision Chain

The project will use the following sequence for every KPI:

> **Business Question**
>
> ↓
>
> **Business Purpose**
>
> ↓
>
> **KPI Definition**
>
> ↓
>
> **Source / Grain / Relationship Validation**
>
> ↓
>
> **Calculation Logic**
>
> ↓
>
> **Exception & Missing-Value Rules**
>
> ↓
>
> **Business Interpretation**
>
> ↓
>
> **KPI Approval**
>
> ↓
>
> **DAX Implementation**

This ensures that **DAX implements an approved business definition rather than becoming the place where business logic is invented**.

---

### 3.4.2 Executive / Overall Operational KPI Definitions

---

The Executive / Overall Operational KPI family establishes the core measures required to understand the overall scale, activity, and financial performance of the logistics operation.

These KPIs are designed to answer the high-level management question:

> **How is the logistics operation performing overall?**

The KPI definitions are derived from the prioritized business questions, validated dataset structure, table grain, relationship constraints, data-quality findings, and analytical limitations identified during Stages 1 and 2.

The initial executive KPI set is intentionally limited to measures that can be reasonably supported by the validated dataset.

#### 3.4.2.1 Completed Loads

---

**KPI Name**

**Completed Loads**

**Business Purpose**

Measures the overall volume of completed customer/load operations handled during the selected reporting period.

**Related Business Question**

> **How much operational demand is the logistics operation completing?**

**Definition**

Count of unique loads whose `load_status` qualifies as **Completed**.

**Calculation Logic**

**Completed Loads = DISTINCT COUNT of completed `load_id`**

**Grain**

**Load**

**Source Table**

`loads`

**Valid Dimensions**

The KPI may be analyzed by validated dimensions such as:

* Load date
* Origin facility
* Destination facility
* Customer
* Load status
* Other load-level categorical dimensions where validated

**Time Logic**

Primary reporting date:

`load_date`

The load date is used because the KPI represents completed load activity at the load grain.

**Inclusion Rules**

Include:

* Unique load records
* Records satisfying the approved completed-load status definition

Exclude:

* Duplicate load identifiers
* Records outside the approved reporting population

**Missing-Value Treatment**

Missing dimensional attributes must not automatically cause the load itself to be excluded.

A load should remain part of the total volume unless the missing value affects the definition of the KPI itself.

**Known Limitations**

Completed Loads measures operational volume only.

A higher completed-load count does not inherently indicate better operational performance because volume must be evaluated together with service quality, cost, utilization, and other performance measures.

**Interpretation**

This KPI should primarily be interpreted as an **operational activity / workload indicator**, not as a standalone measure of efficiency or service quality.

**Approval Status**

**Approved**

Validated in Stage 3.5 with an independent baseline of **85,410** and zero reconciliation difference.

#### 3.4.2.2 Completed Trips

---

**KPI Name**

**Completed Trips**

**Business Purpose**

Measures the number of completed transportation movements handled by the operation during the selected reporting period.

**Related Business Question**

> **How many transportation trips are being completed?**

**Definition**

Count of unique trips satisfying the approved completed-trip status definition.

**Calculation Logic**

**Completed Trips = DISTINCT COUNT of completed `trip_id`**

**Grain**

**Trip**

**Source Table**

`trips`

**Valid Dimensions**

Potential dimensions include:

* Dispatch date
* Driver
* Truck
* Trailer
* Origin
* Destination
* Facility
* Route

Assignment-based analysis must account for missing driver, truck, and trailer identifiers.

**Time Logic**

Primary reporting date:

`dispatch_date`

The dispatch date represents the point at which the transportation movement entered operational execution.

**Inclusion Rules**

Include completed trips regardless of whether driver, truck, or trailer assignment is populated.

This prevents the KPI from unintentionally becoming an assigned-trip KPI.

**Missing-Value Treatment**

Missing driver, truck, or trailer assignments remain missing.

They should affect assignment-based analysis but should not automatically exclude the trip from total completed-trip volume.

Stage 2 identified that approximately **5.80% of trips have at least one missing driver, truck, or trailer assignment**.

**Known Limitations**

Completed Trips should not be interpreted as equivalent to:

* Driver-assigned trips
* Truck-assigned trips
* Trailer-assigned trips

Those are separate analytical populations and may require diagnostic KPIs.

**Interpretation**

Completed Trips represents transportation activity.

Completed Loads represents operational workload volume.

Their relationship should be validated rather than automatically assumed to represent a one-to-one business relationship.

**Approval Status**

**Approved with Limitation**

Validated in Stage 3.5 with an independent baseline of **85,410** and zero reconciliation difference.

#### 3.4.2.3 Total Revenue

---

**KPI Name**

**Total Revenue**

**Business Purpose**

Measures the total recorded revenue generated by the defined load population during the selected reporting period.

**Related Business Question**

> **What revenue is being generated by the operation?**

**Definition**

Sum of the approved revenue values for the defined load population.

**Calculation Logic**

**Total Revenue = SUM(`loads.revenue`) for completed loads**

**Grain**

**Load**

Revenue must be calculated at the load grain.

**Source Table**

`loads`

**Valid Dimensions**

Potential dimensions include:

* Load date
* Customer
* Origin
* Destination
* Facility
* Load category
* Load status

The availability of each dimension for reliable analysis must be confirmed through the validated relationship structure.

**Time Logic**

Primary reporting date:

`load_date`

**Inclusion Rules**

The final revenue population must be explicitly defined before implementation.

The calculation must not automatically assume that:

* Every non-null revenue value is valid revenue
* Every missing revenue value represents zero
* Every load should necessarily be included

These rules require confirmation of the business semantics of the revenue field.

**Missing-Value Treatment**

NULL revenue values must not automatically be converted to zero.

The business meaning of missing revenue must be established before finalizing the treatment.

**Known Limitations**

Total Revenue does not measure:

* Profitability
* Profit margin
* Cost efficiency
* Customer profitability

Therefore, Total Revenue should be interpreted as a **financial activity indicator**, not a profitability KPI.

**Grain Risk**

Revenue is particularly sensitive to grain multiplication.

The measure must not be calculated after joining the load table to one-to-many transactional tables such as delivery events or fuel purchases in a manner that duplicates load records.

**Interpretation**

Changes in revenue should be investigated alongside operational volume, load mix, distance, customer mix, and cost measures before drawing business conclusions.

**Approval Status**

**Approved**

Validated in Stage 3.5 for the 2022–2024 completed-load population, with an independent baseline of **262,525,800.29** and zero reconciliation difference.

#### 3.4.2.4 Revenue per Completed Load

---

**KPI Name**

**Revenue per Completed Load**

**Business Purpose**

Measures the average recorded revenue generated per completed load.

**Related Business Question**

> **How much revenue does the operation generate per completed load on average?**

**Definition**

Total valid revenue divided by the number of completed loads within the same reporting population.

**Calculation Logic**

**Revenue per Completed Load = Total Revenue ÷ Completed Loads**

The numerator and denominator must represent the same valid load population.

**Grain**

**Load-derived ratio**

**Source Table**

`loads`

**Valid Dimensions**

Potential dimensions include:

* Time
* Customer
* Origin
* Destination
* Facility
* Load category

Only dimensions supported by validated relationships and sufficiently comparable populations should be used.

**Time Logic**

Primary reporting date:

`load_date`

**Inclusion Rules**

The numerator and denominator must use identical population rules.

For example, revenue calculated from one population must not be divided by completed loads from a different population.

**Missing-Value Treatment**

Missing revenue must not automatically be treated as zero.

A missing revenue value may represent an unknown or unrecorded value rather than an actual zero-revenue load.

**Known Limitations**

Revenue per Completed Load can be affected by:

* Load mix
* Customer mix
* Route characteristics
* Distance
* Pricing structure
* Operational category

Therefore, an increase or decrease in the KPI does not automatically indicate pricing improvement or deterioration.

**Interpretation**

The KPI should be interpreted as a **revenue intensity measure per completed load**.

Changes should be investigated alongside volume, mix, distance, customer, and cost characteristics.

**Approval Status**

**Approved**

Validated in Stage 3.5 for the 2022–2024 completed-load population, with an independent baseline of **262,525,800.29** and zero reconciliation difference.

#### 3.4.2.5 Average Delivery Delay

---

**KPI Name**

**Average Delivery Delay**

**Business Purpose**

Measures the average delay associated with deliveries for which a valid and business-interpretable expected-versus-actual delivery timing basis exists.

**Related Business Question**

> **When deliveries are delayed, how severe is the delay?**

**Definition**

Average difference between the approved expected delivery timing and actual delivery timing for the valid delivery population.

**Calculation Logic**

Conceptually:

**Average Delivery Delay = Average(Actual Delivery Time − Expected Delivery Time)**

The exact implementation must be finalized after validating the business meaning and source of the expected delivery timestamp/date.

**Grain**

**Trip / Delivery Event**

The final analytical grain must be confirmed against the validated delivery-event structure before implementation.

**Source Tables**

Potentially:

* `trips`
* `delivery_events`

The final relationship path and calculation grain require validation.

**Time Logic**

The KPI requires a clearly defined:

* Expected delivery timestamp/date
* Actual delivery timestamp/date

The appropriate reporting date must be established before implementation.

**Inclusion Rules**

Only records with a valid and business-interpretable expected-versus-actual delivery comparison should contribute to the KPI.

Invalid temporal records must be handled according to an approved exception rule.

**Missing-Value Treatment**

Records missing the required timing components cannot automatically be treated as zero delay.

They should be evaluated according to the business meaning of the missing values.

**Exception Handling**

Stage 2 identified **486 trips (0.569%) where delivery occurred before pickup**.

These records must not automatically be deleted.

Their treatment must be explicitly documented after validation of the underlying timestamp semantics.

Possible analytical treatment may include:

* Excluding invalid temporal records from delay calculations while retaining them as data-quality exceptions
* Separately reporting the affected population
* Investigating the records before determining their final treatment

No exclusion rule is approved at this stage.

**Known Limitations**

The KPI cannot be fully approved until:

1. Expected delivery timing is clearly identified.
2. Actual delivery timing is confirmed.
3. Delivery-event grain is validated.
4. The relationship between relevant tables is confirmed.
5. Temporal exception handling is approved.

**Interpretation**

Average Delivery Delay should describe the severity of delivery timing deviation.

It should not automatically be interpreted as an operational failure until the expected delivery-time definition and exception rules are established.

**Approval Status**

**Candidate — Requires validation before approval.**

#### 3.4.2.6 Executive KPI Summary

---

The initial Executive / Overall Operational KPI set is summarized below.

| KPI                            | Business Purpose                              | Grain                 | Primary Source             | Status              |
| ------------------------------ | --------------------------------------------- | --------------------- | -------------------------- | ------------------- |
| **Completed Loads**            | Measure completed operational workload volume | Load                  | `loads`                    | Strong Candidate    |
| **Completed Trips**            | Measure completed transportation activity     | Trip                  | `trips`                    | Strong Candidate    |
| **Total Revenue**              | Measure recorded revenue generation           | Load                  | `loads`                    | Candidate           |
| **Revenue per Completed Load** | Measure revenue intensity per completed load  | Load-derived ratio    | `loads`                    | Candidate           |
| **Average Delivery Delay**     | Measure severity of delivery timing deviation | Trip / Delivery Event | `trips`, `delivery_events` | Requires Validation |

#### 3.4.2.7 Executive KPI Design Decision

---

The Executive KPI family will remain intentionally limited to measures that provide broad operational visibility without introducing unsupported assumptions.

The following principles are established:

1. **Completed Loads** will represent operational workload volume at the load grain.

2. **Completed Trips** will represent transportation activity at the trip grain.

3. **Total Revenue** will be calculated from the load grain to avoid transaction-level multiplication.

4. **Revenue per Completed Load** will use the same validated population for both numerator and denominator.

5. **Average Delivery Delay** will remain subject to validation until expected-versus-actual delivery timing semantics and temporal exception handling are confirmed.

6. Known Stage 2 data-quality issues will be documented and incorporated into KPI interpretation rather than silently ignored.

7. No KPI will be implemented in DAX until its business definition, grain, population, and calculation logic are sufficiently approved.

#### 3.4.2.8 Stage 3.4.2 Completion Status
---

**Status: Executive KPI definitions established / carried into completed KPI validation and downstream BI implementation.**

No DAX implementation is performed at this stage.

The approved definitions will serve as the business specification for subsequent KPI validation and BI Engineering.

---

### 3.4.3 Delivery Performance KPI Definitions

---

This section defines the KPIs used to evaluate delivery service performance, focusing on whether shipments meet expected delivery commitments and the magnitude of delivery deviations.

The KPI definitions will be based on validated delivery timestamps, delivery-event grain, temporal consistency findings, and clearly established expected-versus-actual delivery logic before final KPI approval.

#### 3.4.3.1 On-Time Delivery %

---

**KPI Name**

**On-Time Delivery %**

**Business Purpose**

Measures the proportion of eligible deliveries completed on or before the approved expected delivery date/time.

**Related Business Question**

> **How consistently is the operation meeting its delivery commitments?**

**Definition**

Percentage of eligible deliveries for which the actual delivery time is less than or equal to the approved expected delivery time.

**Calculation Logic**

**On-Time Delivery % = On-Time Deliveries ÷ Eligible Deliveries × 100**

The exact expected-delivery field and comparison logic must be validated before implementation.

**Numerator**

Count of eligible deliveries where:

`Actual Delivery Time ≤ Expected Delivery Time`

**Denominator**

Count of all eligible deliveries for which the approved expected-versus-actual comparison can be reliably performed.

**Grain**

**Delivery / Trip**

The final grain must be confirmed against the delivery-event structure and the relationship between `trips` and `delivery_events`.

**Source Tables**

Potentially:

- `trips`
- `delivery_events`

The final source and relationship path require validation.

**Time Logic**

The KPI requires an approved:

- Expected delivery date/time
- Actual delivery date/time

The reporting date used for trend analysis must also be established.

**Inclusion Rules**

Include only deliveries for which:

- The expected delivery timing is available and interpretable.
- The actual delivery timing is available and interpretable.
- The delivery record belongs to the approved operational population.

**Missing-Value Treatment**

Missing expected or actual delivery timestamps must not automatically be classified as late or on-time.

Such records should be treated as **ineligible for the KPI calculation** unless a validated business rule establishes another treatment.

The excluded population should remain available for data-quality and coverage analysis.

**Exception Handling**

Stage 2 identified **486 trips (0.569%) where delivery occurred before pickup**.

These records must not automatically be classified as on-time or late.

Their treatment requires validation of the underlying timestamp semantics and should be documented as part of the KPI governance decision.

**Known Limitations**

On-Time Delivery % is only meaningful if the expected delivery timestamp represents a genuine operational or customer commitment.

If the field is instead an estimated, system-generated, or otherwise non-commitment timestamp, its business interpretation must be adjusted accordingly.

**Interpretation**

A higher On-Time Delivery % generally indicates stronger delivery reliability, but the KPI should be interpreted alongside:

- Late Delivery Rate
- Average Delay
- Delivery Exception Rate
- Volume
- Route/facility characteristics

A change in the KPI should not automatically be attributed to operational improvement without diagnostic analysis.

**Approval Status**

**Approved with Limitation**

Validated in Stage 3.5 at the Delivery-event grain using the source `on_time_flag`; the observed source behavior corresponds to a ±120-minute timestamp tolerance, but that tolerance is not independently established as a business policy.


#### 3.4.3.2 Late Delivery Rate

---

**KPI Name**

**Late Delivery Rate**

**Business Purpose**

Measures the proportion of eligible deliveries completed after the approved expected delivery date/time.

**Related Business Question**

> **What proportion of deliveries are missing their expected delivery commitment?**

**Definition**

Percentage of eligible deliveries where actual delivery occurs after the approved expected delivery time.

**Calculation Logic**

**Late Delivery Rate = Late Deliveries ÷ Eligible Deliveries × 100**

**Numerator**

Count of eligible deliveries where:

`Actual Delivery Time > Expected Delivery Time`

**Denominator**

The same eligible delivery population used for On-Time Delivery %.

**Grain**

**Delivery / Trip**

**Source Tables**

Potentially:

- `trips`
- `delivery_events`

**Time Logic**

Based on the approved expected-versus-actual delivery timing fields.

**Inclusion Rules**

Only deliveries with valid and interpretable expected and actual delivery timing should be included.

**Missing-Value Treatment**

Missing timing values should not automatically be classified as late.

They should remain outside the KPI population unless a validated business rule specifies otherwise.

**Exception Handling**

The same temporal exception rules established for On-Time Delivery % must apply.

This prevents the two KPIs from using inconsistent populations.

**Known Limitations**

Late Delivery Rate does not measure the severity of the delay.

For example, a delivery that is one minute late and one that is several hours late may both contribute one late delivery.

Therefore, this KPI must be interpreted alongside a delay-duration measure.

**Interpretation**

Late Delivery Rate measures the **frequency** of delivery failures relative to the approved commitment.

It should not be confused with the magnitude of those failures.

**Approval Status**

**Approved with Limitation**

Validated in Stage 3.5 at the Delivery-event grain using the source `on_time_flag`; the observed source behavior corresponds to a ±120-minute timestamp tolerance, but that tolerance is not independently established as a business policy.


#### 3.4.3.3 Average Delivery Delay

---

**KPI Name**

**Average Delivery Delay**

**Business Purpose**

Measures the average duration by which eligible deliveries deviate from their approved expected delivery timing.

**Related Business Question**

> **When deliveries are delayed, how severe is the delay?**

**Definition**

Average time difference between actual delivery and expected delivery for the approved delivery population.

**Calculation Logic**

Conceptually:

**Average Delivery Delay = Average(Actual Delivery Time − Expected Delivery Time)**

The KPI should be calculated using the approved delivery population and validated timestamp fields.

**Grain**

**Delivery / Trip**

The final calculation grain must be confirmed against the delivery-event structure.

**Source Tables**

Potentially:

- `trips`
- `delivery_events`

**Time Logic**

Requires:

- Expected delivery timestamp/date
- Actual delivery timestamp/date

**Inclusion Rules**

The KPI should include records where:

- Expected delivery timing is valid.
- Actual delivery timing is valid.
- The record belongs to the approved delivery population.

The exact treatment of early deliveries must be explicitly defined.

**Important Semantic Decision**

Average deviation and average delay are not necessarily the same metric.

If early deliveries are represented as negative values, the average deviation may be reduced by early deliveries.

If the business objective is specifically to measure **delay severity**, only late deliveries may be appropriate.

Therefore, the final definition must distinguish between:

- **Average Delivery Deviation**
- **Average Delay Among Late Deliveries**

These should not be treated as interchangeable.

**Missing-Value Treatment**

Missing expected or actual timestamps should not be treated as zero delay.

They should be excluded from the calculation population unless a validated business rule establishes another treatment.

**Exception Handling**

The **486 pickup → delivery timestamp reversals (0.569%)** require explicit treatment.

They should remain visible as a data-quality population even if ultimately excluded from the KPI calculation.

**Known Limitations**

Average delay can be strongly influenced by a small number of extreme delays.

Therefore, the KPI may eventually need supporting measures such as:

- Median delay
- Maximum delay
- Late-delivery distribution

These should only be introduced if justified by the business questions.

**Interpretation**

Average Delivery Delay should describe the magnitude of delivery timing deviation.

It should not automatically be interpreted as a service failure without considering the approved expected-delivery definition.

**Approval Status**

**Candidate — Requires validation of expected-delivery semantics and treatment of early deliveries.**


#### 3.4.3.4 Delivery Exception Rate

---

**KPI Name**

**Delivery Exception Rate**

**Business Purpose**

Measures the proportion of deliveries associated with an approved operational delivery exception.

**Related Business Question**

> **How frequently are deliveries experiencing operational exceptions that may require investigation?**

**Definition**

Percentage of eligible deliveries associated with a delivery exception according to the validated business definition of an exception.

**Calculation Logic**

**Delivery Exception Rate = Exception Deliveries ÷ Eligible Deliveries × 100**

**Grain**

**Delivery / Trip / Event**

The exact grain depends on how delivery exceptions are represented in the validated `delivery_events` structure.

**Source Tables**

Potentially:

- `trips`
- `delivery_events`

**Critical Validation Requirement**

The term **"delivery exception" must not be assumed to mean simply "late delivery."**

An exception may represent a specific operational event/status such as:

- Failed delivery
- Delivery issue
- Exception event
- Reschedule
- Other validated exception category

The actual categorical definitions must be validated from the dataset.

**Time Logic**

The appropriate delivery-event or actual-delivery date/time must be established based on the validated exception structure.

**Inclusion Rules**

Include only records meeting the approved exception definition.

The denominator must represent the same eligible delivery population used by the approved exception logic.

**Missing-Value Treatment**

Missing exception status should not automatically be interpreted as "No Exception."

The semantic meaning of NULL must first be established.

**Exception Handling**

Data-quality anomalies and business exceptions must remain conceptually separate.

For example:

> A delivery timestamp reversal is a **data-quality exception** unless the business definition explicitly classifies it as an operational delivery exception.

This distinction prevents data-quality problems from being incorrectly presented as operational failures.

**Known Limitations**

This KPI cannot be approved until the delivery-event categories and their business meanings are validated.

**Interpretation**

Delivery Exception Rate should identify the frequency of explicitly defined delivery exceptions.

It should not automatically be used as a synonym for Late Delivery Rate or On-Time Delivery failure.

**Approval Status**

**Candidate — Requires validation of delivery-event exception semantics.**


#### 3.4.3.5 Delivery KPI Relationship

---

The delivery KPIs are designed to measure different dimensions of delivery performance rather than duplicate the same concept.

The relationship between these KPIs must be governed by consistent population and exception rules.

| KPI | Measures | Primary Analytical Question |
|---|---|---|
| **On-Time Delivery %** | Frequency of meeting delivery commitment | Are we delivering on time? |
| **Late Delivery Rate** | Frequency of missed delivery commitment | How often are we late? |
| **Average Delivery Delay** | Magnitude of timing deviation | How severe are delays? |
| **Delivery Exception Rate** | Frequency of defined delivery exceptions | How often do delivery exceptions occur? |

In particular:

- On-Time Delivery % and Late Delivery Rate should use compatible denominators.
- Average Delivery Delay must clearly distinguish **delay** from **deviation**.
- Delivery Exception Rate must use validated exception categories rather than assuming that every late delivery is an exception.
- Data-quality exceptions must not automatically become operational exceptions.


#### 3.4.3.6 Delivery KPI Validation Requirements

---

Before these KPIs can be marked as fully approved, the following must be validated:

1. The exact expected delivery date/time field.
2. The exact actual delivery date/time field.
3. The business meaning of the expected delivery timing.
4. The grain of `delivery_events`.
5. The relationship between `trips` and `delivery_events`.
6. Whether one trip can contain multiple delivery events.
7. The appropriate reporting date for delivery-performance trends.
8. Treatment of early deliveries.
9. Treatment of the 486 pickup → delivery timestamp reversals.
10. Definition of delivery-event exceptions.
11. NULL semantics for expected, actual, and exception fields.
12. The final eligible-delivery population.

These validations must be completed before DAX implementation.


#### 3.4.3.7 Delivery KPI Design Decision

---

The delivery KPI family will use a **population-first approach**.

A single approved eligible-delivery population will be established before implementing percentage-based delivery KPIs wherever their business definitions permit.

The project will explicitly distinguish:

> **On-Time Performance → Late Frequency → Delay Severity → Delivery Exceptions**

This prevents multiple visuals from presenting the same underlying condition under different names.

The 486 temporal reversals will remain traceable as a separate data-quality concern and will not be silently converted into operational delivery failures.


#### 3.4.3.8 Stage 3.4.3 Completion Status
---

**Status: Delivery KPI framework established and subsequently carried into completed semantic, grain, and KPI validation.**

No DAX implementation was performed as part of the original Stage 3.4 design activity.

The defined delivery KPI framework was subsequently evaluated through the Stage 3.5 KPI validation process and carried into downstream BI Engineering using the approved KPI definitions, analytical populations, grain controls, and documented source limitations.

The original Stage 3.4.3 gate is therefore considered complete as a business-design specification, with its validation and downstream implementation state evidenced through the subsequent KPI validation and BI workflow.

## **STATUS: STAGE 3.4.3 — COMPLETE / VALIDATED / CARRIED INTO DOWNSTREAM IMPLEMENTATION**

---

### 3.4.4 Fleet Performance KPI Definitions

---

This section defines the KPIs used to evaluate fleet productivity, utilization, availability, and operational efficiency of the truck and trailer assets.

The definitions will respect the validated fleet grain, utilization calculation logic, assignment completeness, and known Stage 2 data-quality findings before final KPI approval.

#### 3.4.4.1 Fleet Utilization %

---

**KPI Name**

**Fleet Utilization %**

**Business Purpose**

Measures the extent to which available truck capacity or operational availability is being utilized during the selected reporting period.

**Related Business Question**

> **How effectively is the available fleet being utilized?**

**Definition**

Fleet Utilization % measures the proportion of the approved available operational capacity that is utilized during the defined period.

The exact definition must be based on the validated utilization logic established during Stage 2 and must not be inferred solely from available columns.

**Calculation Logic**

The final formula must be based on the approved business definition of fleet availability and utilization.

Conceptually:

**Fleet Utilization % = Utilized Capacity or Time ÷ Available Capacity or Time × 100**

The exact numerator and denominator require validation before DAX implementation.

**Grain**

**Truck-month**

The Stage 2 validation identified utilization at the truck-month level, including **436 truck-month records with utilization above 100%**.

**Source Tables**

Potentially:

- `trucks`
- `trips`
- Supporting operational tables required by the validated utilization methodology

The final source and calculation path must be confirmed.

**Time Logic**

Primary analytical period:

**Month**

The utilization KPI should be evaluated consistently at the approved truck-month grain before being aggregated to broader reporting periods.

**Inclusion Rules**

The fleet population must be based on the approved definition of available trucks during the selected period.

Inactive, unavailable, or otherwise excluded assets must only be excluded when supported by the business definition.

**Missing-Value Treatment**

Missing truck assignments in trip records must not automatically be treated as zero utilization.

Such records may affect the completeness of truck-level utilization analysis and should remain identifiable as an assignment-data limitation.

**Exception Handling**

Stage 2 identified **436 truck-month records with utilization >100%**.

These records must not automatically be capped at 100% or removed.

The underlying utilization methodology must first be validated to determine whether values above 100% represent:

- A valid business condition
- Overlapping or cumulative activity
- A denominator-definition issue
- A grain or calculation issue
- A data-quality condition

**Known Limitations**

Utilization above 100% demonstrates that the current stored utilization logic cannot automatically be interpreted as a simple percentage of physical capacity without understanding its underlying calculation.

Therefore, the KPI definition must be validated before presenting it as a conventional fleet-capacity utilization metric.

**Interpretation**

Fleet Utilization should indicate how effectively available fleet resources are being used.

Values above 100% must be interpreted according to the validated source methodology and should not automatically be presented as impossible or erroneous.

**Approval Status**

**Approved with Limitation**

Validated in Stage 3.5 as the source-defined `utilization_rate` metric at the truck-month grain. The methodology is not independently reproducible, and **436 truck-month records (13.16%)** exceed 100%.


#### 3.4.4.2 Active Fleet Count

---

**KPI Name**

**Active Fleet Count**

**Business Purpose**

Measures the number of fleet assets considered active under the approved operational definition during the selected reporting period.

**Related Business Question**

> **How large is the operational fleet available to support transportation activity?**

**Definition**

Count of unique trucks classified as active according to the approved fleet-status definition.

**Calculation Logic**

**Active Fleet Count = DISTINCT COUNT of eligible active `truck_id`**

**Grain**

**Truck**

**Source Table**

`trucks`

**Time Logic**

The applicable time logic depends on whether the source dataset contains an effective-date or status-history structure.

A static truck status must not automatically be interpreted as historical monthly availability.

**Inclusion Rules**

Include trucks meeting the approved active-fleet definition.

Do not infer historical availability from current status unless supported by valid temporal information.

**Missing-Value Treatment**

Missing truck identifiers cannot contribute to the distinct fleet count.

However, missing assignments in transactional tables should not be interpreted as evidence that a truck is inactive.

**Known Limitations**

A truck being classified as active does not necessarily mean that it was:

- Available every day
- Operational every day
- Assigned to a trip
- Fully utilized

Therefore, Active Fleet Count should not be interpreted as actual daily fleet availability unless temporal availability is validated.

**Interpretation**

The KPI provides fleet-size context for other operational measures.

For example, fleet utilization should be interpreted together with the number of active assets rather than in isolation.

**Approval Status**

**Approved with Limitation**

Validated in Stage 3.5 as the current truck-master count of Active trucks. The independent baseline is **92**; historical status transitions cannot be reconstructed.


#### 3.4.4.3 Trips per Active Truck

---

**KPI Name**

**Trips per Active Truck**

**Business Purpose**

Measures the average number of completed trips handled per active truck during the selected reporting period.

**Related Business Question**

> **How much transportation activity is being generated per active truck?**

**Definition**

Completed trips divided by the number of active trucks within the same approved reporting population and period.

**Calculation Logic**

**Trips per Active Truck = Completed Trips ÷ Active Fleet Count**

The numerator and denominator must use compatible populations and time periods.

**Grain**

**Truck-derived ratio**

The underlying trip activity originates at the trip grain and is evaluated against the approved fleet population.

**Source Tables**

Potentially:

- `trips`
- `trucks`

**Time Logic**

The KPI should use a common reporting period.

If monthly analysis is performed, both completed trips and active fleet count must use compatible monthly populations.

**Inclusion Rules**

Completed trips should include only trips satisfying the approved completed-trip definition.

Active trucks should follow the approved active-fleet definition.

**Missing-Value Treatment**

Trips with missing truck assignments cannot be attributed to an individual truck.

They should not automatically be assigned to an available truck.

Such trips remain part of overall trip volume where appropriate but may be excluded from truck-attributed productivity calculations.

**Known Limitations**

This KPI can be affected by:

- Missing truck assignments
- Differences in truck availability
- Route length
- Trip complexity
- Seasonal demand
- Operational mix

Therefore, a higher value does not automatically indicate better asset performance.

**Interpretation**

Trips per Active Truck is a **fleet productivity indicator**, not a direct measure of profitability or physical utilization.

**Approval Status**

**Candidate — Requires compatible fleet-period population definition.**


#### 3.4.4.4 Average Distance per Completed Trip

---

**KPI Name**

**Average Distance per Completed Trip**

**Business Purpose**

Measures the average actual distance traveled per completed trip.

**Related Business Question**

> **What is the typical transportation distance associated with completed trips?**

**Definition**

Total valid actual distance divided by the number of completed trips with valid distance measurements.

**Calculation Logic**

**Average Distance per Completed Trip = Total Valid Actual Distance ÷ Valid Completed Trips**

The numerator and denominator must represent the same eligible trip population.

**Grain**

**Trip**

**Source Table**

`trips`

**Time Logic**

Primary reporting date:

`dispatch_date`

The trip's dispatch date provides the operational reporting context for transportation activity.

**Inclusion Rules**

Include completed trips with valid `actual_distance_miles`.

Trips without a valid distance value should not automatically be treated as zero miles.

**Missing-Value Treatment**

Missing distance values are excluded from the distance calculation population unless a validated business rule establishes another treatment.

**Known Limitations**

Average distance is influenced by route mix and operational geography.

It should not be interpreted as a direct efficiency measure because longer routes naturally produce greater distance.

**Interpretation**

This KPI provides contextual information for interpreting:

- Fuel consumption
- Fuel efficiency
- Cost per mile
- Revenue per trip
- Fleet productivity

**Approval Status**

**Candidate — Strong.**


#### 3.4.4.5 Average Trip Duration

---

**KPI Name**

**Average Trip Duration**

**Business Purpose**

Measures the average actual duration of completed transportation trips.

**Related Business Question**

> **How long do completed transportation movements typically take?**

**Definition**

Average valid actual trip duration for completed trips.

**Calculation Logic**

**Average Trip Duration = Average(`actual_duration_hours`)**

The exact treatment of missing and anomalous durations must follow the validated data-quality rules.

**Grain**

**Trip**

**Source Table**

`trips`

**Time Logic**

Primary reporting date:

`dispatch_date`

**Inclusion Rules**

Include completed trips with valid actual-duration values.

Invalid or non-interpretable duration records should not automatically be converted to zero.

**Missing-Value Treatment**

Missing duration values remain missing and do not represent zero-duration trips.

**Known Limitations**

Average duration can be influenced by:

- Route length
- Traffic
- Route characteristics
- Operational conditions
- Loading/unloading time
- Exceptional trips

Therefore, duration should be interpreted alongside distance and route characteristics.

**Interpretation**

Average Trip Duration provides operational context for transportation efficiency and service analysis.

It should not independently be interpreted as evidence of driver or fleet underperformance.

**Approval Status**

**Candidate — Strong.**


#### 3.4.4.6 Fleet KPI Summary

---

The initial Fleet Performance KPI set is summarized below.

| KPI | Business Purpose | Grain | Primary Source | Status |
|---|---|---|---|---|
| **Fleet Utilization %** | Measure utilization of available fleet capacity/resources | Truck-month | `trucks`, `trips`, supporting tables | Requires Validation |
| **Active Fleet Count** | Measure operational fleet size | Truck | `trucks` | Candidate |
| **Trips per Active Truck** | Measure transportation activity per active truck | Truck-derived ratio | `trips`, `trucks` | Candidate |
| **Average Distance per Completed Trip** | Measure typical trip distance | Trip | `trips` | Strong Candidate |
| **Average Trip Duration** | Measure typical transportation duration | Trip | `trips` | Strong Candidate |


#### 3.4.4.7 Fleet KPI Design Decision

---

The Fleet KPI family will distinguish between **fleet size, fleet utilization, fleet productivity, and trip characteristics**.

The project will not treat these concepts as interchangeable.

In particular:

1. **Active Fleet Count** measures fleet population, not actual utilization.

2. **Fleet Utilization %** requires explicit validation of the underlying utilization methodology.

3. **Trips per Active Truck** measures activity per asset and must account for missing truck assignments.

4. **Average Distance per Completed Trip** provides trip-mix context rather than a standalone efficiency judgment.

5. **Average Trip Duration** provides operational timing context and should be interpreted alongside distance and route characteristics.

6. The **436 truck-month records with utilization >100%** will remain visible and traceable until the underlying utilization methodology is validated.

7. No utilization value will be arbitrarily capped at 100% without an approved business or analytical rule.


#### 3.4.4.8 Fleet KPI Validation Requirements

---

Before the Fleet KPI family can be fully approved, the following must be validated:

1. The exact business definition of fleet utilization.
2. The numerator and denominator used by the utilization calculation.
3. The analytical meaning of the truck-month grain.
4. The reason for utilization values above 100%.
5. Historical versus current fleet-status semantics.
6. The definition of an active truck for each reporting period.
7. The treatment of trips with missing truck assignments.
8. Compatibility between trip activity and fleet availability populations.
9. The appropriate reporting date for fleet KPIs.
10. Treatment of missing distance and duration values.
11. Whether additional fleet availability or downtime data is required.

These validations must be completed before the corresponding DAX measures are approved.


#### 3.4.4.9 Stage 3.4.4 Completion Status
---

**Status: Fuel and cost intelligence KPI framework established and subsequently carried into completed KPI validation and downstream BI implementation.**

No DAX implementation was performed as part of the original Stage 3.4 design activity.

The defined fuel, cost, utilization, and fleet-period KPI framework was subsequently evaluated through the Stage 3.5 KPI validation process and carried into downstream BI Engineering using the approved definitions, analytical populations, grain controls, source semantics, and documented limitations.

Where fleet-level or source-defined metrics retained analytical or semantic limitations, those limitations were documented and governed rather than treated as unresolved Stage 3.4 design blockers.

The original Stage 3.4.4 gate is therefore considered complete as a business-design specification, with its validation and downstream implementation state evidenced through the subsequent KPI validation and BI workflow.

## **STATUS: STAGE 3.4.4 — COMPLETE / VALIDATED / CARRIED INTO DOWNSTREAM IMPLEMENTATION**

---

### 3.4.5 Cost & Fuel Performance KPI Definitions

---

This section defines the KPIs used to evaluate fuel consumption, fuel efficiency, transportation cost, and cost intensity across the logistics operation.

The definitions will respect the validated transaction grains, fuel-purchase coverage, trip-level measurements, revenue compatibility, and known data-quality limitations before final KPI approval.

#### 3.4.5.1 Total Fuel Consumption

---

**KPI Name**

**Total Fuel Consumption**

**Business Purpose**

Measures the total quantity of fuel consumed by the operational fleet during the selected reporting period.

**Related Business Question**

> **How much fuel is being consumed by the operation?**

**Definition**

Total gallons purchased within the validated 2022–2024 `purchase_date` analytical period.

**Calculation Logic**

**Total Fuel Consumption = SUM(`fuel_purchases.gallons`) for the validated fuel-purchase population**

This project retains the validated KPI name **Total Fuel Consumption**, but the source evidence establishes that it measures **fuel purchased**, not trip-level fuel burned.

**Grain**

**Fuel Purchase**

**Source Table**

`fuel_purchases`

**Time Logic**

Primary reporting date:

`purchase_date`

**Inclusion Rules**

Include valid fuel-purchase transactions within the validated 2022–2024 reporting population.

**Missing-Value Treatment**

Missing fuel quantity must not automatically be treated as zero.

The overall KPI remains usable because fuel quantity is complete for the validated fuel-purchase population.

**Known Limitations**

Fuel consumed and fuel purchased are different business concepts.

The validated source for this KPI is `fuel_purchases`, so the KPI must be interpreted as **purchased gallons** unless a future controlled change establishes a true consumption measure from trip-level data.

**Interpretation**

Total Fuel Consumption is primarily a **resource-consumption indicator**.

Higher consumption does not automatically indicate poor efficiency because total consumption is affected by fleet activity, distance, route mix, and workload.

**Approval Status**

**Approved with Limitation**

Validated in Stage 3.5 from `fuel_purchases`. Important semantic limitation: the approved KPI named **Total Fuel Consumption** is source-defined from **fuel purchased**, so it must not be described as gallons physically burned during trips.


#### 3.4.5.2 Average Fuel Efficiency

---

**KPI Name**

**Average Fuel Efficiency**

**Business Purpose**

Measures the source-defined average MPG metric recorded at the truck-month grain.

**Related Business Question**

> **How efficiently is the fleet converting fuel into transportation distance?**

**Definition**

Source-defined `average_mpg` expressed as miles per gallon at the truck-month grain.

**Calculation Logic**

Conceptually:

The approved KPI uses the source-defined `average_mpg` field. An independent `total_miles / fuel_gallons` test was performed during validation but did not reproduce the source metric sufficiently; therefore the source field is retained.

**Grain**

**Truck-month source metric**

**Source Table**

`truck_utilization_metrics`

**Time Logic**

Primary reporting date:

`month`

**Inclusion Rules**

Include truck-month records with valid source `average_mpg` values.

**Missing-Value Treatment**

Trips missing either required component should not be treated as zero.

**Data-Quality Consideration**

Stage 2 identified **1,907 records with MPG precision differences (2.23%)**, consistent with stored-value rounding.

The KPI should therefore preferentially use the validated underlying distance and fuel components where available rather than relying on a pre-calculated rounded MPG field.

**Known Limitations**

Fuel efficiency is affected by:

- Route characteristics
- Vehicle characteristics
- Load conditions
- Driving conditions
- Idle time
- Operational mix

Therefore, MPG should not automatically be interpreted as driver performance.

**Interpretation**

Higher MPG generally indicates greater distance obtained per gallon consumed.

Comparisons should be made across sufficiently comparable truck, route, and operational populations.

**Approval Status**

**Approved with Limitation**

Validated in Stage 3.5 as the source-defined `average_mpg` metric at the truck-month grain. The underlying source methodology could not be independently reproduced from the supplied component fields.


#### 3.4.5.3 Total Fuel Purchase Volume

---

**KPI Name**

**Total Fuel Purchase Volume**

**Business Purpose**

Measures the total quantity of fuel purchased during the selected reporting period.

**Related Business Question**

> **How much fuel is being procured by the operation?**

**Definition**

Sum of recorded fuel-purchase quantities from the approved fuel-purchase population.

**Calculation Logic**

**Total Fuel Purchase Volume = SUM(`fuel_purchases.gallons`)**

The exact quantity field must be confirmed during implementation.

**Grain**

**Fuel Purchase Transaction**

**Source Table**

`fuel_purchases`

**Time Logic**

Primary reporting date:

**Fuel Purchase Date**

The purchase date must be used rather than trip dispatch date because this KPI measures procurement activity.

**Inclusion Rules**

Include valid fuel-purchase transactions within the approved reporting period.

**Missing-Value Treatment**

Missing fuel quantity must not automatically be treated as zero.

Invalid or incomplete purchase records require separate treatment.

**Known Limitations**

Stage 2 identified **3,880 fuel-purchase records with missing `truck_id` (1.98%)**.

Therefore, total purchase volume may remain usable at the overall transaction level while truck-level fuel-purchase analysis has reduced attribution completeness.

Additionally, fuel-purchase data extends into **January 2025**, beyond the core 2022–2024 operational period.

**Interpretation**

Fuel Purchase Volume measures procurement activity and should not be treated as equivalent to fuel consumed.

Inventory timing, refueling patterns, and purchase timing may cause differences between purchases and operational consumption.

**Approval Status**

**Supporting candidate — do not implement separately from Total Fuel Consumption without an explicit naming/semantic change.**


#### 3.4.5.4 Fuel Cost

---

**KPI Name**

**Fuel Cost**

**Business Purpose**

Measures the recorded financial expenditure associated with fuel purchases.

**Related Business Question**

> **How much is the operation spending on fuel?**

**Definition**

Total recorded fuel-purchase cost for the approved fuel-purchase population.

**Calculation Logic**

**Fuel Cost = SUM(`fuel_purchases.total_cost`)**

**Grain**

**Fuel Purchase Transaction**

**Source Table**

`fuel_purchases`

**Time Logic**

Primary reporting date:

**Fuel Purchase Date**

**Inclusion Rules**

Include valid fuel-purchase transactions within the approved reporting population.

**Missing-Value Treatment**

Missing purchase-cost values must not automatically be treated as zero.

**Known Limitations**

Fuel-purchase cost represents procurement expenditure.

It does not automatically represent:

- Fuel consumed during trips
- Total transportation cost
- Total operating cost
- Profit impact

The distinction must remain explicit.

**Interpretation**

Fuel Cost is a direct fuel-expense indicator and should be evaluated alongside:

- Fuel Purchase Volume
- Fuel Price per Gallon
- Fuel Efficiency
- Distance
- Operational volume

**Approval Status**

**Approved with Limitation**

Validated in Stage 3.5 using `fuel_purchases.total_cost` at the fuel-purchase grain. The independent baseline is **95,499,723.14** for the validated 2022–2024 population.


#### 3.4.5.5 Fuel Cost per Gallon

---

**KPI Name**

**Fuel Cost per Gallon**

**Business Purpose**

Measures the average recorded purchase cost per gallon of fuel.

**Related Business Question**

> **What is the average price being paid for fuel?**

**Definition**

Total valid fuel-purchase cost divided by total valid fuel-purchase volume.

**Calculation Logic**

**Fuel Cost per Gallon = Total Fuel Cost ÷ Total Fuel Purchase Volume**

The numerator and denominator must use the same valid fuel-purchase population.

**Grain**

**Fuel Purchase-derived ratio**

**Source Table**

`fuel_purchases`

**Time Logic**

Primary reporting date:

**Fuel Purchase Date**

**Inclusion Rules**

Only valid fuel-purchase transactions with both required cost and volume measures should contribute to the calculation.

**Missing-Value Treatment**

Missing cost or volume must not automatically be converted to zero.

**Known Limitations**

The metric may vary due to:

- Purchase timing
- Fuel type
- Location
- Supplier
- Market conditions

The dataset should not be used to infer market-wide fuel pricing without appropriate external benchmarks.

**Interpretation**

This KPI measures procurement price intensity rather than fleet efficiency.

A higher fuel cost per gallon does not necessarily mean the fleet is consuming fuel inefficiently.

**Approval Status**

**Candidate — Strong.**


#### 3.4.5.6 Fuel Cost per Mile

---

**KPI Name**

**Fuel Cost per Mile**

**Business Purpose**

Measures fuel expenditure relative to transportation distance.

**Related Business Question**

> **How much fuel expenditure is associated with each mile of transportation activity?**

**Definition**

Fuel cost divided by valid actual transportation distance for a compatible operational population.

**Calculation Logic**

Conceptually:

**Fuel Cost per Mile = Fuel Cost ÷ Actual Distance**

The final implementation requires careful validation because fuel cost and trip distance originate from different transactional grains.

**Grain**

**Cross-grain ratio**

**Source Tables**

Potentially:

- `fuel_purchases`
- `trips`

**Critical Grain Requirement**

Fuel purchases must not be directly joined to trips and summed in a way that duplicates either transaction population.

The numerator and denominator must be independently aggregated to a compatible analytical population before the ratio is calculated.

**Time Logic**

The time alignment between fuel purchase date and trip dispatch date must be explicitly defined.

A simple same-date comparison may not represent the same operational activity because fuel may be purchased before or after a trip.

**Inclusion Rules**

Only populations with defensible temporal and operational alignment should be included.

**Missing-Value Treatment**

Missing fuel cost or distance must not automatically be treated as zero.

**Known Limitations**

Fuel purchase cost and trip distance do not necessarily correspond one-to-one.

Therefore, this KPI requires stronger validation than single-table ratios.

**Interpretation**

When appropriately aligned, Fuel Cost per Mile can provide a useful cost-intensity measure.

However, it should not be presented as a direct measure of vehicle mechanical efficiency without controlling for fuel price and operational conditions.

**Approval Status**

**Candidate — Requires cross-grain and temporal validation.**


#### 3.4.5.7 Cost per Completed Trip

---

**KPI Name**

**Cost per Completed Trip**

**Business Purpose**

Measures average transportation cost associated with completed trips.

**Related Business Question**

> **What is the average cost of completing a transportation trip?**

**Definition**

Total approved transportation cost divided by completed trips within the same valid population.

**Calculation Logic**

**Cost per Completed Trip = Total Transportation Cost ÷ Completed Trips**

The definition of **Total Transportation Cost** must first be established.

**Grain**

**Trip-derived ratio**

**Source Tables**

Potentially multiple cost-related tables.

**Critical Validation Requirement**

The dataset must first establish which cost components are valid for inclusion.

Fuel cost alone must not automatically be labeled **Total Transportation Cost**.

Potential cost components may include:

- Fuel
- Maintenance
- Accessorial charges
- Other operational costs

Only validated and compatible components may be included.

**Missing-Value Treatment**

Missing cost values must not automatically be treated as zero unless the business semantics establish that the component is genuinely absent.

**Known Limitations**

This KPI cannot be fully approved until the project establishes a defensible total-cost definition.

**Interpretation**

Cost per Completed Trip should be used to compare cost intensity across sufficiently comparable operational populations.

**Approval Status**

**Candidate — Requires total-cost definition before approval.**


#### 3.4.5.8 Cost & Fuel KPI Summary

---

The initial Cost & Fuel KPI set is summarized below.

| KPI | Business Purpose | Grain | Primary Source | Status |
|---|---|---|---|---|
| **Total Fuel Consumption** | Measure source-defined fuel volume (purchased gallons) | Fuel Purchase | `fuel_purchases` | **Approved with Limitation** |
| **Average Fuel Efficiency** | Use source-defined truck-month MPG | Truck-month | `truck_utilization_metrics` | **Approved with Limitation** |
| **Total Fuel Purchase Volume** | Measure fuel procurement volume | Fuel transaction | `fuel_purchases` | Strong Candidate |
| **Fuel Cost** | Measure fuel-purchase expenditure | Fuel transaction | `fuel_purchases` | **Approved with Limitation** |
| **Fuel Cost per Gallon** | Measure fuel purchase price intensity | Fuel-derived ratio | `fuel_purchases` | Strong Candidate |
| **Fuel Cost per Mile** | Measure fuel expenditure relative to distance | Cross-grain ratio | `fuel_purchases`, `trips` | Requires Validation |
| **Cost per Completed Trip** | Measure average transportation cost per trip | Trip-derived ratio | Multiple | Requires Cost Definition |


#### 3.4.5.9 Cost & Fuel KPI Design Decision

---

The Cost & Fuel KPI family will explicitly distinguish **fuel consumed, fuel purchased, fuel price, fuel expenditure, and transportation cost**.

The project will not treat these measures as interchangeable.

> **Validated correction:** The P1 KPI named **Total Fuel Consumption** is sourced from `fuel_purchases` and therefore measures **purchased gallons** in the current evidence base. It must not be represented as trip-level fuel burned. A separate Total Fuel Purchase Volume KPI is therefore not required unless the business definition is intentionally changed.

In particular:

1. **Fuel Consumption** will represent operational fuel usage where trip-level consumption is valid.

2. **Fuel Purchase Volume** will represent procurement activity rather than consumption.

3. **Fuel Cost** will represent recorded fuel-purchase expenditure.

4. **Fuel Cost per Gallon** will be calculated from compatible fuel-purchase cost and volume populations.

5. **Average Fuel Efficiency** should preferably be calculated from underlying distance and fuel components rather than relying on rounded MPG values.

6. **Fuel Cost per Mile** requires explicit cross-grain and temporal validation.

7. **Cost per Completed Trip** will not be approved until a defensible definition of total transportation cost has been established.

8. The **3,880 fuel-purchase records with missing truck IDs** will be treated as an attribution limitation rather than automatically discarded.

9. Fuel-purchase records extending into **January 2025** must be handled consistently with the approved reporting-period definition.


#### 3.4.5.10 Cost & Fuel KPI Validation Requirements

---

Before the Cost & Fuel KPI family can be fully approved, the following must be validated:

1. Exact fuel-consumption field and business semantics.
2. Exact fuel-purchase quantity field.
3. Exact fuel-purchase cost field.
4. Fuel purchase transaction grain.
5. Trip fuel-consumption grain.
6. Relationship, if any, between fuel purchases and trips.
7. Temporal alignment between fuel purchases and operational activity.
8. Treatment of the 3,880 fuel purchases with missing truck IDs.
9. Treatment of January 2025 fuel-purchase records.
10. Preferred methodology for aggregate fuel-efficiency calculation.
11. Definition of transportation cost.
12. Valid cost components for Cost per Completed Trip.
13. Treatment of missing cost and fuel measurements.
14. Whether fuel cost can be defensibly attributed to individual trips, trucks, or periods.


#### 3.4.5.11 Stage 3.4.5 Completion Status

---

**Status: Cost & Fuel KPI framework established and subsequently carried into completed KPI validation and downstream BI implementation.**

No DAX implementation was performed as part of the original Stage 3.4 design activity.

The defined cost and fuel KPI framework was subsequently evaluated through the Stage 3.5 KPI validation process, including cross-grain validation, field-semantic review, population controls, and documented source limitations.

The validated definitions were carried into downstream BI Engineering using the approved KPI specifications and analytical controls. Where source-grain or attribution limitations remained, they were documented and governed rather than treated as unresolved Stage 3.4 design blockers.

The original Stage 3.4.5 gate is therefore considered complete as a business-design specification, with its validation and downstream implementation state evidenced through the subsequent KPI validation and BI workflow.

## **STATUS: STAGE 3.4.5 — COMPLETE / VALIDATED / CARRIED INTO DOWNSTREAM IMPLEMENTATION**

---

### 3.4.6 Operational Efficiency & Resource KPI Definitions

---

This section defines supporting KPIs used to evaluate operational efficiency, resource consumption, and asset-related performance beyond the primary executive, delivery, fleet, and fuel measures.

These KPIs are intended primarily for diagnostic analysis and should only be promoted to executive-level KPIs when a clear business decision or prioritized business question justifies their inclusion.

#### 3.4.6.1 Idle Time

---

**KPI Name**

**Total Idle Time**

**Business Purpose**

Measures the total recorded amount of vehicle idle time during the selected operational period.

**Related Business Question**

> **How much recorded vehicle time is being spent idle during transportation operations?**

**Definition**

Total valid idle time recorded for the approved trip population.

**Calculation Logic**

**Total Idle Time = SUM(`trips.idle_time_hours`)**

**Grain**

**Trip**

**Source Table**

`trips`

**Time Logic**

Primary reporting date:

`dispatch_date`

**Inclusion Rules**

Include completed trips with valid idle-time measurements according to the approved operational population.

**Missing-Value Treatment**

Missing idle-time values must not automatically be interpreted as zero idle time.

**Known Limitations**

Idle time may be affected by:

- Traffic
- Loading/unloading activity
- Facility congestion
- Driver behavior
- Operational waiting
- Route conditions

Therefore, idle time alone cannot establish the cause of inefficiency.

**Interpretation**

Total Idle Time is a resource-utilization indicator.

A high value should trigger diagnostic investigation rather than automatically being classified as operational waste.

**Approval Status**

**Candidate — Strong supporting KPI.**


#### 3.4.6.2 Average Idle Time per Trip

---

**KPI Name**

**Average Idle Time per Trip**

**Business Purpose**

Measures the average recorded idle time associated with completed trips.

**Related Business Question**

> **How much idle time is typically associated with each completed trip?**

**Definition**

Total valid idle time divided by the number of eligible completed trips with valid idle-time measurements.

**Calculation Logic**

**Average Idle Time per Trip = Total Valid Idle Time ÷ Valid Trips with Idle-Time Measurement**

**Grain**

**Trip-derived ratio**

**Source Table**

`trips`

**Time Logic**

Primary reporting date:

`dispatch_date`

**Inclusion Rules**

Include completed trips with valid idle-time measurements.

**Missing-Value Treatment**

Missing idle-time values should not automatically be treated as zero.

The denominator should represent only the population for which idle-time measurement is valid.

**Known Limitations**

The KPI may vary substantially by:

- Route
- Distance
- Facility
- Traffic conditions
- Trip type

Therefore, comparisons should use sufficiently comparable trip populations.

**Interpretation**

Average Idle Time per Trip is useful for identifying operational patterns that may warrant investigation.

It should not independently establish driver or facility performance.

**Approval Status**

**Candidate — Strong supporting KPI.**


#### 3.4.6.3 Revenue per Mile

---

**KPI Name**

**Revenue per Mile**

**Business Purpose**

Measures recorded revenue generated relative to transportation distance.

**Related Business Question**

> **How much recorded revenue is generated for each mile of transportation activity?**

**Definition**

Valid revenue divided by valid actual transportation distance for a compatible load/trip population.

**Calculation Logic**

**Revenue per Mile = Valid Revenue ÷ Valid Actual Distance**

The exact population alignment between load revenue and trip distance must be validated.

**Grain**

**Cross-table derived ratio**

**Source Tables**

Potentially:

- `loads`
- `trips`

**Critical Grain Requirement**

Revenue and trip distance must not be joined in a way that duplicates either population.

The calculation must operate on a validated common analytical grain.

**Time Logic**

The relationship between `load_date` and `dispatch_date` must be considered before establishing the reporting-date rule.

**Inclusion Rules**

Only records that can be reliably aligned between revenue and distance should contribute to the KPI.

**Missing-Value Treatment**

Missing revenue or distance must not automatically be treated as zero.

**Known Limitations**

Revenue per Mile is influenced by:

- Route characteristics
- Pricing
- Customer mix
- Load characteristics
- Distance
- Operational category

It is not a direct profitability measure.

**Interpretation**

Revenue per Mile can provide useful pricing and revenue-density context when comparing sufficiently comparable routes or operational populations.

**Approval Status**

**Candidate — Requires cross-grain population validation.**


#### 3.4.6.4 Revenue per Trip

---

**KPI Name**

**Revenue per Trip**

**Business Purpose**

Measures recorded revenue relative to completed transportation activity.

**Related Business Question**

> **How much recorded revenue is associated with each completed transportation trip?**

**Definition**

Valid revenue divided by completed trips within a compatible analytical population.

**Calculation Logic**

**Revenue per Trip = Valid Revenue ÷ Compatible Completed Trips**

**Grain**

**Cross-table derived ratio**

**Source Tables**

Potentially:

- `loads`
- `trips`

**Critical Grain Requirement**

The relationship between loads and trips must be validated before revenue is attributed to trips.

The dataset contains 85,410 loads and 85,410 trips, but matching record counts alone must not be treated as proof of business equivalence.

**Time Logic**

The relationship between `load_date` and `dispatch_date` must be validated.

**Missing-Value Treatment**

Missing revenue must not automatically be treated as zero.

Trips without a valid corresponding revenue population must not be artificially assigned revenue.

**Known Limitations**

Revenue per Trip can be distorted if load-to-trip relationships are not one-to-one or if different reporting populations are combined.

**Interpretation**

This KPI may provide useful revenue-density context but should not be interpreted as trip profitability.

**Approval Status**

**Candidate — Requires load-to-trip relationship validation.**


#### 3.4.6.5 Accessorial Charges

---

**KPI Name**

**Total Accessorial Charges**

**Business Purpose**

Measures additional recorded charges associated with completed or eligible loads beyond the defined base revenue component.

**Related Business Question**

> **How much additional charge activity is being generated beyond base load revenue?**

**Definition**

Sum of valid accessorial charges for the approved load population.

**Calculation Logic**

**Total Accessorial Charges = SUM(`loads.accessorial_charges`)**

**Grain**

**Load**

**Source Table**

`loads`

**Time Logic**

Primary reporting date:

`load_date`

**Inclusion Rules**

Include valid accessorial-charge records within the approved load population.

**Missing-Value Treatment**

Missing accessorial charges must not automatically be treated as zero until the field semantics are confirmed.

If NULL means "no accessorial charge," then zero treatment may be appropriate after validation.

**Known Limitations**

Accessorial charges may vary according to:

- Customer
- Route
- Load type
- Operational requirements
- Exceptional services

Therefore, a high accessorial-charge value is not inherently negative.

**Interpretation**

This KPI is primarily a financial and operational-context measure.

It may help explain differences in revenue between otherwise similar loads.

**Approval Status**

**Candidate — Requires NULL semantic validation.**


#### 3.4.6.6 Maintenance Cost

---

**KPI Name**

**Total Maintenance Cost**

**Business Purpose**

Measures recorded maintenance expenditure associated with fleet assets during the selected reporting period.

**Related Business Question**

> **How much is being spent on maintaining the operational fleet?**

**Definition**

Total valid recorded maintenance expenditure for the approved maintenance population.

**Calculation Logic**

**Total Maintenance Cost = SUM(approved maintenance cost field)**

The exact maintenance-cost field must be confirmed from the validated maintenance table.

**Grain**

**Maintenance Transaction / Event**

The exact grain must be confirmed before implementation.

**Source Table**

Validated maintenance-related table.

**Time Logic**

Primary reporting date:

**Maintenance Date**

The maintenance event date should be used because the KPI represents maintenance activity.

**Inclusion Rules**

Include valid maintenance records within the approved reporting period.

**Missing-Value Treatment**

Missing maintenance cost must not automatically be treated as zero.

**Known Limitations**

Maintenance expenditure can be influenced by:

- Fleet age
- Mileage
- Vehicle type
- Maintenance schedules
- Major repairs
- Exceptional events

Therefore, total maintenance cost alone does not measure maintenance efficiency.

**Interpretation**

Maintenance Cost provides an important fleet-cost indicator and may support deeper analysis of asset-level cost patterns.

**Approval Status**

**Candidate — Requires maintenance-field and grain validation.**


#### 3.4.6.7 Maintenance Cost per Mile

---

**KPI Name**

**Maintenance Cost per Mile**

**Business Purpose**

Measures maintenance expenditure relative to the transportation distance associated with the fleet.

**Related Business Question**

> **How much maintenance expenditure is associated with each mile of fleet activity?**

**Definition**

Valid maintenance expenditure divided by compatible actual transportation distance.

**Calculation Logic**

**Maintenance Cost per Mile = Valid Maintenance Cost ÷ Compatible Actual Distance**

**Grain**

**Cross-table derived ratio**

**Source Tables**

Potentially:

- Maintenance table
- `trips`

**Critical Grain Requirement**

Maintenance transactions and trip distance must not be directly combined in a manner that duplicates either population.

The temporal and asset-level alignment must be validated.

**Time Logic**

Maintenance date and trip activity date may not represent the same operational event.

A valid aggregation period or asset-level alignment must therefore be established.

**Missing-Value Treatment**

Missing maintenance cost or distance must not automatically be converted to zero.

**Known Limitations**

Maintenance cost may not directly correspond to the same-period distance because repairs can occur independently of current-period mileage.

**Interpretation**

When appropriately aligned, this KPI can provide useful maintenance cost intensity.

**Approval Status**

**Candidate — Requires cross-grain and temporal validation.**


#### 3.4.6.8 Operational Efficiency KPI Summary

---

The initial supporting Operational Efficiency KPI set is summarized below.

| KPI | Business Purpose | Grain | Primary Source | Status |
|---|---|---|---|---|
| **Total Idle Time** | Measure total recorded idle activity | Trip | `trips` | Strong Supporting Candidate |
| **Average Idle Time per Trip** | Measure typical idle time per trip | Trip-derived ratio | `trips` | Strong Supporting Candidate |
| **Revenue per Mile** | Measure revenue intensity relative to distance | Cross-table ratio | `loads`, `trips` | Requires Validation |
| **Revenue per Trip** | Measure revenue intensity per transportation trip | Cross-table ratio | `loads`, `trips` | Requires Validation |
| **Total Accessorial Charges** | Measure additional recorded charge activity | Load | `loads` | Candidate |
| **Total Maintenance Cost** | Measure fleet maintenance expenditure | Maintenance transaction | Maintenance table | Requires Validation |
| **Maintenance Cost per Mile** | Measure maintenance cost intensity | Cross-table ratio | Maintenance, `trips` | Requires Validation |


#### 3.4.6.9 Supporting KPI Governance

---

These KPIs are classified as **supporting / diagnostic measures** rather than automatic executive KPIs.

Their primary purpose is to explain operational outcomes and support root-cause investigation.

The project will avoid KPI proliferation by promoting a supporting KPI to executive status only when it:

1. Directly supports a prioritized business question.
2. Has a clear management decision use case.
3. Has a validated business definition.
4. Has reliable source data.
5. Has an appropriate calculation grain.
6. Can be interpreted consistently across relevant dimensions.


#### 3.4.6.10 Cross-Grain KPI Control

---

Cross-table efficiency KPIs require additional control because their components may originate from different transactional grains.

The following rules apply:

- Never directly sum a load-level measure after expanding the load population through multiple trip or event records.
- Never directly sum fuel-purchase measures after joining them to trip-level records unless the relationship and aggregation strategy prevent duplication.
- Never attribute maintenance cost to trips without a validated asset/time relationship.
- Ratios must be calculated from compatible aggregated numerator and denominator populations.
- Matching row counts between tables must not be treated as proof of one-to-one relationships.


#### 3.4.6.11 Operational Efficiency KPI Validation Requirements

---

Before these KPIs can be fully approved, the following must be validated:

1. Idle-time field semantics and measurement basis.
2. Maintenance table grain and cost field.
3. Load-to-trip relationship.
4. Revenue-to-distance analytical alignment.
5. Maintenance-to-asset and maintenance-to-time alignment.
6. NULL semantics for accessorial charges.
7. Appropriate reporting dates for each supporting KPI.
8. Treatment of missing trip assignments.
9. Compatibility of numerator and denominator populations.
10. Whether each supporting KPI materially contributes to an approved business question.


#### 3.4.6.12 Stage 3.4.6 Completion Status
---

**Status: Supporting operational-efficiency KPI framework established and subsequently carried into downstream validation and BI implementation.**

The supporting KPI framework established in Stage 3.4.6 was subsequently evaluated against the validated dataset structure, analytical grain, source semantics, business-question relevance, and downstream implementation requirements.

The supporting KPIs were not treated as uniformly equivalent to the approved P1 KPI portfolio. Their downstream use remains governed by their individual analytical grain, source definition, population, and documented limitations.

No DAX implementation was performed as part of the original Stage 3.4 design activity. The subsequent BI implementation translated the approved KPI and supporting-measure specifications into the production semantic model under the Stage 4 implementation controls.

Accordingly, the original Stage 3.4.6 gate is considered complete. Any remaining limitation associated with a specific supporting KPI is treated as a documented analytical or source-semantic constraint rather than an unresolved Stage 3.4 design requirement.

## **STATUS: STAGE 3.4.6 — COMPLETE / SUPPORTING KPI FRAMEWORK GATED FOR DOWNSTREAM IMPLEMENTATION**

---

## 3.5 KPI Validation & Approval

---

This section validates the prioritized KPI definitions against the business requirements, validated dataset structure, table grain, relationships, data-quality findings, and analytical limitations established in Stages 1 and 2.

The objective is to ensure that every KPI proceeding to BI Engineering is **business-defensible, mathematically defined, grain-safe, and supported by validated source data**.

### 3.5.1 KPI Validation Principles

---

KPI validation will be performed before DAX implementation.

A KPI will only be approved when its business meaning, calculation logic, source data, grain, relationship path, time logic, and treatment of exceptions and missing values are sufficiently established.

The validation process follows:

> **Definition → Source Validation → Grain Validation → Relationship Validation → Data-Quality Validation → Calculation Validation → Business Interpretation → Approval**

#### 3.5.1.1 Definition Validation

---

Each KPI must have a single, unambiguous business definition.

Validation must confirm:

* What the KPI measures.
* What population it represents.
* What constitutes the numerator.
* What constitutes the denominator.
* What records are included.
* What records are excluded.
* What the KPI means when interpreted by a business stakeholder.

A KPI must not proceed when its business definition remains ambiguous.

#### 3.5.1.2 Source Validation

---

Every KPI must have identified source field(s) from the validated dataset.

Source validation must confirm:

* Source table.
* Source column(s).
* Column meaning.
* Data availability.
* Data completeness.
* Data type compatibility.
* Whether the field represents the intended business concept.

A technically available column is not sufficient evidence that it is appropriate for KPI calculation.

#### 3.5.1.3 Grain Validation

---

Every KPI must have an explicitly defined calculation grain.

Validation must determine:

* Source-table grain.
* KPI calculation grain.
* Aggregation level.
* Whether the KPI can be safely aggregated.
* Whether multiple transactional tables are involved.

Particular attention must be given to:

* `loads`
* `trips`
* `delivery_events`
* `fuel_purchases`
* maintenance-related transactions

No KPI will be approved if its calculation can introduce measure multiplication or duplicated populations.

#### 3.5.1.4 Relationship Validation

---

Where a KPI uses multiple tables, the relationship path must be validated before approval.

Validation must confirm:

* Primary key.
* Foreign key.
* Cardinality.
* Relationship direction.
* Uniqueness assumptions.
* Whether the relationship is analytically appropriate.

Matching column names or matching row counts must not be treated as proof of a valid relationship.

#### 3.5.1.5 Time Logic Validation

---

Each time-sensitive KPI must identify the correct business date.

Validation must establish whether the KPI should use:

* `load_date`
* `dispatch_date`
* Pickup timestamp
* Delivery timestamp
* Fuel purchase date
* Maintenance date
* Another validated operational date

The reporting date must be selected according to business meaning rather than convenience.

#### 3.5.1.6 Missing-Value Validation

---

Missing values must be evaluated according to their business meaning.

Validation must distinguish between:

* Unknown
* Not recorded
* Not applicable
* Not assigned
* Not completed

NULL values must not automatically become zero, "No," "Late," or "Inactive."

The treatment must be explicitly documented for every KPI where missing values can affect the result.

#### 3.5.1.7 Exception Validation

---

Known exceptional records must be evaluated before KPI approval.

The following Stage 2 findings require explicit consideration where relevant:

* **486 pickup → delivery timestamp reversals (0.569%)**
* **5.80% of trips missing at least one driver/truck/trailer assignment**
* **1,907 MPG precision differences (2.23%)**
* **436 truck-month utilization records above 100%**
* **3,880 fuel purchases missing `truck_id` (1.98%)**
* Supporting fuel/delivery data extending into **January 2025**

Exceptions must not be silently removed from KPI populations.

#### 3.5.1.8 Calculation Validation

---

The mathematical calculation must reproduce the approved business definition.

Validation must confirm:

* Numerator logic.
* Denominator logic.
* Aggregation method.
* Distinct-count requirements.
* Ratio calculation method.
* Treatment of invalid records.
* Treatment of missing records.

For ratio KPIs, numerator and denominator populations must be compatible.

#### 3.5.1.9 Business Interpretation Validation

---

A mathematically correct KPI may still be unsuitable for business use.

Validation must confirm:

* What higher values mean.
* What lower values mean.
* What constitutes a meaningful change.
* Which dimensions support valid comparison.
* What conclusions the KPI cannot support.

The KPI must not imply causation where the underlying data only establishes correlation or association.

#### 3.5.1.10 Approval Validation

---

A KPI is approved only when all critical validation requirements have been satisfied.

The final approval decision must classify each KPI as:

* **Approved**
* **Approved with Limitation**
* **Requires Validation**
* **Deferred**
* **Rejected**

---

### 3.5.2 KPI Validation Matrix

---

The KPI validation matrix provides the formal control record for the selected P1 KPI portfolio.

| KPI                     | Business Definition | Source                      | Grain          | Relationship               | Time Logic          | Data Quality                  | Final Status                 |
| ----------------------- | ------------------- | --------------------------- | -------------- | -------------------------- | ------------------- | ----------------------------- | ---------------------------- |
| Completed Loads         | Defined             | `loads`                     | Load           | Validated                  | `load_date`         | Strong                        | **Approved**                 |
| Completed Trips         | Defined             | `trips`                     | Trip           | Validated                  | `dispatch_date`     | Limitations documented        | **Approved with Limitation** |
| Total Revenue           | Defined             | `loads`                     | Load           | Validated                  | `load_date`         | Complete                      | **Approved**                 |
| On-Time Delivery %      | Defined             | `delivery_events`           | Delivery Event | Validated                  | Scheduled vs Actual | Source tolerance limitation   | **Approved with Limitation** |
| Fleet Utilization %     | Defined             | `truck_utilization_metrics` | Truck-month    | Truck-master validated     | Month               | 13.16% >100%                  | **Approved with Limitation** |
| Active Fleet Count      | Defined             | `trucks`                    | Truck          | Single-table               | Current status      | Historical status unavailable | **Approved with Limitation** |
| Total Fuel Consumption  | Purchased gallons in validated period | `fuel_purchases` | Fuel Purchase | Trip linkage validated | `purchase_date` | 1.98% missing `truck_id`; 8,471 completed trips without fuel purchase | **Approved with Limitation** |
| Average Fuel Efficiency | Source-defined `average_mpg` | `truck_utilization_metrics` | Truck-month | Fuel population reconciled | `month` | Source methodology not independently reproducible | **Approved with Limitation** |
| Fuel Cost               | Defined             | `fuel_purchases`            | Fuel Purchase  | Trip linkage validated     | `purchase_date`     | 1.98% missing `truck_id`      | **Approved with Limitation** |

#### 3.5.2.1 P1 KPI Validation Priority

---

P1 KPIs receive validation priority because they form the foundation of the executive analytical layer.

The validated sequence was:

1. Completed Loads
2. Completed Trips
3. Total Revenue
4. On-Time Delivery %
5. Fleet Utilization %
6. Active Fleet Count
7. Total Fuel Consumption
8. Average Fuel Efficiency
9. Fuel Cost

All nine P1 KPIs have now undergone evidence-based validation and received explicit final validation decisions.

P2 KPIs will be considered separately after the P1 validation gate.

#### 3.5.2.2 KPI Validation Evidence

---

Every validation decision is supported by evidence.

Evidence includes, where applicable:

* Stage 2 validation outputs.
* Source-table profiling.
* Relationship checks.
* Grain checks.
* Record counts.
* Distinct-key checks.
* NULL analysis.
* Date-range analysis.
* Cross-table reconciliation.
* Independent calculation checks.
* Exception analysis.
* Controlled project-run records.

Validation evidence is reproducible and traceable to the KPI validation notebook and project-run records.

#### 3.5.2.3 Independent Calculation Check

---

Where practical, KPI calculations were independently reproduced outside the final DAX implementation.

The independent calculation represents an analytical baseline and is not intended to replace source fields where the approved definition explicitly uses a source-defined metric.

The validation sequence is:

> **Business Definition → Independent Calculation/Baseline → DAX Implementation → DAX Reconciliation**

#### 3.5.2.4 KPI Reconciliation Standard

---

After DAX implementation in Stage 4, the resulting measures must reconcile with the approved validation calculations within the defined tolerance.

For exact counts and sums:

> **Expected difference = 0**

For percentages, averages, and floating-point calculations, a documented numerical tolerance may be used where rounding or floating-point precision explains the difference.

Any unexplained difference must trigger investigation.

---

### 3.5.3 KPI Approval Governance

---

KPI approval is controlled through explicit evidence rather than informal judgment.

#### 3.5.3.1 Approval Criteria

---

A KPI may be marked **Approved** when:

* Business definition is clear.
* Source fields are validated.
* Grain is validated.
* Relationships are validated where applicable.
* Time logic is validated.
* Missing-value treatment is defined.
* Exception treatment is defined.
* Calculation logic is independently validated where practical.
* Business interpretation is defensible.
* Known limitations are documented.

#### 3.5.3.2 Approved with Limitation

---

A KPI may be approved with limitation when the metric is sufficiently reliable for its intended use but has a documented analytical constraint.

Examples include:

* Incomplete asset attribution.
* Limited historical status information.
* Known timestamp anomalies.
* Source-defined methodology without independently reproducible component logic.
* Source tolerance behavior without independently established business-policy confirmation.

The limitation must be visible in the KPI dictionary and, where relevant, dashboard documentation.

#### 3.5.3.3 Requires Validation

---

A KPI remains **Requires Validation** when a critical semantic or technical question remains unresolved.

No P1 KPI remains in this state following the completed validation execution.

#### 3.5.3.4 Deferred or Rejected

---

A KPI should be **Deferred** when it is potentially useful but not necessary for the current analytical product.

A KPI should be **Rejected** when:

* Its definition cannot be defended.
* Its source data is insufficient.
* Its calculation is materially unreliable.
* It duplicates another KPI without additional decision value.
* It does not support the approved business scope.

No P1 KPI was deferred or rejected during the completed validation cycle.

---

### 3.5.4 KPI Validation Execution Plan

---

The validation process was executed in controlled stages.

#### 3.5.4.1 Step 1 — Validate P1 Definitions

---

The final business definitions of the nine P1 KPIs were reviewed against the available source structures and intended analytical use.

#### 3.5.4.2 Step 2 — Validate Source Fields

---

The exact source fields and their availability, completeness, datatype compatibility, and observed behavior were validated.

#### 3.5.4.3 Step 3 — Validate Grain & Relationships

---

KPI grains and relevant relationship paths were tested to prevent duplication and invalid cross-table aggregation.

#### 3.5.4.4 Step 4 — Validate Time Logic

---

The reporting date and analytical period were validated for each time-sensitive KPI.

The core operational analytical period is **2022-01-01 through 2024-12-31**.

#### 3.5.4.5 Step 5 — Validate Missing Values & Exceptions

---

Relevant NULL conditions, incomplete assignments, timestamp reversals, utilization anomalies, missing truck attribution, and supporting data extending beyond the core period were evaluated.

#### 3.5.4.6 Step 6 — Independently Calculate

---

Independent baselines were produced where practical.

Where a source-defined metric could not be independently reproduced from available component fields, the independent calculation was treated as validation evidence rather than as a replacement metric.

#### 3.5.4.7 Step 7 — Approve KPI

---

Each P1 KPI received an explicit final validation status based on the accumulated evidence.

#### 3.5.4.8 Step 8 — Freeze Approved Definition

---

The validated KPI definition becomes the controlled specification for Stage 4 DAX implementation.

Any later change to the business definition must be documented through KPI change control rather than silently modified inside DAX.

---

### 3.5.5 KPI Change Control

---

The KPI dictionary is treated as a controlled analytical specification.

If a KPI definition changes after approval, the change must document:

* Previous definition.
* New definition.
* Reason for change.
* Business impact.
* Affected calculations.
* Affected dashboard visuals.
* Validation impact.

DAX must never become the hidden location for undocumented KPI-definition changes.

---

### 3.5.6 Stage 3.5 Completion Criteria

---

Stage 3.5 is considered complete for the P1 KPI validation scope when:

* P1 KPI definitions have been validated.
* Required source fields have been confirmed.
* KPI grains have been confirmed.
* Required relationships have been validated.
* Time logic has been approved.
* Missing-value and exception rules have been documented.
* Independent baseline calculations have been completed where practical.
* KPI approval statuses have been recorded.
* Known limitations have been documented.
* Approved KPI definitions are frozen for Stage 4.
* Controlled validation evidence has been logged.

The nine P1 KPIs have satisfied these validation requirements and received explicit approval decisions.

---

### 3.5.7 KPI Validation Execution & Evidence

---

This section records the actual validation of the prioritized KPI definitions against the validated dataset and Stage 2 evidence.

The objective was to determine whether each P1 KPI was sufficiently supported for BI implementation and to document the analytical limitations that must remain visible after approval. The evidence below reflects the controlled validation run **20260831_193839**.

> **Evidence rule:** The final values below are not placeholders or planning assumptions. They are the validated baselines and approval decisions produced by the executed KPI validation workflow. Where a source-defined metric could not be independently reproduced, the source metric is retained and the limitation is explicitly recorded.

#### 3.5.7.1 Validation Execution Principle

---

KPI validation was evidence-driven.

Each KPI was evaluated against:

* Business definition
* Source fields
* Source-table grain
* Relationships
* Time logic
* Missing-value behavior
* Known data-quality conditions
* Independent calculation logic
* Business interpretation
* Analytical limitations

No KPI received final approval solely because its formula could be calculated technically.

#### 3.5.7.2 KPI Validation Evidence Record

---

Each KPI validation produced evidence covering the applicable validation dimensions:

| Validation Item         | Evidence Requirement                         |
| ----------------------- | -------------------------------------------- |
| Business Definition     | Approved KPI definition                      |
| Source Field(s)         | Validated source column(s)                   |
| Source Grain            | Confirmed table grain                        |
| KPI Grain               | Confirmed calculation grain                  |
| Relationship            | Validated relationship path where applicable |
| Time Logic              | Approved reporting date                      |
| Population              | Defined eligible population                  |
| Numerator               | Validated numerator logic                    |
| Denominator             | Validated denominator logic                  |
| Missing Values          | Documented treatment                         |
| Exceptions              | Documented treatment                         |
| Independent Result      | Baseline calculation where practical         |
| Business Interpretation | Approved interpretation                      |
| Limitation              | Documented limitation                        |
| Final Status            | Approval decision                            |
| Evidence Reference      | Notebook/project-run evidence                |

#### 3.5.7.3 Completed Loads Validation

---

**KPI:** Completed Loads

**Source:** `loads.csv`

**Source Table:** `loads`

**Source Grain:** One row per `load_id`

**KPI Grain:** Load

**Primary Time Logic:** `load_date`

**Business Definition:**

> Number of distinct loads with `load_status = 'Completed'`.

**Validation Objective**

Confirm that the completed-load population can be represented as a distinct load population without identifier duplication, invalid status semantics, incomplete time coverage, or calculation inconsistency.

**Validation Evidence**

| Validation Item                  |                Result | Status |
| -------------------------------- | --------------------: | ------ |
| Source rows                      |                85,410 | PASS   |
| NULL `load_id`                   |                     0 | PASS   |
| Distinct `load_id`               |                85,410 | PASS   |
| Duplicate `load_id`              |                     0 | PASS   |
| Source grain                     | One row per `load_id` | PASS   |
| NULL `load_status`               |                     0 | PASS   |
| Observed status                  |      `Completed` only | PASS   |
| Completed population             |                85,410 | PASS   |
| NULL `load_date`                 |                     0 | PASS   |
| Invalid `load_date`              |                     0 | PASS   |
| Minimum `load_date`              |            2022-01-01 | PASS   |
| Maximum `load_date`              |            2024-12-31 | PASS   |
| Independent KPI result           |                85,410 | PASS   |
| KPI reconciliation difference    |                     0 | PASS   |
| Full-row duplicate records       |                     0 | PASS   |
| Load-to-trip coverage difference |                     0 | PASS   |
| Loads with multiple trips        |                     0 | PASS   |

**Independent Calculation**

The KPI was independently calculated as:

> **DISTINCT COUNT(`load_id`) WHERE `load_status = 'Completed'`**

Independent result:

> **Completed Loads = 85,410**

The completed-row population, distinct completed `load_id` population, and independent KPI result reconciled exactly.

> **Reconciliation difference = 0**

**Exception & Edge-Case Validation**

No identifier, status, or duplicate-record exceptions affecting the KPI population were identified.

Supporting operational and financial field checks did not impose undocumented exclusions on the Completed Loads population.

**Load-to-Trip Grain Reconciliation**

The relationship between `loads.load_id` and `trips.load_id` was independently checked.

The validated populations reconcile without evidence of multiple trip records per load.

**Business Interpretation**

The KPI represents the volume of loads classified as completed within the validated operational load population.

The KPI is suitable for production analytical use.

**Limitation**

No material limitation was identified for the basic Completed Loads count within the validated 2022–2024 load population.

**Validation Decision**

**APPROVED**

**Decision Rationale**

Completed Loads satisfies the validated grain, population, time-logic, calculation, exception, and reconciliation requirements.

The independent baseline of **85,410 completed loads** reconciles exactly with the completed-row population.

**Evidence Reference**

Stage 3.5 KPI validation notebook:

`analysis/04_kpi_validation/kpi_validation.ipynb`

Controlled validation run:

`kpi_validation_run_20260831_193839.txt`

**Validation Run ID:** `20260831_193839`

---

#### 3.5.7.4 Completed Trips Validation

---

**KPI:** Completed Trips

**Source:** `trips.csv`

**Source Table:** `trips`

**Source Grain:** One row per `trip_id`

**KPI Grain:** Trip

**Primary Time Logic:** `dispatch_date`

**Business Definition:**

> Number of distinct trips with `trip_status = 'Completed'`.

**Validation Objective**

Confirm that completed trips represent a distinct trip population and can be counted without transactional duplication.

**Validation Evidence**

| Validation Item                             |           Result | Status     |
| ------------------------------------------- | ---------------: | ---------- |
| Source rows                                 |           85,410 | PASS       |
| NULL `trip_id`                              |                0 | PASS       |
| Distinct `trip_id`                          |           85,410 | PASS       |
| Duplicate `trip_id`                         |                0 | PASS       |
| NULL `trip_status`                          |                0 | PASS       |
| Observed status                             | `Completed` only | PASS       |
| Completed population                        |           85,410 | PASS       |
| NULL `load_id`                              |                0 | PASS       |
| Minimum `dispatch_date`                     |       2022-01-01 | PASS       |
| Maximum `dispatch_date`                     |       2024-12-31 | PASS       |
| Independent KPI result                      |           85,410 | PASS       |
| KPI reconciliation difference               |                0 | PASS       |
| Load relationship difference                |                0 | PASS       |
| Missing any driver/truck/trailer assignment |            4,952 | LIMITATION |
| Missing any assignment                      |            5.80% | LIMITATION |
| Pickup/delivery pairs                       |           85,410 | PASS       |
| Delivery before pickup                      |              486 | LIMITATION |
| Reversal percentage                         |           0.569% | LIMITATION |

**Independent Calculation**

> **DISTINCT COUNT(`trip_id`) WHERE `trip_status = 'Completed'`**

Independent result:

> **Completed Trips = 85,410**

> **Reconciliation difference = 0**

**Exception Validation**

Two relevant limitations were retained rather than silently excluding affected records:

1. **4,952 completed trips (5.80%)** lack at least one driver, truck, or trailer assignment.
2. **486 completed trips (0.569%)** contain a Delivery `actual_datetime` earlier than Pickup `actual_datetime`.

These exceptions affect dimensional attribution and chronology-dependent analysis but do not invalidate the total completed-trip count.

**Business Interpretation**

The KPI represents the total volume of trips classified as completed.

It is reliable for overall trip-volume analysis.

**Limitation**

Driver/truck/trailer attribution is incomplete for 5.80% of completed trips.

In addition, 486 completed trips contain pickup/delivery timestamp reversals.

**Validation Decision**

**APPROVED WITH LIMITATION**

**Decision Rationale**

Completed Trips satisfies the validated trip grain, population, dispatch-date coverage, trip-to-load relationship, calculation, identifier, and duplicate-record requirements.

The independent KPI calculation produces **85,410 completed trips** with zero reconciliation difference.

The KPI is reliable for total trip-volume analysis, while driver/truck/trailer attribution and analyses relying on pickup-to-delivery chronology must account for the documented limitations.

**Evidence Reference**

Stage 3.5 KPI validation notebook:

`analysis/04_kpi_validation/kpi_validation.ipynb`

Controlled validation run:

`kpi_validation_run_20260831_193839.txt`

**Validation Run ID:** `20260831_193839`

---

#### 3.5.7.5 Total Revenue Validation

---

**KPI:** Total Revenue

**Source:** `loads.csv`

**Source Table:** `loads`

**Source Grain:** One row per `load_id`

**KPI Grain:** Load

**Source Field:** `revenue`

**Primary Time Logic:** `load_date`

**Business Definition:**

> Sum of revenue for completed loads within the validated 2022–2024 operational population.

**Validation Objective**

Confirm that revenue is recorded at a compatible load-level grain, is complete for the completed-load population, and can be independently aggregated without duplication.

**Validation Evidence**

| Validation Item                     |         Result | Status |
| ----------------------------------- | -------------: | ------ |
| Source rows                         |         85,410 | PASS   |
| Completed population                |         85,410 | PASS   |
| Revenue-bearing population          |         85,410 | PASS   |
| NULL `revenue`                      |              0 | PASS   |
| NULL `load_date`                    |              0 | PASS   |
| Invalid `load_date`                 |              0 | PASS   |
| Minimum `load_date`                 |     2022-01-01 | PASS   |
| Maximum `load_date`                 |     2024-12-31 | PASS   |
| Negative revenue                    |              0 | PASS   |
| Zero revenue                        |              0 | PASS   |
| Full-row duplicate records          |              0 | PASS   |
| Duplicate `load_id` records         |              0 | PASS   |
| Loads with >1 completed trip        |              0 | PASS   |
| Independent KPI result              | 262,525,800.29 | PASS   |
| Revenue ↔ completed-load difference |              0 | PASS   |
| Revenue ↔ trip-load difference      |              0 | PASS   |

**Independent Calculation**

The independent baseline was calculated as the sum of `revenue` across the validated completed-load population.

> **Total Revenue = 262,525,800.29**

The independent calculation reconciled exactly with the validated population.

> **Reconciliation difference = 0**

**Exception Validation**

No negative revenue, zero revenue, NULL revenue, duplicate load identifiers, or multi-trip load exceptions were identified.

**Business Interpretation**

The KPI represents the total recorded revenue associated with the validated completed-load population during the 2022–2024 analytical period.

**Limitation**

No material limitation was identified for the basic Total Revenue calculation within the validated population.

**Validation Decision**

**APPROVED**

**Decision Rationale**

Total Revenue satisfies the validated load grain, revenue completeness, completed-load population, time-logic, exception, duplicate-record, and load-to-trip reconciliation requirements.

The independent calculation produces **262,525,800.29** with zero population reconciliation difference.

**Evidence Reference**

Stage 3.5 KPI validation notebook:

`analysis/04_kpi_validation/kpi_validation.ipynb`

Controlled validation run:

`kpi_validation_run_20260831_193839.txt`

**Validation Run ID:** `20260831_193839`

---

#### 3.5.7.6 On-Time Delivery % Validation

---

**KPI:** On-Time Delivery %

**Source:** `delivery_events.csv`

**Source Table:** `delivery_events`

**Source Grain:** One row per delivery event

**KPI Grain:** Delivery Event

**Event Type:** Delivery

**Primary Time Logic:** `scheduled_datetime` versus `actual_datetime`

**Business Definition:**

> Percentage of Delivery events classified as On-Time using the validated source `on_time_flag`.

**Validation Objective**

Establish whether the delivery-event population and source on-time classification can be reliably reproduced and whether the observed classification rule has a documented business interpretation.

**Validation Evidence**

| Validation Item                        |  Result | Status |
| -------------------------------------- | ------: | ------ |
| Source rows                            | 170,820 | PASS   |
| Delivery population                    |  85,410 | PASS   |
| NULL `event_type`                      |       0 | PASS   |
| NULL `trip_id`                         |       0 | PASS   |
| NULL `load_id`                         |       0 | PASS   |
| NULL `scheduled_datetime`              |       0 | PASS   |
| NULL `actual_datetime`                 |       0 | PASS   |
| NULL `on_time_flag`                    |       0 | PASS   |
| Invalid scheduled timestamps           |       0 | PASS   |
| Invalid actual timestamps              |       0 | PASS   |
| Source On-Time Deliveries              |  38,102 | PASS   |
| Source Late Deliveries                 |  47,308 | PASS   |
| Source On-Time Delivery %              |  44.61% | PASS   |
| Independent source-flag reconciliation |  85,410 | PASS   |
| Flag mismatches                        |       0 | PASS   |

**Independent Calculation**

Independent testing established that the source `on_time_flag` is reproduced exactly using the observed **±120-minute timestamp rule**.

> **Independent baseline = 44.61%**

All **85,410** delivery records matched the source classification.

> **Reconciliation difference = 0**

**Critical Interpretation**

The source `on_time_flag` is not equivalent to strict:

> `actual_datetime <= scheduled_datetime`

The observed source behavior allows a ±120-minute tolerance.

The validation establishes the technical behavior of the source field but does not independently establish that the ±120-minute tolerance represents a formally approved business policy.

**Business Interpretation**

The KPI represents the percentage of delivery events classified as On-Time according to the source-defined `on_time_flag`.

**Limitation**

The underlying ±120-minute tolerance is technically reproducible but is not independently established as a business-approved delivery tolerance from the supplied documentation.

**Validation Decision**

**APPROVED WITH LIMITATION**

**Decision Rationale**

On-Time Delivery % satisfies the validated delivery-event grain, event-type population, identifier completeness, timestamp completeness, and calculation requirements.

The source contains **38,102 On-Time** and **47,308 Late** delivery events, producing an On-Time Delivery rate of **44.61%**.

Independent testing reproduces the source classification exactly.

The KPI is therefore technically reproducible, while the documented business-definition limitation must remain visible in downstream analytical documentation.

**Evidence Reference**

Stage 3.5 KPI validation notebook:

`analysis/04_kpi_validation/kpi_validation.ipynb`

Controlled validation run:

`kpi_validation_run_20260831_193839.txt`

**Validation Run ID:** `20260831_193839`

---

#### 3.5.7.7 Fleet Utilization % Validation

---

**KPI:** Fleet Utilization %

**Source:** `truck_utilization_metrics.csv`

**Source Table:** `truck_utilization_metrics`

**Source Grain:** One row per truck-month

**KPI Grain:** Truck-Month

**Primary Time Logic:** `month`

**Business Definition:**

> Fleet utilization based on the source-defined `utilization_rate` metric at the truck-month grain.

**Validation Objective**

Confirm that the utilization population, grain, completeness, truck-master integrity, and observed metric behavior are reliable for analytical use.

**Validation Evidence**

| Validation Item              |   Result | Status     |
| ---------------------------- | -------: | ---------- |
| Source rows                  |    3,312 | PASS       |
| Distinct trucks              |       92 | PASS       |
| Distinct months              |       36 | PASS       |
| Distinct truck-month keys    |    3,312 | PASS       |
| Duplicate truck-month rows   |        0 | PASS       |
| NULL `utilization_rate`      |        0 | PASS       |
| Minimum utilization rate     | 0.387000 | PASS       |
| Maximum utilization rate     | 1.484000 | PASS       |
| Mean utilization rate        | 0.830447 | PASS       |
| Records >100%                |      436 | LIMITATION |
| Percentage >100%             |   13.16% | LIMITATION |
| Component-field NULL values  |        0 | PASS       |
| Orphan utilization truck IDs |        0 | PASS       |

**Independent Methodology Validation**

The available component fields did not establish a reproducible formula for the source `utilization_rate`.

The validation therefore treats `utilization_rate` as a **source-defined metric** rather than replacing it with an independently inferred formula.

**Exception Validation**

A total of **436 truck-month records (13.16%)** exceed the conventional 100% boundary.

The maximum observed value is **148.40%**.

These values were retained as observed source values.

They were not capped, transformed, or silently excluded.

**Important Analytical Rule**

Strong correlation between utilization and operational activity does not establish the source utilization calculation formula.

**Business Interpretation**

The KPI represents the source-defined fleet utilization rate at the truck-month grain.

Values above 100% must be interpreted according to the source metric's business methodology.

**Limitation**

The supplied dataset does not provide an explicitly documented utilization formula that can be independently reproduced.

In addition, 13.16% of truck-month observations exceed 100%.

**Validation Decision**

**APPROVED WITH LIMITATION**

**Decision Rationale**

Fleet Utilization % satisfies the validated truck-month grain, identifier integrity, time coverage, field completeness, range validation, and truck-master reconciliation requirements.

The `utilization_rate` field is complete across **3,312 unique truck-month records**, with no NULL values, duplicate truck-month keys, or orphan truck IDs.

Independent testing did not establish a reproducible utilization formula from the available component fields.

The KPI is therefore approved as a source-defined metric, with the documented methodology limitation and explicit retention of values above 100%.

**Evidence Reference**

Stage 3.5 KPI validation notebook:

`analysis/04_kpi_validation/kpi_validation.ipynb`

Controlled validation run:

`kpi_validation_run_20260831_193839.txt`

**Validation Run ID:** `20260831_193839`

---

#### 3.5.7.8 Active Fleet Count Validation

---

**KPI:** Active Fleet Count

**Source:** `trucks.csv`

**Source Table:** `trucks`

**Source Grain:** One row per `truck_id`

**KPI Grain:** Truck

**Business Definition:**

> Count of distinct trucks with `status = 'Active'` in the current truck master.

**Primary Time Logic:**

Current truck-master status.

**Validation Objective**

Determine whether the current Active status can support a defensible fleet-count KPI and whether historical Active/Inactive/Maintenance status can be reconstructed.

**Validation Evidence**

| Validation Item                                   | Result | Status     |
| ------------------------------------------------- | -----: | ---------- |
| Total trucks                                      |    120 | PASS       |
| Active trucks                                     |     92 | PASS       |
| Maintenance trucks                                |     15 | PASS       |
| Inactive trucks                                   |     13 | PASS       |
| NULL `truck_id`                                   |      0 | PASS       |
| NULL status                                       |      0 | PASS       |
| Duplicate `truck_id`                              |      0 | PASS       |
| Current Active trucks with trip activity          |     92 | PASS       |
| Current Active trucks without trip activity       |      0 | PASS       |
| Current Active trucks with utilization records    |     92 | PASS       |
| Current Active trucks without utilization records |      0 | PASS       |
| Explicit historical status-transition fields      |      0 | LIMITATION |
| Source Active population                          |     92 | PASS       |
| Independent Active population                     |     92 | PASS       |
| Reconciliation difference                         |      0 | PASS       |

**Independent Calculation**

> **DISTINCT COUNT(`truck_id`) WHERE `status = 'Active'`**

Independent result:

> **Active Fleet Count = 92**

> **Reconciliation difference = 0**

**Historical Status Validation**

No explicit historical truck status-transition field is available in the supplied truck master.

Therefore, historical Active/Inactive/Maintenance status transitions cannot be independently reconstructed.

**Business Interpretation**

The KPI represents the **current Active Fleet population** according to the truck master.

It must not be interpreted as a historically reconstructed monthly Active Fleet Count.

**Limitation**

Historical fleet-status transitions cannot be independently reconstructed from the supplied source fields.

**Validation Decision**

**APPROVED WITH LIMITATION**

**Decision Rationale**

Active Fleet Count satisfies the validated truck grain, identifier integrity, status completeness, historical activity, utilization coverage, calculation, and source-to-independent reconciliation requirements.

The independent calculation produces **92 distinct Active trucks** with zero reconciliation difference.

The KPI is reliable for current Active Fleet population analysis.

Historical fleet-status transitions remain a documented limitation and are not reconstructed from operational activity.

**Evidence Reference**

Stage 3.5 KPI validation notebook:

`analysis/04_kpi_validation/kpi_validation.ipynb`

Controlled validation run:

`kpi_validation_run_20260831_193839.txt`

**Validation Run ID:** `20260831_193839`

---

#### 3.5.7.9 Total Fuel Consumption Validation

---

**KPI:** Total Fuel Consumption

**Source:** `fuel_purchases.csv`

**Source Table:** `fuel_purchases`

**Source Grain:** One row per fuel purchase

**KPI Grain:** Fuel Purchase

**Primary Time Logic:** `purchase_date`

**Business Definition:**

> Total gallons purchased within the validated 2022–2024 `purchase_date` analytical period.

**Validation Objective**

Confirm that the fuel-purchase population and `gallons` field support a reliable overall fuel-volume KPI without conflating fuel purchases with trip-level operational fuel consumption.

**Validation Evidence**

| Validation Item                       |        Result | Status     |
| ------------------------------------- | ------------: | ---------- |
| Total source fuel records             |       196,442 | PASS       |
| Records within 2022–2024              |       196,241 | PASS       |
| Records outside 2022–2024             |           201 | PASS       |
| Distinct validated `fuel_purchase_id` |       196,241 | PASS       |
| Total source fuel gallons             | 24,519,037.80 | PASS       |
| Validated 2022–2024 gallons           | 24,493,560.80 | PASS       |
| NULL `fuel_purchase_id`               |             0 | PASS       |
| Duplicate `fuel_purchase_id`          |             0 | PASS       |
| NULL `trip_id`                        |             0 | PASS       |
| Missing `truck_id`                    |         3,880 | LIMITATION |
| Missing `truck_id` percentage         |         1.98% | LIMITATION |
| Completed trips without fuel purchase |         8,471 | LIMITATION |

**Independent Calculation**

The independent baseline was calculated as:

> **SUM(`gallons`) WHERE `purchase_date` falls within 2022–2024**

Independent result:

> **Total Fuel Consumption = 24,493,560.80 gallons**

> **Reconciliation difference = 0.00 gallons**

**Critical Business Distinction**

Fuel-purchase volume represents purchased fuel.

It must not automatically be interpreted as the same business concept as trip-level operational fuel consumption.

The validated KPI is therefore explicitly defined as **fuel purchased**, not inferred fuel burned during trips.

**Exception Validation**

A total of **3,880 fuel purchase records (1.98%)** contain missing `truck_id`.

This limits truck-level attribution but does not prevent calculation of the overall fuel-volume KPI.

Additionally, **8,471 completed trips have no corresponding fuel purchase record**.

This does not invalidate the KPI because its population is defined by fuel purchases rather than by all completed trips.

**Business Interpretation**

The KPI represents the total gallons of fuel purchased during the validated 2022–2024 analytical period.

**Limitation**

Truck-level fuel attribution is incomplete for 1.98% of fuel-purchase records.

**Validation Decision**

**APPROVED WITH LIMITATION**

**Decision Rationale**

Total Fuel Consumption satisfies the validated fuel-purchase grain, identifier integrity, fuel-volume completeness, purchase-date coverage, completed-trip linkage, transaction consistency, and calculation requirements.

The independent KPI calculation produces **24,493,560.80 gallons** for the validated 2022–2024 period and reconciles exactly with the source-defined population.

The KPI is reliable for overall fuel-volume analysis, while truck-level attribution must retain the documented limitation.

**Evidence Reference**

Stage 3.5 KPI validation notebook:

`analysis/04_kpi_validation/kpi_validation.ipynb`

Controlled validation run:

`kpi_validation_run_20260831_193839.txt`

**Validation Run ID:** `20260831_193839`

---

#### 3.5.7.10 Average Fuel Efficiency Validation

---

**KPI:** Average Fuel Efficiency

**Source:** `truck_utilization_metrics.csv`

**Source Table:** `truck_utilization_metrics`

**Source Grain:** One row per truck-month

**KPI Grain:** Truck-Month

**Primary Time Logic:** `month`

**Business Definition:**

> Source-defined `average_mpg` value at the truck-month grain.

**Validation Objective**

Determine whether the supplied `average_mpg` metric can be independently reproduced from the available fuel and distance components and establish the appropriate analytical treatment where it cannot.

**Validated Population**

| Validation Item            |    Result |
| -------------------------- | --------: |
| Truck-month records        |     3,312 |
| Distinct trucks            |        92 |
| Distinct valid months      |        36 |
| Distinct truck-month keys  |     3,312 |
| Duplicate truck-month rows |         0 |
| NULL `average_mpg`         |         0 |
| Minimum `average_mpg`      |    6.0100 |
| Maximum `average_mpg`      |    6.8600 |
| Mean `average_mpg`         |    6.5010 |
| Median `average_mpg`       |    6.5000 |
| Analytical period          | 2022–2024 |

**Time Coverage Validation**

The source contains valid monthly coverage from:

> **2022-01-01 through 2024-12-01**

with **36 distinct months** and **3,312 valid truck-month records**.

All expected truck-month populations were represented.

**Independent Methodology Validation**

The candidate relationship tested was:

> **total_miles / fuel_gallons**

All **3,312 truck-month records** were evaluated.

| Metric                          |     Result |
| ------------------------------- | ---------: |
| Source `average_mpg` mean       | 6.5010 MPG |
| Independent calculated MPG mean | 5.0957 MPG |
| Mean absolute difference        | 1.5103 MPG |
| Median absolute difference      | 1.4951 MPG |
| Matches within 0.01 MPG         |          5 |
| Matches within 0.05 MPG         |         34 |
| Matches within 0.10 MPG         |         71 |
| Match rate within 0.01 MPG      |      0.15% |

The candidate calculation therefore does **not sufficiently reproduce** the source `average_mpg` metric.

**Reconciliation Interpretation**

The independent calculation was performed as validation evidence only.

The source values were not modified, capped, replaced, or recalculated for the purpose of the approved KPI.

**Business Interpretation**

Average Fuel Efficiency represents the source-defined `average_mpg` value at the truck-month grain.

It should therefore be treated as a source-defined analytical metric rather than as an independently reconstructed MPG formula.

**Limitation**

The supplied source data does not provide an explicit documented formula for `average_mpg`.

The tested `total_miles / fuel_gallons` relationship does not sufficiently reproduce the source metric.

**Validation Decision**

**APPROVED WITH LIMITATION**

**Decision Rationale**

Average Fuel Efficiency satisfies the validated truck-month grain, identifier integrity, time coverage, field completeness, and source-metric range requirements.

The `average_mpg` field is complete across **3,312 unique truck-month records**, with no NULL, zero, or negative values.

All source truck-month records have corresponding fuel truck-month populations for independent methodology testing.

However, the tested `total_miles / fuel_gallons` relationship does not sufficiently reproduce the source metric.

Therefore, the KPI is approved for analytical use as a **source-defined metric**, with the documented limitation that its underlying methodology is not independently established from the supplied component fields.

The source `average_mpg` values must not be replaced by the independent calculation.

**Evidence Reference**

Stage 3.5 KPI validation notebook:

`analysis/04_kpi_validation/kpi_validation.ipynb`

Controlled validation run:

`kpi_validation_run_20260831_193839.txt`

**Validation Run ID:** `20260831_193839`

---

#### 3.5.7.11 Fuel Cost Validation

---

**KPI:** Fuel Cost

**Source:** `fuel_purchases.csv`

**Source Table:** `fuel_purchases`

**Source Grain:** One row per fuel purchase

**KPI Grain:** Fuel Purchase

**Primary Time Logic:** `purchase_date`

**Business Definition:**

> Total fuel cost incurred within the validated 2022–2024 `purchase_date` analytical period.

**Validation Objective**

Confirm that `total_cost` represents a reliable fuel-purchase expenditure measure and can be independently calculated and reconciled for the validated analytical period.

**Source Field Validation**

| Validation Item       |       Result |
| --------------------- | -----------: |
| Source rows           |      196,442 |
| Source field          | `total_cost` |
| Data type             |    `float64` |
| Non-NULL `total_cost` |      196,442 |
| NULL `total_cost`     |            0 |
| Minimum `total_cost`  |     158.5000 |
| Maximum `total_cost`  |     997.9000 |
| Mean `total_cost`     |     486.6220 |
| Median `total_cost`   |     480.6600 |
| Negative `total_cost` |            0 |
| Zero `total_cost`     |            0 |
| Positive `total_cost` |      196,442 |

**Time & Population Validation**

The validated analytical period is:

> **2022-01-01 through 2024-12-31**

The source contains 201 fuel purchase records outside this analytical period.

| Population                    |        Result |
| ----------------------------- | ------------: |
| Total source fuel records     |       196,442 |
| Records within 2022–2024      |       196,241 |
| Records outside 2022–2024     |           201 |
| Total source fuel cost        | 95,592,992.04 |
| Validated 2022–2024 fuel cost | 95,499,723.14 |
| Fuel cost outside period      |     93,268.90 |

The 2025 records are excluded through explicit analytical-period control rather than by modifying the source data.

**Transaction Cost Consistency**

`total_cost` was independently reconstructed against:

> **gallons × price_per_gallon**

All **196,442** source transactions reconciled within the **$0.01 tolerance**.

| Validation Item          |   Result |
| ------------------------ | -------: |
| Records evaluated        |  196,442 |
| Matches within $0.01     |  196,442 |
| Mismatches > $0.01       |        0 |
| Match percentage         |  100.00% |
| Mean absolute difference | 0.002470 |

The transaction-level cost calculation is therefore internally consistent.

**Independent KPI Calculation**

The independent KPI baseline for the validated period is:

> **Fuel Cost = 95,499,723.14**

Population:

> **196,241 fuel purchase records**

Distinct `fuel_purchase_id`:

> **196,241**

**Source-to-Independent Reconciliation**

| Reconciliation Item           |        Result |
| ----------------------------- | ------------: |
| Source KPI records            |       196,241 |
| Independent KPI records       |       196,241 |
| Record-count difference       |             0 |
| `fuel_purchase_id` difference |             0 |
| Source fuel cost              | 95,499,723.14 |
| Independent fuel cost         | 95,499,723.14 |
| Fuel-cost difference          |          0.00 |
| Source-only IDs               |             0 |
| Independent-only IDs          |             0 |

The source and independent KPI populations reconcile exactly.

**Attribution Limitation**

**3,880 fuel purchase records (1.98%)** contain missing `truck_id`.

This limits truck-level Fuel Cost attribution but does not prevent calculation of the overall Fuel Cost KPI.

**Business Interpretation**

The KPI represents the total recorded fuel-purchase expenditure during the validated 2022–2024 analytical period.

**Limitation**

The overall KPI is reliable, but truck-level Fuel Cost analysis must account for the 1.98% of fuel-purchase records without `truck_id`.

**Validation Decision**

**APPROVED WITH LIMITATION**

**Decision Rationale**

Fuel Cost satisfies the validated fuel-purchase grain, identifier integrity, cost completeness, purchase-date coverage, completed-trip linkage, transaction cost consistency, independent calculation, and source-to-independent reconciliation requirements.

The independent KPI calculation produces **95,499,723.14** for the validated 2022–2024 `purchase_date` period and reconciles exactly with the source-defined KPI population.

All fuel purchase records contain valid positive `total_cost` values, and `total_cost` reconciles to `gallons × price_per_gallon` within the $0.01 tolerance.

The KPI is therefore reliable for overall Fuel Cost analysis.

The documented missing `truck_id` values remain a limitation for truck-level Fuel Cost attribution and must be retained in the final analytical documentation.

**Evidence Reference**

Stage 3.5 KPI validation notebook:

`analysis/04_kpi_validation/kpi_validation.ipynb`

Controlled validation run:

`kpi_validation_run_20260831_193839.txt`

**Validation Run ID:** `20260831_193839`

---

#### 3.5.7.12 P1 KPI Validation Decision Matrix

---

The final evidence-based status of the primary KPI portfolio is:

|  # | KPI                     | Validation Status            |         Independent Baseline | Primary Limitation / Note                                                     |
| -: | ----------------------- | ---------------------------- | ---------------------------: | ----------------------------------------------------------------------------- |
|  1 | Completed Loads         | **Approved**                 |                       85,410 | No material limitation                                                        |
|  2 | Completed Trips         | **Approved with Limitation** |                       85,410 | 5.80% incomplete asset assignment; 486 timestamp reversals                    |
|  3 | Total Revenue           | **Approved**                 |               262,525,800.29 | No material limitation                                                        |
|  4 | On-Time Delivery %      | **Approved with Limitation** |                       44.61% | Source ±120-minute tolerance not independently established as business policy |
|  5 | Fleet Utilization %     | **Approved with Limitation** |        Source-defined metric | Methodology not independently reproducible; 13.16% >100%                      |
|  6 | Active Fleet Count      | **Approved with Limitation** |                           92 | Historical status transitions unavailable                                     |
|  7 | Total Fuel Consumption  | **Approved with Limitation** |        24,493,560.80 gallons | 1.98% missing `truck_id`; 8,471 completed trips without fuel purchase         |
|  8 | Average Fuel Efficiency | **Approved with Limitation** | Source-defined `average_mpg` | Source methodology not independently reproducible                             |
|  9 | Fuel Cost               | **Approved with Limitation** |                95,499,723.14 | 1.98% missing `truck_id` limits truck-level attribution                       |

**Final P1 Portfolio Status**

* **Approved:** 2
* **Approved with Limitation:** 7
* **Requires Validation:** 0
* **Deferred:** 0
* **Rejected:** 0

Therefore, **all nine P1 KPIs have received explicit validation decisions**.

The approved KPI definitions and documented limitations form the controlled specification for Stage 4 BI Engineering.

---

#### 3.5.7.13 KPI Validation Evidence Standard

---

The validation process produced reproducible evidence rather than relying on visual inspection alone.

Evidence includes, where applicable:

* Record counts
* Distinct-key counts
* NULL counts
* Value distributions
* Cross-table reconciliation
* Independent calculations
* Exception counts
* Percentage calculations
* Date-range checks
* Grain checks
* Controlled run records

Each result is traceable to the KPI being validated.

##### 3.5.7.13.1 Independent Calculation Rule

---

Independent calculations were performed outside the final Power BI DAX implementation where practical.

The independent calculation represents the **analytical baseline**.

Power BI measures were subsequently reconciled against these approved baselines.

This creates a controlled sequence:

> **Business Definition → Independent Baseline → DAX Measure → Reconciliation → Approved Implementation**

Where a KPI is explicitly source-defined and its underlying formula cannot be independently reproduced, the source metric remains the approved KPI and the reproducibility limitation is documented.

##### 3.5.7.13.2 Reconciliation Tolerance

---

A reconciliation tolerance is established according to KPI type.

For exact counts and sums:

> **Expected difference = 0**

For percentages, averages, and floating-point calculations:

> A documented numerical tolerance may be used where rounding or floating-point precision explains the difference.

For source-defined metrics where no independent mathematical baseline can be established, reconciliation is recorded as **N/A**, and the reproducibility limitation becomes part of the approval decision.

Any unexplained difference requires investigation before final KPI approval.

---

#### 3.5.7.14 KPI Approval Decision Rules

---

The following rules govern final KPI approval.

**Approve**

Use when the KPI is fully defined, validated, reproducible, and business-defensible.

**Approve with Limitation**

Use when the KPI is reliable for its intended purpose but has a documented limitation that does not materially invalidate the intended interpretation.

**Requires Validation**

Use when a critical semantic, grain, relationship, or calculation question remains unresolved.

**Deferred**

Use when the KPI is useful but not required for the current analytical product.

**Rejected**

Use when the KPI cannot be reliably or defensibly calculated.

Based on the completed P1 validation cycle, no P1 KPI remains in **Requires Validation**, **Deferred**, or **Rejected** status.

---

#### 3.5.7.15 KPI Validation Evidence Log

---

The project maintains controlled validation records containing:

| Field              | Description                       |
| ------------------ | --------------------------------- |
| KPI Name           | Controlled KPI name               |
| Validation Date    | Date of validation                |
| Validator          | Analyst / project owner           |
| Source Table       | Validated source                  |
| Source Field(s)    | Validated fields                  |
| Grain              | Confirmed calculation grain       |
| Business Rule      | Approved definition               |
| Validation Check   | Test performed                    |
| Expected Result    | Expected outcome                  |
| Actual Result      | Observed outcome                  |
| Difference         | Reconciliation difference         |
| Exception Count    | Relevant exceptions               |
| Limitation         | Known limitation                  |
| Decision           | Approval status                   |
| Evidence Reference | Supporting notebook/output        |
| Run ID             | Controlled project validation run |

The controlled project-run records use the global Stage 3.5 validation run identifier:

`20260831_193839`

The run records are stored under:

`logs/project_runs/`

The validation notebook remains:

`analysis/04_kpi_validation/kpi_validation.ipynb`

---

#### 3.5.7.16 Stage 3.5 Validation Gate

---

Stage 3.5 P1 validation is considered passed because:

* All nine P1 KPI definitions have been validated.
* Required source fields have been confirmed.
* KPI grains have been confirmed.
* Relevant relationships have been validated.
* Time logic has been established.
* Missing-value treatment has been documented.
* Known exceptions have been evaluated.
* Independent baselines have been produced where practical.
* Source-defined methodology limitations have been explicitly documented.
* Each P1 KPI has received an explicit final approval decision.
* Controlled validation evidence has been logged.
* Approved KPI definitions are ready to be frozen for BI Engineering.

The required transition is:

> **KPI Design → KPI Validation → KPI Approval → KPI Freeze → BI Engineering**

**P1 KPI Validation Gate: PASSED**

Production DAX may proceed in Stage 4 only against the approved KPI definitions documented in this section.

Any subsequent business-definition change must pass through KPI change control.

---

### 3.5.8 Stage 3.5 Completion Status
---

**Status: P1 KPI validation execution and evidence-based approval completed.**

All nine P1 KPIs were validated and assigned final approval decisions.

Final portfolio:

| Status                   | KPI Count |
| ------------------------ | --------: |
| Approved                 |         2 |
| Approved with Limitation |         7 |
| Requires Validation      |         0 |
| Deferred                 |         0 |
| Rejected                 |         0 |

The documented limitations are considered controlled analytical constraints rather than blockers to the approved KPI use cases.

The validated P1 KPI definitions subsequently served as the controlled business specification for downstream BI Engineering and KPI implementation.

The downstream implementation retained the approved KPI definitions, documented analytical limitations, population rules, and grain controls rather than introducing independent dashboard interpretations.

The implementation and reconciliation workflow subsequently confirmed traceability between the approved P1 definitions and the production measures. Where a KPI retained source or analytical limitations, those limitations remained documented rather than being removed through unsupported model or DAX changes.

**Stage 3.5 P1 Validation Gate: PASSED**

Stage 3.5 is therefore considered **complete as a validation and approval gate**. Its approved KPI specification was subsequently carried forward into BI Engineering and downstream reconciliation/QA.

## **STATUS: STAGE 3.5 — COMPLETE / VALIDATED / APPROVED FOR DOWNSTREAM IMPLEMENTATION**

---

## 3.6 Diagnostic / Investigation Design

---

Stage 3.6 converts the approved KPI definitions and validated business requirements into a structured diagnostic-analysis framework. The purpose is to determine **what should be investigated, why it should be investigated, how the investigation will be performed, and what evidence is required before a business conclusion is made**.

Stage 3.6 does not yet build the Power BI dashboard or finalize visual design. It establishes the analytical scope and investigation logic that will later guide Stage 3.7, Stage 3.8, and ultimately Stage 4 BI Engineering.

The analytical approach follows the controlled sequence:

> **Business Question → Objective → Investigation / Validation → Diagnostic Analysis → Finding → Final Business Analysis → Business Insight → Decision / Recommendation**

The scope defined below is based on the validated dataset, Stage 2 findings, and the approved P1 KPI portfolio from Stage 3.5.

---

### 3.6.1 Analytical Scope

---

#### 3.6.1.1 Purpose

The purpose of the analytical scope is to establish the boundaries within which the Logistics Operations BI analysis will be performed.

The scope defines:

* the operational areas to be investigated;
* the analytical period;
* the primary analytical grains;
* the approved KPI population;
* the supporting data domains;
* the types of comparisons and diagnostics that are permitted;
* known limitations that must remain attached to the analysis; and
* analytical areas that should not be claimed because the available evidence does not support them.

This prevents the project from becoming a collection of unrelated metrics or visuals and ensures that subsequent analysis remains connected to the original business problem.

---

#### 3.6.1.2 Overall Analytical Objective

The overall analytical objective is to evaluate logistics operational performance across **shipment execution, delivery reliability, fleet utilization, fleet availability, fuel usage, fuel efficiency, fuel cost, and revenue performance**, and to identify evidence-supported operational patterns that can inform management decisions.

The analysis should answer questions such as:

* How effectively are loads and trips being executed?
* How reliable is delivery performance?
* Where are delivery-performance differences concentrated?
* How effectively is available fleet capacity being utilized?
* What patterns exist in fuel usage and fuel cost?
* How does fuel efficiency vary across the available truck-month observations?
* Where do operational exceptions or performance gaps require investigation?
* Which observed patterns are sufficiently supported to become business findings?
* What operational decisions could reasonably be supported by those findings?

The analysis must distinguish between **descriptive evidence**, **diagnostic evidence**, and **business conclusions**.

A KPI value alone is not automatically a business insight.

---

#### 3.6.1.3 Core Analytical Period

The primary analytical period is:

> **1 January 2022 → 31 December 2024**

This is the controlled core operational period established during validation.

Supporting datasets contain a limited number of records extending into January 2025. These records must not be silently combined with the core 2022–2024 reporting population.

Examples identified during validation include:

* fuel purchases extending to January 2025;
* delivery scheduled timestamps extending into January 2025; and
* delivery actual timestamps extending into January 2025.

The validated P1 KPI populations already apply the appropriate period controls where required.

Therefore:

> **2022–2024 is the default analytical reporting period unless a later analysis explicitly defines and justifies another period.**

No analytical conclusion should mix January 2025 supporting records into the core operational period without an explicit analytical reason and documented treatment.

---

#### 3.6.1.4 Business Domains Within Scope

The analytical scope covers the following operational domains.

##### 3.6.1.4.1 Load & Shipment Execution

Analysis of completed load activity, including:

* completed load volume;
* temporal patterns in completed loads;
* load-level revenue;
* relationships between shipment activity and other operational dimensions where supported.

The primary load population contains **85,410 completed loads**.

---

##### 3.6.1.4.2 Trip Execution

Analysis of completed trip activity, including:

* completed trip volume;
* trip execution patterns;
* asset assignment completeness;
* operational characteristics associated with trip execution;
* investigation of relevant trip-level exceptions.

The trip population contains **85,410 completed trips**.

Trip-level analysis must account for the fact that approximately **5.80% of completed trips have at least one missing driver, truck, or trailer assignment**.

Therefore, analyses requiring complete asset attribution must explicitly define their eligible population.

---

##### 3.6.1.4.3 Delivery Performance

Analysis of delivery reliability using the validated On-Time Delivery KPI and its supporting delivery-event data.

The approved KPI reproduces the source `on_time_flag` using the observed ±120-minute tolerance rule.

However, the ±120-minute tolerance was technically reproducible rather than independently established as a business-policy rule.

Therefore, the analysis may use the validated source classification but must not present the ±120-minute tolerance as an independently verified organizational service-level policy.

The validated overall result is:

* **38,102 On-Time delivery events**
* **47,308 Late delivery events**
* **85,410 delivery events**
* **44.61% On-Time Delivery**

These values establish the validated baseline; diagnostic analysis must determine whether meaningful operational patterns exist behind the aggregate result.

---

##### 3.6.1.4.4 Fleet Utilization

Analysis of truck-month utilization using the source-defined `utilization_rate`.

The validated utilization dataset contains:

* **3,312 truck-month records**
* **436 records above 100% utilization**
* **13.16% above 100%**
* maximum observed utilization of **148.40%**

Utilization values above 100% must not automatically be treated as data errors.

The source methodology was not independently established during validation. Therefore:

> The analysis will use the source-defined utilization metric without artificially capping values at 100%.

Diagnostic analysis may investigate where higher utilization values occur, but it must not claim that the source metric represents a fully independently validated physical-capacity utilization formula.

---

##### 3.6.1.4.5 Fleet Availability

Analysis of current active fleet status is within scope where supported by the dataset.

The validated Active Fleet Count is:

> **92 active trucks**

However, historical fleet status transitions cannot be reconstructed reliably from the available data.

Therefore:

> Active Fleet Count may be used as a current fleet-state measure, but it must not be interpreted as a historically accurate monthly active-fleet series.

---

##### 3.6.1.4.6 Fuel Usage & Fuel Cost

Fuel analysis is based primarily on the `fuel_purchases` table.

The validated P1 definitions use:

* `fuel_purchases.gallons` for Total Fuel Consumption;
* `fuel_purchases.total_cost` for Fuel Cost;
* `purchase_date` for the analytical time period.

The validated 2022–2024 fuel-purchase population contains **196,241 records**.

The validated baseline values are:

* **24,493,560.80 gallons**
* **95,499,723.14 total fuel cost**

Fuel-purchase truck attribution is incomplete for **1.98%** of records, while driver attribution is incomplete for **2.03%**.

Therefore, overall fuel-volume and fuel-cost analysis is within scope, while analyses requiring complete truck- or driver-level fuel attribution must explicitly account for the missing identifiers.

An important semantic limitation must remain visible:

> The validated Total Fuel Consumption KPI represents **fuel purchased**, not independently verified physical fuel burned by the fleet.

No analysis should silently redefine purchased gallons as actual fuel consumption/burn.

---

##### 3.6.1.4.7 Fuel Efficiency

Fuel-efficiency analysis is within scope using the source-defined `average_mpg` at the truck-month grain.

The validated source mean is approximately:

> **6.5010 MPG**

However, independent recalculation using total miles divided by fuel gallons produced a materially different mean of approximately **5.0957 MPG**.

Only **5 of 3,312 truck-month records (0.15%)** matched within 0.01 MPG.

Therefore:

> Source-defined `average_mpg` may be analyzed as a source metric, but its underlying calculation methodology must not be presented as independently validated or reproducible.

Diagnostic analysis should focus on patterns supported by the source metric while retaining this methodological limitation.

---

#### 3.6.1.5 Approved KPI Scope

The Stage 3.5 P1 validation gate approved the following nine KPIs:

| # | KPI                     | Validation Status        |
| - | ----------------------- | ------------------------ |
| 1 | Completed Loads         | Approved                 |
| 2 | Completed Trips         | Approved with Limitation |
| 3 | Total Revenue           | Approved                 |
| 4 | On-Time Delivery %      | Approved with Limitation |
| 5 | Fleet Utilization %     | Approved with Limitation |
| 6 | Active Fleet Count      | Approved with Limitation |
| 7 | Total Fuel Consumption  | Approved with Limitation |
| 8 | Average Fuel Efficiency | Approved with Limitation |
| 9 | Fuel Cost               | Approved with Limitation |

The Stage 3.5 validation gate resulted in:

* **2 KPIs Approved**
* **7 KPIs Approved with Limitation**
* **0 Requires Validation**
* **0 Deferred**
* **0 Rejected**

These approved definitions form the controlled KPI foundation for subsequent investigation and BI engineering.

---

#### 3.6.1.6 Primary Analytical Grains

The analysis must remain grain-aware because the project contains multiple transactional and periodic tables.

The principal analytical grains are:

| Analytical Grain            | Primary Use                                                           |
| --------------------------- | --------------------------------------------------------------------- |
| Load                        | Load volume and revenue analysis                                      |
| Trip                        | Trip execution and operational performance                            |
| Delivery Event              | Delivery timeliness analysis                                          |
| Truck-Month                 | Fleet utilization and source-defined MPG                              |
| Fuel Purchase               | Purchased fuel volume and fuel cost                                   |
| Truck                       | Current fleet-level analysis                                          |
| Driver                      | Driver-level analysis only where attribution is sufficiently complete |
| Facility / Route / Customer | Dimensional segmentation where supported                              |

Measures from different transactional grains must not be directly aggregated together through relationships that create row multiplication.

For example, fuel-purchase transactions must not be joined to trip-level transactions in a way that duplicates fuel values across multiple trip records.

The eventual Power BI model must therefore preserve appropriate fact-table grains and use dimensions/relationships to support controlled slicing and aggregation.

---

#### 3.6.1.7 Analytical Comparisons Within Scope

The diagnostic analysis may investigate meaningful comparisons such as:

* time-period performance;
* facility performance;
* route performance;
* customer-level patterns where relevant;
* fleet/truck patterns where attribution is available;
* driver patterns where attribution is sufficiently complete;
* delivery-performance differences;
* utilization differences;
* fuel-cost differences;
* fuel-efficiency differences;
* relationships between operational volume and performance;
* concentration of exceptions or anomalies.

These comparisons are not conclusions in themselves.

A comparison becomes a business finding only after:

1. the relevant population is correctly defined;
2. the metric is calculated at the appropriate grain;
3. data-quality limitations are considered;
4. the observed difference is investigated;
5. the result is interpreted in business context; and
6. the evidence supports the resulting conclusion.

---

#### 3.6.1.8 Controlled Exception Analysis

Known Stage 2 and Stage 3.5 exceptions remain part of the analytical scope where they can affect interpretation.

Important controlled exceptions include:

* **5.80%** of completed trips have incomplete asset assignment;
* **486 trips (0.569%)** contain pickup-to-delivery timestamp reversals;
* **13.16%** of truck-month utilization records exceed 100%;
* historical fleet status cannot be reconstructed;
* **1.98%** of fuel-purchase records lack truck attribution;
* **2.03%** of fuel-purchase records lack driver attribution;
* source `average_mpg` methodology is not independently reproducible;
* source on-time tolerance is technically reproducible but not independently established as business policy.

These exceptions are analytical constraints, not automatically data-cleaning targets.

The raw dataset remains immutable.

---

#### 3.6.1.9 Analytical Areas Explicitly Out of Scope

The following claims are outside the defensible scope of the current dataset unless new evidence is established:

* reconstructing historical active-fleet counts;
* claiming that source `average_mpg` is independently validated;
* claiming that purchased fuel equals physically burned fuel;
* treating the ±120-minute on-time tolerance as independently verified company policy;
* treating utilization above 100% as automatically erroneous;
* reconstructing missing driver/truck/trailer assignments without evidence;
* silently correcting pickup/delivery timestamp reversals;
* creating causal claims from observed correlations alone;
* estimating operational conditions that are not represented in the available data;
* presenting synthetic dataset observations as real proprietary company performance.

The purpose of these boundaries is not to restrict useful analysis unnecessarily. It is to ensure that every business conclusion remains defensible.

---

#### 3.6.1.10 Stage 3.6 Analytical Scope Decision

The analytical scope is established as follows:

> **The Logistics Operations BI analysis will evaluate operational performance across completed loads and trips, delivery reliability, fleet utilization and availability, fuel purchases, fuel cost, fuel efficiency, and revenue using the validated 2022–2024 core operational period and grain-aware analytical methods.**

The analysis will use the nine Stage 3.5-approved P1 KPIs as its controlled KPI foundation.

Known limitations will remain attached to the affected metrics rather than being hidden through unsupported transformations or assumptions.

The analysis will prioritize **diagnostic investigation over visual presentation**. Observed KPI differences will not automatically become business insights; they must first be investigated and validated.

This scope therefore establishes the boundary for the next Stage 3.6 diagnostic work:

> **Define the strongest business questions → identify the required investigations → determine the appropriate analytical populations and grains → investigate meaningful patterns → validate findings → interpret business meaning → support decisions.**

**Status: ANALYTICAL SCOPE DEFINED / CARRIED INTO DOWNSTREAM DIAGNOSTIC AND ANALYTICAL EXECUTION**

---

### 3.6.2 Diagnostic Investigation Priorities
---

This section establishes the priority order for diagnostic investigation using the **existing business questions from Section 3.3** and the **validated P1 KPI portfolio from Section 3.5**.

The purpose is not to create new business questions or assume operational problems. Instead, the investigation will determine which existing management questions can produce the strongest evidence-supported findings and which validated KPIs should be used as the starting point for those investigations.

The governing analytical sequence is:

> **Business Question → Validated KPI / Measurement → Investigation / Validation → Diagnostic Finding → Business Insight → Decision / Recommendation**

---

### 3.6.2.1 Investigation Prioritization Principle

The diagnostic investigation will preserve the question hierarchy established in Section 3.3:

| Priority                       | Existing Questions | Role in Stage 3.6                                            |
| ------------------------------ | ------------------ | ------------------------------------------------------------ |
| **P1 — Core Management**       | **Q1–Q7**          | Primary investigations                                       |
| **P2 — Supporting Diagnostic** | **Q8–Q15**         | Explain or deepen important P1 findings                      |
| **P3 — Exploratory**           | **Q16–Q19**        | Investigate only when evidence demonstrates additional value |

The priority structure does not mean that every question must produce a dedicated dashboard visual.

A question may be investigated analytically and may ultimately be represented through an existing KPI, a supporting visual, a drill-down, or documented finding rather than a separate dashboard component.

The project will prioritize **fewer high-value investigations with strong evidence** over a large number of superficial analyses.

---

### 3.6.2.2 P1 — Core Management Investigation Priorities

The first investigation layer will focus on the seven Core Management Questions established in Section 3.3.

These questions are retained exactly as defined previously:

1. **Q1 — How is the logistics operation performing overall?**
2. **Q2 — How reliable is delivery performance?**
3. **Q3 — Where are the most significant delivery-performance differences occurring?**
4. **Q4 — How effectively is the fleet being utilized?**
5. **Q5 — What are the major drivers of operating cost and fuel efficiency?**
6. **Q6 — Which routes or operational areas demonstrate the strongest and weakest overall performance?**
7. **Q7 — Are there facilities that require further operational investigation?**

These questions will not be treated as seven isolated analyses.

Where appropriate, one validated KPI may support multiple questions, while one business question may require multiple validated KPIs and analytical dimensions.

---

### 3.6.2.3 Q1 — Overall Operational Performance

**Business Question:**

> **How is the logistics operation performing overall?**

**Primary Investigation Priority:** **P1.1**

**Primary validated KPI entry points:**

* Completed Loads
* Completed Trips
* Total Revenue

**Supporting context:**

* On-Time Delivery %
* Active Fleet Count
* Fleet Utilization %
* Total Fuel Consumption
* Average Fuel Efficiency
* Fuel Cost

The first investigation establishes the operational baseline before attempting to diagnose individual problem areas.

The investigation should determine:

* overall completed operational volume;
* overall trip activity;
* overall revenue generated;
* how activity changes across the validated operational period;
* whether material differences or exceptions are visible; and
* which areas require deeper investigation.

The objective is **not** to declare the operation efficient or inefficient based solely on the baseline.

The baseline acts as the starting point for the remaining P1 investigations.

---

### 3.6.2.4 Q2 — Delivery Reliability

**Business Question:**

> **How reliable is delivery performance?**

**Primary Investigation Priority:** **P1.2**

**Primary validated KPI:**

* On-Time Delivery %

**Supporting KPI:**

* Completed Trips

The investigation should establish the overall delivery-performance baseline and determine whether meaningful reliability differences exist.

The analysis should consider:

* overall on-time delivery performance;
* distribution of on-time and late delivery events;
* changes over the validated operational period;
* meaningful differences across supported dimensions; and
* whether observed performance warrants deeper investigation.

The validated Stage 3.5 result provides an analytical baseline of **44.61% On-Time Delivery**, based on 38,102 on-time and 47,308 late delivery events.

However, the source on-time classification uses an observed **±120-minute tolerance**. The technical behavior was reproduced, but the tolerance was not independently established as formal business policy. Therefore, this limitation must remain attached to subsequent analysis.

---

### 3.6.2.5 Q3 — Delivery-Performance Differences

**Business Question:**

> **Where are the most significant delivery-performance differences occurring?**

**Primary Investigation Priority:** **P1.3**

**Primary validated KPI:**

* On-Time Delivery %

**Supporting dimensions / measurements:**

* Route
* Facility
* Time period
* Relevant operational dimensions supported by the validated model

This investigation moves from the overall delivery baseline into **where performance differs**.

The analysis should identify whether delivery-performance differences are concentrated across:

* routes;
* facilities;
* time periods; or
* other validated operational dimensions.

The purpose is to identify **where management should investigate further**, not to assume that a particular route or facility is responsible for poor performance.

Q8 — *What factors are associated with delivery delays?* — will subsequently provide supporting diagnostic depth where Q3 identifies a meaningful delivery-performance difference.

---

### 3.6.2.6 Q4 — Fleet Utilization

**Business Question:**

> **How effectively is the fleet being utilized?**

**Primary Investigation Priority:** **P1.4**

**Primary validated KPIs:**

* Fleet Utilization %
* Active Fleet Count

**Supporting KPI:**

* Completed Trips

The investigation should determine how fleet utilization varies across:

* trucks;
* months;
* relevant fleet segments; and
* operational activity levels where analytically appropriate.

The validated Fleet Utilization KPI is defined at the **truck-month grain** using the source-defined `utilization_rate`. The metric is approved with limitation because the underlying source methodology is not independently reproducible and **436 truck-month records (13.16%) exceed 100%**, with a maximum observed value of 148.40%.

Therefore:

> **Utilization above 100% must be investigated and interpreted, not automatically treated as an error or inefficiency.**

The investigation must preserve the source metric rather than inventing a replacement utilization formula.

---

### 3.6.2.7 Q5 — Operating Cost and Fuel Efficiency

**Business Question:**

> **What are the major drivers of operating cost and fuel efficiency?**

**Primary Investigation Priority:** **P1.5**

**Primary validated KPIs:**

* Total Fuel Consumption
* Average Fuel Efficiency
* Fuel Cost

**Supporting measurements:**

* Completed Trips
* Total Revenue
* Relevant operational dimensions

The investigation should determine where meaningful differences exist in:

* fuel consumption;
* fuel efficiency;
* fuel cost; and
* operational cost-efficiency patterns.

The analysis must distinguish between **observed association and demonstrated causation**.

Fuel-related investigations must also retain the limitations established during Stage 3.5, including incomplete truck attribution in fuel-purchase records and the source-defined nature of the Average Fuel Efficiency metric.

The objective is therefore not to produce a list of expensive trucks, routes, or periods without context. The objective is to identify **material and defensible cost or efficiency patterns that warrant management attention**.

---

### 3.6.2.8 Q6 — Route / Operational-Area Performance

**Business Question:**

> **Which routes or operational areas demonstrate the strongest and weakest overall performance?**

**Primary Investigation Priority:** **P1.6**

**Primary validated KPI entry points:**

* Completed Loads
* Completed Trips
* Total Revenue
* On-Time Delivery %
* Fleet Utilization %
* Total Fuel Consumption
* Average Fuel Efficiency
* Fuel Cost

Q6 does **not** depend on a single dedicated route KPI.

Instead, the validated P1 KPIs will be evaluated across appropriate route or operational-area dimensions to determine where meaningful performance differences exist.

The investigation should consider multiple dimensions of performance rather than ranking routes using volume alone.

A route with high activity is not automatically a high-performing route, and a route with low activity is not automatically underperforming.

Where appropriate, route investigation should consider:

> **Volume + Delivery Reliability + Efficiency + Cost + Revenue**

The purpose is to identify routes or operational areas that demonstrate materially different performance and therefore warrant deeper investigation.

---

### 3.6.2.9 Q7 — Facility Investigation

**Business Question:**

> **Are there facilities that require further operational investigation?**

**Primary Investigation Priority:** **P1.7**

**Primary validated KPI entry points:**

* Completed Loads
* Completed Trips
* Total Revenue
* On-Time Delivery %

**Supporting measures where analytically appropriate:**

* Fuel Cost
* Total Fuel Consumption
* Fleet Utilization %

The investigation should determine whether facilities demonstrate materially different:

* operational volume;
* delivery performance;
* revenue;
* cost;
* efficiency; or
* other supported operational outcomes.

High activity alone must **not** be classified as a bottleneck.

A facility should progress toward deeper investigation only when its performance differs meaningfully after considering its operational scale and the relevant validated measures.

---

### 3.6.2.10 P1 Investigation Priority Order

The seven Core Management Questions will be investigated in the following logical sequence:

```text
Q1 — Overall Operational Performance
                ↓
Q2 — Delivery Reliability
                ↓
Q3 — Delivery-Performance Differences
                ↓
Q4 — Fleet Utilization
                ↓
Q5 — Operating Cost & Fuel Efficiency
                ↓
Q6 — Route / Operational-Area Performance
                ↓
Q7 — Facility Investigation
```

This order establishes a progression from:

> **Baseline → Performance Outcome → Location of Difference → Resource Efficiency → Cost Drivers → Operational Comparison → Management Focus**

The sequence is a **priority order**, not a requirement that every investigation must produce a separate conclusion.

Evidence discovered in an earlier investigation may cause a later investigation to receive greater or lesser analytical depth.

---

### 3.6.2.11 P1 KPI-to-Question Mapping

The validated P1 KPI portfolio will support the Core Management Questions as follows:

| Validated P1 KPI            | Primary Question(s) | Role                                             |
| --------------------------- | ------------------- | ------------------------------------------------ |
| **Completed Loads**         | Q1, Q6, Q7          | Operational volume baseline and segmentation     |
| **Completed Trips**         | Q1, Q4, Q6, Q7      | Trip activity and supporting operational context |
| **Total Revenue**           | Q1, Q5, Q6, Q7      | Financial scale and performance context          |
| **On-Time Delivery %**      | Q2, Q3, Q6, Q7      | Delivery reliability and performance differences |
| **Fleet Utilization %**     | Q4, Q5, Q6          | Fleet-resource and efficiency investigation      |
| **Active Fleet Count**      | Q4                  | Fleet availability context                       |
| **Total Fuel Consumption**  | Q5, Q6              | Fuel-use and operating-efficiency investigation  |
| **Average Fuel Efficiency** | Q5, Q6              | Fuel-efficiency comparison                       |
| **Fuel Cost**               | Q5, Q6, Q7          | Operating-cost investigation                     |

This mapping does **not** mean that each KPI will necessarily be used for every listed question.

The final analytical use of a KPI will depend on:

* the question being investigated;
* the valid analytical grain;
* available dimensions;
* data-quality limitations;
* comparability; and
* the evidence produced during investigation.

---

### 3.6.2.12 Priority 2 — Supporting Diagnostic Investigation

The existing **Q8–Q15** questions will serve as the primary supporting diagnostic layer.

They are:

* **Q8:** What factors are associated with delivery delays?
* **Q9:** Which routes contribute most to operational volume, cost, or revenue?
* **Q10:** Which fleet assets demonstrate materially different utilization or efficiency patterns?
* **Q11:** Which drivers demonstrate materially different supported performance patterns?
* **Q12:** What maintenance patterns are visible across the fleet?
* **Q13:** Are maintenance patterns associated with differences in fleet performance?
* **Q14:** How does operational performance change over time?
* **Q15:** Are there meaningful seasonal or recurring operational patterns?

These questions should primarily be activated when a P1 investigation identifies a meaningful pattern requiring explanation or additional context.

For example:

```text
Q2 / Q3
Delivery performance difference identified
        ↓
Q8
Investigate factors associated with delivery delays
```

or:

```text
Q4
Fleet utilization difference identified
        ↓
Q10
Investigate fleet-asset differences
```

or:

```text
Q5
Fuel-efficiency difference identified
        ↓
Q10 / Q14 / Q15
Investigate asset and temporal patterns where relevant
```

The supporting questions therefore provide **diagnostic depth rather than competing with the P1 management questions**.

---

### 3.6.2.13 Priority 3 — Exploratory Investigation

The existing **Q16–Q19** questions remain exploratory:

* **Q16:** Which customers or customer segments contribute most to operational value?
* **Q17:** Which operational dimensions are associated with higher cost per mile or similar efficiency measures?
* **Q18:** Are there meaningful relationships between operational volume and efficiency?
* **Q19:** Is profitability or margin analysis sufficiently supported by the available data?

These questions will not receive the same priority as Q1–Q15.

They may progress when earlier investigations demonstrate that they provide meaningful additional business value and when the underlying data supports a defensible analysis.

Q19 remains particularly dependent on financial-definition validation because profitability must not be manufactured from incompatible revenue and cost fields.

---

### 3.6.2.14 Investigation Escalation Rule

The investigation will follow an evidence-based escalation process:

```text
Core Question
      ↓
Validated KPI
      ↓
Baseline Result
      ↓
Meaningful Difference / Pattern?
      ↓
     NO ─────────→ Document result and move on
      |
     YES
      ↓
Supporting Diagnostic Question
      ↓
Deeper Investigation
      ↓
Finding Supported?
      ↓
     NO ─────────→ Retain as observation / limitation
      |
     YES
      ↓
Business Insight
      ↓
Decision / Recommendation
```

This prevents the project from turning every numerical difference into a business problem.

---

### 3.6.2.15 Materiality and Evidence Rules

A result should receive deeper diagnostic attention when it demonstrates one or more of the following:

1. A meaningful difference between operational segments.
2. A persistent or recurring pattern.
3. A material concentration of volume, cost, or operational activity.
4. A significant delivery-performance difference.
5. A meaningful fleet-utilization or efficiency difference.
6. A pattern that affects an important management objective.
7. A result that could reasonably influence a management decision.

However, **statistical or numerical difference alone is not sufficient**.

The analysis must also consider:

* population size;
* operational scale;
* KPI definition;
* analytical grain;
* data completeness;
* known limitations;
* comparability; and
* business significance.

---

### 3.6.2.16 Data-Quality Controls During Investigation

The diagnostic investigation must continue to respect the limitations validated in Stage 3.5.

Key controls include:

* **Completed Trips:** total trip volume is reliable, but **5.80% of completed trips lack at least one driver, truck, or trailer assignment**, limiting complete asset attribution.
* **Trip chronology:** **486 completed trips (0.569%)** contain delivery timestamps earlier than pickup timestamps, limiting chronology-dependent interpretation.
* **On-Time Delivery %:** source classification is reproducible but depends on the source-defined ±120-minute tolerance.
* **Fleet Utilization %:** source-defined methodology is not independently reproducible, and **13.16% of truck-month observations exceed 100%**.
* **Fuel measures:** fuel-purchase attribution contains missing truck identifiers, requiring controlled interpretation for asset-level analysis.
* **Average Fuel Efficiency:** remains a source-defined measure because the underlying methodology could not be independently reproduced.

These limitations do not invalidate the approved KPIs. They determine **how deeply and at what level those KPIs may be interpreted**.

---

### 3.6.2.17 Diagnostic Finding Qualification

The following distinction will be maintained throughout the investigation:

| Level                         | Meaning                                                            |
| ----------------------------- | ------------------------------------------------------------------ |
| **KPI Result**                | Validated measurement of a business condition                      |
| **Observed Pattern**          | Difference, trend, concentration, or exception visible in the data |
| **Diagnostic Finding**        | Material pattern supported by additional investigation             |
| **Business Insight**          | Interpretation of the finding in an operational/business context   |
| **Decision / Recommendation** | Action supported by the evidence                                   |

Therefore:

> **A low KPI is not automatically a finding.**

> **A difference between segments is not automatically a cause.**

> **An unusual value is not automatically an error.**

The project will maintain the evidence-driven principle:

> **Detect → Investigate → Validate → Understand Business Meaning → Classify → Decide Treatment**

---

### 3.6.2.18 Diagnostic Investigation Priority Matrix

| Priority | Question                                                                                          | Primary Validated KPI Entry Point               | Diagnostic Purpose                                  |
| -------- | ------------------------------------------------------------------------------------------------- | ----------------------------------------------- | --------------------------------------------------- |
| **P1.1** | Q1 — How is the logistics operation performing overall?                                           | Completed Loads, Completed Trips, Total Revenue | Establish operational baseline                      |
| **P1.2** | Q2 — How reliable is delivery performance?                                                        | On-Time Delivery %                              | Establish delivery reliability                      |
| **P1.3** | Q3 — Where are the most significant delivery-performance differences occurring?                   | On-Time Delivery %                              | Locate delivery-performance differences             |
| **P1.4** | Q4 — How effectively is the fleet being utilized?                                                 | Fleet Utilization %, Active Fleet Count         | Investigate fleet utilization                       |
| **P1.5** | Q5 — What are the major drivers of operating cost and fuel efficiency?                            | Fuel Consumption, Fuel Efficiency, Fuel Cost    | Investigate cost and efficiency patterns            |
| **P1.6** | Q6 — Which routes or operational areas demonstrate the strongest and weakest overall performance? | Multiple P1 KPIs                                | Compare route / operational-area performance        |
| **P1.7** | Q7 — Are there facilities that require further operational investigation?                         | Multiple P1 KPIs                                | Identify facilities warranting deeper investigation |
| **P2**   | Q8–Q15                                                                                            | P1 results + supporting measures                | Explain important P1 patterns                       |
| **P3**   | Q16–Q19                                                                                           | Evidence emerging from earlier analysis         | Selective exploratory analysis                      |

---

### 3.6.2.19 Stage 3.6.2 Decision
---

The diagnostic investigation priorities were established using the **actual Section 3.3 business-question hierarchy** and the **validated Stage 3.5 P1 KPI portfolio**.

The controlled priority is:

> **Q1–Q7 → Core Management Investigation**

> **Q8–Q15 → Supporting Diagnostic Investigation**

> **Q16–Q19 → Exploratory Investigation**

The nine validated P1 KPIs provide the measurement foundation, but they are not treated as independent analytical objectives. Each KPI is used according to the relevant business question, appropriate analytical grain, valid dimensions, and documented limitations.

The defined diagnostic focus is therefore:

> **Establish the overall operational baseline → evaluate delivery reliability → locate delivery differences → investigate fleet utilization → investigate cost and fuel efficiency → compare route/operational performance → identify facilities requiring further investigation.**

Supporting questions are activated where they help explain material P1 results, while exploratory questions remain subordinate to the core management priorities.

The Stage 3.6.2 priority framework was subsequently carried into downstream analytical and BI execution. The resulting analysis was governed by the approved question hierarchy rather than by independently selected dashboard findings.

The original Stage 3.6.2 decision therefore remains valid as the **priority-control specification**, while its execution state is recorded as completed downstream.

## **Status: DIAGNOSTIC PRIORITIES DEFINED / CARRIED INTO DOWNSTREAM ANALYTICAL EXECUTION**

---

### 3.6.3 Investigation Framework & Evidence Requirements

---

This section defines **how each prioritized investigation will be performed and what evidence is required before a result can be treated as a diagnostic finding**.

The purpose is to prevent the analysis from jumping directly from a KPI value to a business conclusion. Each investigation must move through a controlled evidence chain:

> **Question → Baseline → Comparison → Pattern → Validation → Finding → Business Meaning**

The framework also ensures that Stage 3.6 remains analytical rather than becoming premature dashboard design.

#### 3.6.3.1 Investigation Unit

---

Each investigation will begin with one clearly defined **business question** from Section 3.3.

The investigation unit will then be established using:

| Component | Requirement |
|---|---|
| **Business Question** | Existing Q1–Q19 question |
| **Objective** | What the investigation is intended to determine |
| **Primary KPI** | Validated KPI most directly related to the question |
| **Supporting KPI** | Additional validated measurements where required |
| **Analytical Dimension** | Route, facility, truck, driver, time, etc. |
| **Grain** | Level at which the comparison is valid |
| **Comparison Basis** | Overall baseline, segment comparison, time comparison, or other valid benchmark |
| **Validation Check** | Test required before interpreting the pattern |
| **Finding Threshold** | Evidence required before escalation |
| **Business Interpretation** | What the validated pattern may mean |
| **Decision Relevance** | Whether the result can support management action |

No investigation should proceed without first identifying its valid analytical grain.

#### 3.6.3.2 Investigation Stages

---

Each investigation will follow five analytical stages.

**Stage A — Establish Baseline**

Determine the overall KPI result before segmenting the data.

**Stage B — Identify Differences**

Compare the KPI across relevant dimensions.

**Stage C — Validate the Difference**

Determine whether the observed difference is sufficiently supported by:

- adequate population size;
- comparable groups;
- valid grain;
- complete enough data;
- consistent KPI definition; and
- absence of known data-quality conditions that materially distort interpretation.

**Stage D — Diagnose**

Where a meaningful difference exists, use the relevant supporting business questions to investigate possible explanations.

**Stage E — Classify**

The result will be classified as:

> **No material pattern / Observation / Diagnostic Finding / Limitation**

Only supported diagnostic findings can progress toward business insight.

#### 3.6.3.3 Baseline Before Segmentation

---

Every P1 investigation must establish a baseline before examining individual routes, facilities, assets, or other segments.

This prevents a common analytical error:

> **Selecting an unusually high or low segment first and treating it as representative of the operation.**

For example, Q3 should first establish overall On-Time Delivery %, then examine delivery performance across relevant dimensions.

Similarly:

- Q4 begins with overall fleet-utilization context before truck-level comparison.
- Q5 begins with overall fuel and cost context before examining operational segments.
- Q6 compares routes using an established operational baseline.
- Q7 evaluates facilities against appropriate operational context rather than volume alone.

The baseline therefore provides the reference point against which differences are interpreted.

#### 3.6.3.4 Comparison Framework

---

A segment should not be classified as strong or weak simply because its KPI is numerically different.

Comparisons should consider:

1. **Magnitude of difference**
2. **Population size**
3. **Operational volume**
4. **Consistency across periods**
5. **Data completeness**
6. **KPI grain**
7. **Relevant business context**

For example, a facility with a low On-Time Delivery % but only a very small number of deliveries should not automatically receive the same management priority as a high-volume facility with the same percentage.

The analytical principle is:

> **Performance must be interpreted together with scale and evidence quality.**

#### 3.6.3.5 Investigation Evidence Hierarchy

---

Evidence will be treated in the following order:

| Level | Evidence | Interpretation |
|---|---|---|
| **E1** | KPI result | What happened numerically |
| **E2** | Segment/time comparison | Where or when it differs |
| **E3** | Pattern validation | Whether the difference is persistent/material |
| **E4** | Diagnostic evidence | What factors are associated with the difference |
| **E5** | Business interpretation | Why the pattern matters |
| **E6** | Decision relevance | What action could reasonably follow |

The project must not skip from **E1 directly to E5**.

For example:

> "Facility A has lower On-Time Delivery %."

is an **E1/E2 observation**.

It is not yet:

> "Facility A is causing delivery delays."

That would require additional evidence.

#### 3.6.3.6 Association vs Causation

---

Stage 3.6 will explicitly distinguish **association** from **causation**.

If two variables move together, the analysis may establish:

> **"X is associated with Y."**

It should not automatically claim:

> **"X causes Y."**

This is particularly important for:

- delivery delays;
- fuel efficiency;
- fleet utilization;
- maintenance;
- route performance;
- driver performance.

For example, if higher fuel consumption is observed on certain routes, this does not by itself prove that the route causes poor fuel efficiency.

Other factors may include:

- distance;
- vehicle characteristics;
- operational volume;
- traffic or timing conditions;
- assignment patterns; or
- other variables available in the dataset.

Where causal evidence is unavailable, the final finding must use appropriately cautious language.

#### 3.6.3.7 Grain Control During Investigation

---

All diagnostic analysis must preserve the valid grain established during KPI validation.

This is especially important because the project contains multiple transactional tables.

The investigation must avoid:

- joining transactional tables in a way that multiplies records;
- summing measures after unintended many-to-many expansion;
- comparing metrics calculated at incompatible grains;
- attributing records to assets when assignment is incomplete.

Examples:

| Analytical Subject | Relevant Grain |
|---|---|
| **Fleet Utilization %** | Truck-month |
| **Completed Trips** | Trip |
| **Fuel Purchases** | Fuel-purchase transaction |
| **Delivery Events** | Delivery event |

These grains must not be silently combined as though they represent the same observation unit.

#### 3.6.3.8 Data-Quality-Aware Investigation

---

Known Stage 2 and Stage 3.5 limitations must be incorporated into every relevant investigation rather than added as an afterthought.

Examples include:

- **5.80%** of completed trips have incomplete driver/truck/trailer assignment.
- **486 trips / 0.569%** contain pickup/delivery timestamp reversals.
- **13.16%** of truck-month utilization observations exceed 100%.
- Fuel-purchase truck attribution is incomplete for **1.98%** of records.
- Source `average_mpg` methodology is not independently reproducible.
- Source On-Time Delivery classification depends on the technically reproducible but independently unverified **±120-minute tolerance**.

Therefore, an investigation may produce a valid result while still having a **scope limitation**.

A limitation does not automatically invalidate the finding.

Instead, it determines how strongly the finding can be interpreted.

#### 3.6.3.9 Finding Qualification Rule

---

A result may be classified as a **Diagnostic Finding** only when:

- the relevant KPI is validated;
- the analytical grain is appropriate;
- the comparison is meaningful;
- the population is adequate for interpretation;
- important data-quality limitations have been considered;
- the observed pattern is material or decision-relevant; and
- the interpretation does not exceed the available evidence.

Otherwise, the result remains an:

> **Observation**

or

> **Limitation**

This distinction is critical.

The project will not manufacture findings simply to populate a dashboard or portfolio case study.

#### 3.6.3.10 Investigation Output Standard

---

Every completed investigation should ultimately produce a structured analytical record:

```text
Business Question
        ↓
Investigation Objective
        ↓
Validated KPI(s)
        ↓
Baseline
        ↓
Segmentation / Comparison
        ↓
Validation
        ↓
Observed Pattern
        ↓
Diagnostic Investigation
        ↓
Finding Classification
        ↓
Business Meaning
        ↓
Decision Relevance

```
---

The output should answer:

* **Q1. What did we measure?**
* **Q2. What did we observe?**
* **Q3. Where did the difference occur?**
* **Q4. Is the difference sufficiently supported?**
* **Q5. What evidence helps explain it?**
* **Q6. What does it mean operationally?**
* **Q7. Does it warrant management attention?**

---

**3.6.3.11 Stage 3.6.3 Decision** 

>The investigation framework is established as the controlled method for executing the P1–P3 investigation priorities defined in Section 3.6.2.

The governing rule is:

>No KPI result becomes a business finding without comparison, validation, and interpretation.

>The framework also establishes the required discipline around:

- **baseline analysis;**
- **segmentation;**
- **analytical grain;**
- **population and scale;**
- **data-quality limitations;**
- **association versus causation; and**
- **finding qualification.**

**Status: INVESTIGATION FRAMEWORK DEFINED / CARRIED INTO DOWNSTREAM ANALYTICAL EXECUTION**

---

### 3.6.4 Analytical Scope
---

The analytical scope defines the dimensions, measures, grains, time coverage, and boundaries that will govern diagnostic investigation in Stage 3.6.

This prevents uncontrolled analysis, protects KPI grain integrity, and ensures that every investigation remains aligned with the validated business questions and available evidence.

#### 3.6.4.1 Scope Objective
---

Stage 3.6 analysis will investigate operational performance patterns using the validated P1 KPI portfolio and the prioritized Q1–Q19 business-question hierarchy.

The scope is intentionally limited to analyses that can be supported by the validated dataset structure, KPI definitions, data-quality findings, and available business dimensions.

The objective is to identify **material, evidence-supported operational patterns**, not to generate findings for every available field.

---

#### 3.6.4.2 Primary Analytical Measures
---

The following validated P1 KPIs form the primary measurement layer for Stage 3.6:

| KPI | Primary Analytical Role |
|---|---|
| Completed Loads | Operational volume |
| Completed Trips | Transportation activity |
| Total Revenue | Operational value |
| On-Time Delivery % | Delivery reliability |
| Fleet Utilization % | Fleet utilization |
| Active Fleet Count | Fleet availability |
| Total Fuel Consumption | Fuel consumption |
| Average Fuel Efficiency | Fuel efficiency |
| Fuel Cost | Operating cost |

These KPIs will be used as the primary evidence base for Q1–Q7 and as activation points for supporting diagnostic questions Q8–Q15.

---

#### 3.6.4.3 Analytical Dimensions
---

Stage 3.6 will prioritize dimensions that can meaningfully explain differences in the validated KPIs.

##### Core Dimensions

- Time period
- Route
- Facility
- Driver
- Truck
- Trailer
- Customer
- Operational activity / transaction category where analytically supported

##### Time Dimensions

Where the underlying date fields are valid for the relevant analysis, investigations may use:

- Year
- Quarter
- Month
- Week
- Date
- Relevant operational time periods

Time-based analysis must respect the date appropriate to the KPI and business question.

For example, delivery reliability should use the relevant delivery-event timing rather than automatically applying the load date.

---

#### 3.6.4.4 Analytical Grain
---

Every investigation must explicitly declare its analytical grain before analysis begins.

| Analytical Area | Primary Grain |
|---|---|
| Completed Loads | Load |
| Completed Trips | Trip |
| Revenue | Load / revenue-bearing record as validated |
| On-Time Delivery % | Delivery event |
| Fleet Utilization % | Truck-month |
| Active Fleet Count | Fleet / relevant time period |
| Total Fuel Consumption | Fuel-purchase transaction |
| Average Fuel Efficiency | Source-defined efficiency measure |
| Fuel Cost | Fuel-purchase transaction |

Cross-grain analysis is permitted only when the relationship between grains is explicitly controlled.

No investigation may aggregate transactional tables together without confirming that the join or relationship does not multiply measures.

---

#### 3.6.4.5 Q1–Q7 Core Analytical Scope
---

The primary analytical scope for Stage 3.6 is Q1–Q7.

| Question | Primary Scope |
|---|---|
| Q1 Overall operational performance | Volume, revenue, delivery, fleet, fuel and cost |
| Q2 Delivery reliability | On-time performance over time and operational dimensions |
| Q3 Delivery-performance differences | Route, facility, time and other relevant segments |
| Q4 Fleet utilization | Truck-month utilization and active fleet |
| Q5 Operating cost and fuel efficiency | Fuel consumption, fuel cost, efficiency and relevant operational dimensions |
| Q6 Route / operational-area performance | Volume, reliability, efficiency, cost and revenue |
| Q7 Facility investigation | Facility-level operational and performance patterns |

Q1 establishes the overall baseline before deeper segmentation.

Q2–Q7 are then investigated according to the evidence-based priority sequence defined in Section 3.6.2.

---

#### 3.6.4.6 Supporting Diagnostic Scope: Q8–Q15
---

Q8–Q15 will not automatically receive equal analytical depth.

They will be activated when a meaningful P1 pattern requires further investigation.

| Question | Diagnostic Scope |
|---|---|
| Q8 Delay factors | Factors associated with delivery delays |
| Q9 Route contribution | Operational volume, cost and revenue contribution |
| Q10 Fleet asset differences | Utilization and efficiency differences |
| Q11 Driver performance | Supported driver-level performance patterns |
| Q12 Maintenance patterns | Maintenance activity and recurring patterns |
| Q13 Maintenance vs fleet performance | Association between maintenance and fleet outcomes |
| Q14 Performance over time | Trends and structural changes |
| Q15 Seasonal / recurring patterns | Repeated temporal patterns |

The existence of a question does not require a finding.

If the P1 investigation does not produce a meaningful pattern, the supporting diagnostic may be documented as **not activated**.

---

#### 3.6.4.7 Exploratory Scope: Q16–Q19
---

Q16–Q19 remain exploratory and are outside the primary diagnostic path unless sufficient evidence and business relevance emerge.

- Q16 — Customer or customer-segment contribution
- Q17 — Operational dimensions associated with higher cost per mile or similar efficiency measures
- Q18 — Relationship between operational volume and efficiency
- Q19 — Profitability or margin analysis

These questions must not displace the core Q1–Q7 investigations.

Q19 requires particular caution because profitability or margin analysis must not be presented unless the available revenue and cost data support a defensible margin definition.

---

#### 3.6.4.8 Time Coverage
---

Stage 3.6 will use the full validated analytical period available for each relevant dataset, subject to the temporal validity of the specific measure.

The analysis must distinguish between:

- Primary operational activity period
- Supporting transaction coverage
- KPI-specific valid periods
- Data extending beyond the primary operational period

Supporting data extending into January 2025 must not automatically be interpreted as equivalent to the primary operational activity period.

Time coverage will therefore be evaluated at the KPI and dataset level before trend interpretation.

---

#### 3.6.4.9 Asset-Level Scope
---

Asset-level investigations may include:

- Trucks
- Trailers
- Drivers
- Facilities
- Routes

However, asset attribution must account for the validated completeness limitations.

In particular, approximately 5.80% of completed trips have at least one missing driver, truck, or trailer assignment.

Therefore:

- Asset-level results must disclose the applicable attribution limitation.
- Missing assignments must not be silently treated as zero performance.
- Rankings must not be interpreted as complete population rankings when attribution is incomplete.
- Asset-level conclusions require sufficient attributable population.

---

#### 3.6.4.10 Fleet Utilization Scope
---

Fleet utilization analysis will use the validated **truck-month** grain and the source-defined utilization measure.

The analysis will investigate:

- Utilization distribution
- Differences between trucks
- Changes over time
- Potential high-utilization segments
- Potential low-utilization segments
- Relationship with operational activity where grain-compatible

The 436 truck-month records exceeding 100% utilization must remain visible as a validation consideration.

Values above 100% must not be automatically capped or classified as errors without evidence.

---

#### 3.6.4.11 Delivery Performance Scope
---

Delivery-performance investigation will focus primarily on On-Time Delivery % and relevant delivery-event dimensions.

Potential analytical dimensions include:

- Time
- Route
- Facility
- Operational segment
- Other validated dimensions supported by the delivery-event structure

The source-defined ±120-minute tolerance will remain attached to the interpretation of the KPI.

The analysis may identify where delivery reliability differs materially, but differences must not automatically be interpreted as causal.

The 486 chronology reversals must also be considered when performing chronology-dependent analysis.

---

#### 3.6.4.12 Fuel and Cost Scope
---

Fuel and cost investigations will focus on:

- Total Fuel Consumption
- Average Fuel Efficiency
- Fuel Cost
- Total Revenue where relevant
- Operational volume where relevant

Potential dimensions include:

- Time
- Truck
- Route
- Facility
- Other supported operational dimensions

Fuel-purchase analysis must account for incomplete truck attribution.

The 1.98% of fuel-purchase records missing truck identifiers limits complete truck-level attribution and therefore limits conclusions based exclusively on truck-level fuel analysis.

Average Fuel Efficiency will retain its source-defined status because the underlying methodology was not independently reproducible during KPI validation.

---

#### 3.6.4.13 Route Analysis Scope
---

Route analysis will evaluate route-level differences using multiple validated measures rather than a single ranking metric.

Where supported, route investigations may compare:

- Completed Loads
- Completed Trips
- Total Revenue
- On-Time Delivery %
- Total Fuel Consumption
- Average Fuel Efficiency
- Fuel Cost

Route volume must be considered alongside performance.

A route with a high number of adverse events may be operationally more significant than a low-volume route with a worse percentage.

Therefore, route analysis will consider both **performance rate and operational scale**.

---

#### 3.6.4.14 Facility Analysis Scope
---

Facility investigations will evaluate facilities using multiple operational indicators rather than activity volume alone.

Potential measures include:

- Completed Loads
- Completed Trips
- Total Revenue
- On-Time Delivery %
- Fuel Cost
- Relevant fleet measures

High activity alone does not establish that a facility is a bottleneck.

A facility will warrant deeper investigation only when the observed performance pattern is material, sufficiently supported, and operationally relevant.

---

#### 3.6.4.15 Out-of-Scope Analysis
---

The following are outside the primary Stage 3.6 scope unless explicitly activated by evidence:

- Predictive modelling
- Machine learning
- Causal inference
- Forecasting
- Optimization modelling
- Prescriptive routing optimization
- Unvalidated profitability calculations
- Unsupported margin calculations
- Arbitrary KPI thresholds
- Artificial correction of validated source metrics
- Automatic removal of data-quality exceptions
- Conclusions based solely on correlations
- Uncontrolled exploratory analysis across every available column

Stage 3.6 is diagnostic business analysis, not a general-purpose data-mining exercise.

---

#### 3.6.4.16 Scope Boundary Rules
---

The following rules govern all Stage 3.6 execution:

1. Use validated KPIs as the primary measurement layer.
2. Start with Q1–Q7 before activating supporting diagnostics.
3. Establish a baseline before segmentation.
4. Declare analytical grain before calculating or comparing results.
5. Preserve source-defined KPI methodology unless formally revalidated.
6. Do not silently exclude data-quality exceptions.
7. Do not convert association into causation.
8. Consider both magnitude and operational scale.
9. Do not manufacture findings where evidence is insufficient.
10. Keep exploratory analysis subordinate to the core management questions.
11. Document limitations alongside the relevant finding.
12. Escalate only patterns that are material and decision-relevant.

---

#### 3.6.4.17 Stage 3.6.4 Decision

---

The analytical scope for Stage 3.6 was defined across:

* Business questions
* Validated KPIs
* Analytical dimensions
* Analytical grains
* Time coverage
* Asset attribution
* Delivery analysis
* Fleet analysis
* Fuel and cost analysis
* Route analysis
* Facility analysis
* Supporting and exploratory boundaries

This scope established the controlled boundary for diagnostic execution and prevented analysis from expanding beyond the validated business problem.

The defined scope was subsequently carried into downstream analytical and BI execution. The implementation and validation workflow retained the documented grain controls, KPI populations, time boundaries, attribution limitations, and source-defined metric constraints.

The analytical scope therefore remains valid as the **Stage 3 design specification**, while its execution state is now evidenced through downstream analytical and BI work.

## **Status: ANALYTICAL SCOPE DEFINED / CARRIED INTO DOWNSTREAM ANALYTICAL EXECUTION**

---

### 3.6.5 Analytical Segmentation & Comparison Design
---

Analytical segmentation defines how validated KPIs will be broken down and compared across relevant operational dimensions. The purpose is to identify meaningful performance differences while preventing misleading comparisons caused by scale, grain, incomplete attribution, or inappropriate segmentation.

#### 3.6.5.1 Segmentation Objective
---

Stage 3.6 investigations will use segmentation to determine **where meaningful operational differences occur** after establishing the relevant baseline.

Segmentation will be driven by the business question and validated KPI rather than by the availability of columns in the dataset.

No dimension will be investigated simply because it exists in the raw data.

---

#### 3.6.5.2 Primary Segmentation Dimensions
---

The primary dimensions available for diagnostic investigation are:

- Time period
- Route
- Facility
- Driver
- Truck
- Trailer
- Customer
- Relevant operational categories supported by the validated dataset

The applicable dimension will depend on the business question, KPI, analytical grain, and data completeness.

---

#### 3.6.5.3 Time-Based Segmentation
---

Time segmentation will be used to identify:

- Trends
- Deterioration or improvement
- Persistent performance differences
- Recurring patterns
- Potential seasonal patterns
- Changes in operational performance over time

Time analysis must use the date or timestamp appropriate to the KPI being investigated.

Examples:

- Delivery reliability → delivery-event timing
- Load volume → load date
- Trip activity → trip/dispatch date
- Fleet utilization → truck-month period
- Fuel purchases → fuel-purchase date

A single default date must not be applied across all KPIs without validation.

---

#### 3.6.5.4 Route Segmentation
---

Route-level segmentation will be primarily used for Q3, Q6, Q8, Q9 and relevant supporting investigations.

Where appropriate, routes may be compared using:

- Completed Loads
- Completed Trips
- Total Revenue
- On-Time Delivery %
- Total Fuel Consumption
- Average Fuel Efficiency
- Fuel Cost

Route comparisons must consider both:

- Performance
- Operational volume

A poor percentage based on a very small number of observations must not automatically be treated as more important than a moderate issue affecting a substantially larger operational population.

---

#### 3.6.5.5 Facility Segmentation
---

Facility-level segmentation will primarily support Q3 and Q7 and may activate supporting diagnostic questions where meaningful differences are identified.

Facility comparisons may include:

- Operational volume
- Delivery reliability
- Revenue
- Fuel cost
- Relevant fleet indicators

Facility activity alone does not establish operational underperformance.

A facility should receive deeper diagnostic attention only when a material performance difference is observed and sufficiently supported by the available evidence.

---

#### 3.6.5.6 Fleet Asset Segmentation
---

Fleet-level segmentation may be performed at:

- Truck
- Trailer
- Fleet group where supported

Truck-level investigation is particularly relevant to:

- Fleet utilization
- Fuel efficiency
- Fuel consumption
- Fuel cost
- Maintenance-related investigations

Asset-level comparisons must account for incomplete assignment coverage.

Approximately 5.80% of completed trips have at least one missing driver, truck, or trailer assignment.

Therefore, asset rankings must not automatically be interpreted as complete population rankings.

---

#### 3.6.5.7 Driver Segmentation
---

Driver-level analysis may be used to investigate supported performance differences where sufficient attributable trip or operational data exists.

Potential measures include:

- Completed Trips
- Delivery performance
- Relevant operational efficiency measures

Driver analysis must not be interpreted as a definitive evaluation of individual driver quality when assignment completeness or supporting evidence is insufficient.

Driver-level differences should be treated as **observed performance patterns**, not causal judgments about driver behavior.

---

#### 3.6.5.8 Customer Segmentation
---

Customer-level segmentation is classified as exploratory unless activated by evidence from the core analysis.

It may support:

- Q16 customer contribution
- Revenue concentration
- Operational volume concentration
- Delivery-performance comparison where sufficiently supported

Customer analysis must remain subordinate to the core Q1–Q7 investigations.

---

#### 3.6.5.9 Segmentation Selection Rules
---

A segmentation dimension may be used only when:

1. It is relevant to the business question.
2. The KPI is valid at the required grain.
3. The relationship between the KPI and dimension is analytically defensible.
4. The population is sufficiently represented.
5. Missing-value impact is understood.
6. The comparison does not introduce transaction multiplication.
7. The resulting comparison has potential business relevance.

If these conditions are not met, the dimension should not be used for that investigation.

---

#### 3.6.5.10 Comparison Basis
---

Segment comparisons will be performed against an appropriate reference point.

Possible comparison bases include:

- Overall operational baseline
- Time-period baseline
- Peer segment
- Route-level baseline
- Facility-level baseline
- Fleet-level baseline
- Historical performance
- Distribution-based reference

The comparison basis must be explicitly documented for every diagnostic investigation.

---

#### 3.6.5.11 Volume and Scale Consideration
---

Performance differences must be interpreted together with operational scale.

The analysis should distinguish between:

- High-volume / moderate-performance issue
- Low-volume / extreme-performance issue
- High-volume / extreme-performance issue
- Low-volume / moderate-performance issue

Percentage-based rankings alone are insufficient for determining operational priority.

Where appropriate, investigations should consider both the **rate of performance** and the **number of affected observations or operational volume**.

---

#### 3.6.5.12 Minimum Evidence for Segment Comparison
---

A segment comparison should not be treated as a meaningful finding unless:

- The segment contains sufficient observations for interpretation.
- The KPI is valid for the segment.
- The comparison basis is appropriate.
- Missing or incomplete attribution is understood.
- The difference is materially meaningful or operationally relevant.
- The result survives the relevant validation checks.

Small-population extremes may be documented as observations but should not automatically become diagnostic findings.

---

#### 3.6.5.13 Grain-Aware Segmentation
---

Segmentation must preserve the validated KPI grain.

Examples:

| KPI | Valid Investigation Grain |
|---|---|
| Completed Loads | Load |
| Completed Trips | Trip |
| On-Time Delivery % | Delivery event |
| Fleet Utilization % | Truck-month |
| Total Fuel Consumption | Fuel-purchase transaction |
| Fuel Cost | Fuel-purchase transaction |

A dimension may only be used when its relationship to the KPI grain is controlled.

For example, truck-level fuel analysis must not be combined directly with trip-level measures without controlling the relationship between the underlying records.

---

#### 3.6.5.14 Multi-Dimensional Comparison
---

Multiple dimensions may be combined when a single segmentation does not adequately explain the observed pattern.

Examples include:

- Route × Time
- Facility × Time
- Truck × Month
- Route × Facility
- Fleet Asset × Time

Multi-dimensional analysis should be introduced only after the primary comparison has identified a meaningful pattern.

Unnecessary cross-segmentation must be avoided because excessive segmentation can produce unstable or misleading patterns.

---

#### 3.6.5.15 Segmentation Escalation Rule
---

The investigation will follow an evidence-based escalation sequence:

**Overall Baseline → Primary Dimension → Meaningful Difference? → Secondary Dimension → Diagnostic Investigation**

If no meaningful difference is identified at the primary level, additional segmentation is not automatically required.

If a meaningful difference is identified, additional dimensions may be introduced to determine whether the pattern is persistent, localized, concentrated, or associated with another operational factor.

---

#### 3.6.5.16 Comparison Language Standard
---

Analytical conclusions must use language proportional to the available evidence.

Preferred language includes:

- "shows a higher rate"
- "shows a lower rate"
- "is associated with"
- "demonstrates a different performance pattern"
- "concentrates a larger share of activity"
- "warrants further investigation"

Avoid unsupported causal language such as:

- "caused"
- "resulted in"
- "is responsible for"
- "proves that"

unless independent evidence supports a causal conclusion.

---

#### 3.6.5.17 Stage 3.6.5 Decision
---

The analytical segmentation and comparison framework was defined to support controlled investigation across the approved business questions and KPI portfolio.

The framework establishes the permitted comparison dimensions, including:

* time;
* route and lane;
* facility;
* shipment type;
* customer;
* fleet and asset;
* driver where analytically valid;
* operational and geographic dimensions; and
* other approved supporting dimensions where the underlying grain permits valid comparison.

Segmentation and comparison were required to remain subordinate to the validated KPI definitions and their corresponding analytical populations. Comparisons were not to be interpreted as causal explanations without additional evidence.

The defined segmentation framework was subsequently carried into downstream analytical and BI execution. Actual comparisons were performed using the validated data model, documented grain controls, KPI populations, and known data-quality limitations.

The original Stage 3.6.5 framework therefore remains the controlled **design specification**, while its execution state is evidenced through the downstream analytical and BI workflow.

## **Status: ANALYTICAL SEGMENTATION & COMPARISON DESIGN DEFINED / CARRIED INTO DOWNSTREAM ANALYTICAL EXECUTION**

---

### 3.6.6 Diagnostic Evidence & Validation Design
---

Diagnostic evidence and validation define how analytical results produced during Stage 3.6 will be evaluated before they are classified as diagnostic findings.

Stage 3.6 will inherit the KPI definitions, approved status, analytical grains, limitations, and validation decisions established in Stage 3.5. This section therefore validates the **investigative result**, not the KPI itself.

#### 3.6.6.1 Validation Foundation from Stage 3.5
---

All Stage 3.6 investigations must use the validated KPI portfolio established in Stage 3.5.

The following will be treated as controlled inputs:

- KPI definition
- Source data
- Approved analytical grain
- Calculation logic
- Time logic
- Business interpretation
- Validation status
- Known limitations
- Approved exceptions

Stage 3.6 must not redefine, replace, or silently modify an approved KPI.

Where a limitation was identified during Stage 3.5, that limitation must remain attached to the KPI during diagnostic analysis.

---

#### 3.6.6.2 Purpose of Investigation Validation
---

The purpose of validation in Stage 3.6 is to determine whether an observed analytical pattern is sufficiently reliable and meaningful to progress toward a diagnostic finding.

The validation process must answer:

1. Was the approved KPI applied correctly?
2. Was the appropriate analytical grain preserved?
3. Is the comparison valid?
4. Is the investigated population adequate?
5. Is the observed difference materially meaningful?
6. Does the pattern remain credible after relevant validation checks?
7. Are the available data sufficient to support the proposed interpretation?

---

#### 3.6.6.3 Validated KPI Inheritance
---

Stage 3.6 will inherit the following validated KPI decisions from Stage 3.5:

| KPI | Stage 3.5 Validation Status | Stage 3.6 Treatment |
|---|---|---|
| Completed Loads | Approved | Use as validated |
| Completed Trips | Approved with Limitation | Preserve asset-attribution limitation |
| Total Revenue | Approved | Use as validated |
| On-Time Delivery % | Approved with Limitation | Preserve ±120-minute tolerance limitation |
| Fleet Utilization % | Approved with Limitation | Preserve truck-month grain and >100% values |
| Active Fleet Count | Approved with Limitation | Preserve relevant attribution limitations |
| Total Fuel Consumption | Approved with Limitation | Preserve incomplete truck attribution |
| Average Fuel Efficiency | Approved with Limitation | Preserve source-methodology limitation |
| Fuel Cost | Approved with Limitation | Preserve fuel-purchase attribution limitation |

No KPI should be treated as having stronger validation status than was established in Stage 3.5.

---

#### 3.6.6.4 Investigation-Level Validation
---

For each investigation, the following must be validated:

- Business question alignment
- KPI selection
- Analytical grain
- Time period
- Population
- Segmentation dimension
- Comparison basis
- Numerator and denominator where applicable
- Missing-value impact
- Exception treatment
- Observed difference
- Business relevance

The validation must be specific to the investigation being performed.

---

#### 3.6.6.5 Population Validation
---

Before accepting a segment-level result, the analytical population must be evaluated.

Considerations include:

- Number of observations
- Operational volume
- Share of total activity
- Number of unique entities where relevant
- Missing attribution
- Data completeness
- Distribution across comparison groups

No universal arbitrary minimum threshold will be imposed across all investigations.

Population adequacy will be evaluated according to the KPI, analytical grain, and business context.

---

#### 3.6.6.6 Comparison Validation
---

Every material difference must be evaluated against an explicitly defined comparison basis.

Possible comparison bases include:

- Overall baseline
- Historical baseline
- Peer segment
- Time-period baseline
- Fleet baseline
- Route baseline
- Facility baseline

The comparison must use compatible populations and analytical grains.

A higher or lower KPI value alone is not sufficient to establish a meaningful operational difference.

---

#### 3.6.6.7 Magnitude and Materiality Validation
---

Observed differences will be evaluated using:

- Absolute difference
- Relative difference where appropriate
- Operational scale
- Population affected
- Persistence
- Business significance
- Data completeness

Materiality will not be determined using an arbitrary threshold applied uniformly across all KPIs.

The significance of a difference depends on the business question and operational context.

---

#### 3.6.6.8 Persistence Validation
---

Where relevant, an observed pattern should be tested across multiple time periods.

The investigation should determine whether the pattern is:

- Isolated
- Temporary
- Repeated
- Persistent
- Improving
- Deteriorating
- Intermittent

A single-period deviation should generally remain an observation unless additional evidence establishes its significance.

---

#### 3.6.6.9 Grain Validation
---

The analytical grain defined during KPI validation must remain intact during investigation.

Examples:

| KPI | Validated Grain |
|---|---|
| Completed Loads | Load |
| Completed Trips | Trip |
| On-Time Delivery % | Delivery event |
| Fleet Utilization % | Truck-month |
| Total Fuel Consumption | Fuel-purchase transaction |
| Fuel Cost | Fuel-purchase transaction |

Any transformation or aggregation that changes the effective grain must be explicitly controlled and documented.

---

#### 3.6.6.10 Cross-KPI Validation
---

When multiple validated KPIs are used together, the investigation must verify that their underlying populations and grains are compatible.

Particular attention must be given to:

- Transaction multiplication
- Many-to-many relationships
- Duplicate records
- Different time bases
- Different denominators
- Different populations
- Incomplete entity attribution

Cross-KPI comparisons must be performed at an appropriate common analytical grain rather than by directly combining incompatible transaction-level records.

---

#### 3.6.6.11 Data-Quality Limitation Inheritance
---

Stage 3.6 will not repeat Stage 2 or Stage 3.5 validation as a separate exercise.

Instead, relevant validated limitations will be **inherited into the investigation**.

Examples include:

- 5.80% of completed trips missing at least one driver, truck, or trailer assignment.
- 486 completed trips with delivery occurring before pickup.
- 436 truck-month utilization records above 100%.
- 1.98% of fuel-purchase records missing truck identifiers.
- 1,907 MPG precision differences.
- Source-defined Average Fuel Efficiency methodology not independently reproducible.
- On-Time Delivery % based on a technically reproducible ±120-minute tolerance whose formal business-policy basis was not independently verified.

Only limitations relevant to the specific investigation need to be carried forward into the final interpretation.

---

#### 3.6.6.12 Exception Validation
---

Known exceptions must be explicitly considered when they could influence the investigation result.

An exception may be:

- Included in the primary analysis
- Separately reported
- Included with limitation
- Excluded only when analytically justified

Exceptions must not be silently removed to improve or worsen a result.

Any analytical exclusion must document:

- What was excluded
- Why it was excluded
- The expected analytical impact
- Whether the conclusion changes materially

---

#### 3.6.6.13 Sensitivity Validation
---

Sensitivity checks should be performed when a conclusion could reasonably change because of an analytical assumption or known limitation.

Potential checks include:

- Alternative time periods
- High-volume versus low-volume populations
- Inclusion versus separate treatment of known exceptions
- Impact of incomplete asset attribution
- Persistence across adjacent periods
- Comparison of overall versus relevant peer populations

Sensitivity analysis must be used to test robustness, not to search selectively for a preferred conclusion.

---

#### 3.6.6.14 Diagnostic Evidence Hierarchy
---

Investigation evidence should progress through the following sequence:

**E1 — Validated KPI Result**

The approved KPI produces the measured result.

**E2 — Segmented Comparison**

The result is compared across a relevant dimension or time period.

**E3 — Pattern Validation**

The observed difference is tested for population adequacy, scale, persistence, grain, and data-quality impact.

**E4 — Diagnostic Evidence**

Additional evidence is examined to determine what factors are associated with the observed pattern.

**E5 — Business Interpretation**

The validated pattern is translated into an operational meaning supported by the evidence.

**E6 — Decision Relevance**

The result is evaluated for potential management attention or action.

The analysis must not move directly from E1 to E5 or E6.

---

#### 3.6.6.15 Association and Causation Validation
---

Diagnostic analysis may identify relationships or associations between operational dimensions and KPI outcomes.

However, association must not be presented as causation unless the available evidence supports a causal interpretation.

Examples:

- A route with lower On-Time Delivery % may be associated with higher operational duration.
- A truck with lower fuel efficiency may also show higher utilization.
- A facility may show both higher volume and lower delivery reliability.

These observations do not independently establish that one factor caused the other.

---

#### 3.6.6.16 Investigation Evidence Status
---

After validation, each material investigation should receive one of the following statuses:

| Status | Interpretation |
|---|---|
| Sufficient | Evidence supports diagnostic interpretation |
| Sufficient with Limitation | Evidence supports interpretation but with a material limitation |
| Observation Only | Pattern exists but evidence is insufficient for a diagnostic finding |
| Insufficient | Evidence does not adequately support the observed interpretation |
| Data Limitation | Available data prevents reliable investigation |

Only results classified as **Sufficient** or **Sufficient with Limitation** should normally progress toward diagnostic finding qualification.

---

#### 3.6.6.17 Investigation Validation Record
---

Each completed investigation must retain an evidence record containing:

- Business question
- Investigation objective
- Validated KPI(s)
- Stage 3.5 KPI validation status
- Analytical grain
- Analytical population
- Baseline
- Segmentation
- Comparison basis
- Observed result
- Validation checks
- Relevant inherited limitations
- Diagnostic evidence
- Evidence status
- Supported interpretation

This record creates traceability from the approved KPI in Stage 3.5 to the eventual diagnostic finding in Stage 3.6.

---

#### 3.6.6.18 Stage 3.6.6 Decision

---

The diagnostic evidence and validation framework was established to ensure that analytical findings are supported by reproducible evidence rather than descriptive observation alone.

The framework requires findings to be evaluated through appropriate:

* KPI and baseline reconciliation;
* population and denominator validation;
* dimensional comparison;
* time-based comparison;
* grain and relationship validation;
* data-quality assessment;
* source-semantic review; and
* limitation disclosure.

The framework also distinguishes between an observed pattern, a validated finding, and a business interpretation. This prevents unsupported causal conclusions from being presented as established evidence.

The defined evidence and validation controls were subsequently carried into downstream analytical and BI execution. Actual validation retained the documented KPI populations, analytical grain, source limitations, and data-quality constraints.

The original Stage 3.6.6 framework therefore remains the controlled **design specification**, while its execution state is evidenced through the downstream analytical, KPI reconciliation, and BI validation workflow.

## **Status: DIAGNOSTIC EVIDENCE & VALIDATION DESIGN DEFINED / CARRIED INTO DOWNSTREAM ANALYTICAL EXECUTION**

---

### 3.6.7 Finding Qualification & Business Interpretation
---

Finding qualification defines the controlled transition from an observed analytical pattern to a defensible diagnostic finding and, where evidence permits, a business insight.

Stage 3.6 must preserve the distinction established in the project control framework: **Observed ≠ Validated ≠ Business Conclusion**. A KPI result or segment difference becomes a diagnostic finding only after the required investigation and validation evidence has been evaluated.

#### 3.6.7.1 Qualification Objective
---

The objective is to prevent analytical results from being overstated.

Every investigation must distinguish between:

1. **KPI Result** — what the validated measure reports.
2. **Observed Pattern** — a difference, concentration, trend, or anomaly identified during segmentation.
3. **Validated Pattern** — an observed pattern that has passed the relevant investigation checks.
4. **Diagnostic Finding** — a materially meaningful and sufficiently supported operational finding.
5. **Business Insight** — the operational meaning that can reasonably be derived from the finding.
6. **Decision / Recommendation** — an action or management response justified by the evidence.

The project must not skip these stages.

---

#### 3.6.7.2 Stage 3.5 Validation Boundary
---

Stage 3.6 findings must use the P1 KPI portfolio whose validation gate was passed in Stage 3.5.

The current controlled KPI foundation is:

| KPI | Validated Baseline | Stage 3.5 Status |
|---|---:|---|
| Completed Loads | **85,410** | Approved |
| Completed Trips | **85,410** | Approved with Limitation |
| Total Revenue | **262,525,800.29** | Approved |
| On-Time Delivery % | **44.61%** | Approved with Limitation |
| Fleet Utilization % | Source-defined metric | Approved with Limitation |
| Active Fleet Count | **92** | Approved with Limitation |
| Total Fuel Consumption | **24,493,560.80 gallons** | Approved with Limitation |
| Average Fuel Efficiency | Source-defined metric | Approved with Limitation |
| Fuel Cost | **95,499,723.14** | Approved with Limitation |

These values establish the validated starting point for diagnostic investigation.

They are not themselves diagnostic findings.

---

#### 3.6.7.3 Finding Qualification Criteria
---

An observed pattern may be classified as a **Diagnostic Finding** only when all relevant conditions below are satisfied:

- The underlying KPI is Stage 3.5 validated.
- The KPI definition and calculation have not been altered.
- The appropriate analytical grain is preserved.
- The comparison basis is valid.
- The investigated population is adequate for interpretation.
- The difference or pattern is materially meaningful.
- Relevant data-quality limitations have been assessed.
- Relevant exceptions have been considered.
- The pattern is sufficiently stable or otherwise sufficiently supported.
- The interpretation remains within the available evidence.
- The finding has clear relevance to the underlying business question.

If these conditions are not satisfied, the result must not be promoted to a diagnostic finding.

---

#### 3.6.7.4 Finding Classification
---

Each investigation should receive one primary classification:

| Classification | Meaning |
|---|---|
| No Material Pattern | No meaningful difference or pattern identified |
| Observation | A pattern is visible but does not yet support a diagnostic conclusion |
| Diagnostic Finding | Evidence sufficiently supports a material operational finding |
| Finding with Limitation | Evidence supports the finding, but a material limitation constrains interpretation |
| Data Limitation | Available evidence prevents reliable diagnostic interpretation |

A **Finding with Limitation** must retain the relevant limitation in the business interpretation.

---

#### 3.6.7.5 Materiality Standard
---

Materiality will not be defined by a single universal percentage threshold.

A pattern will be evaluated using the combined context of:

- Magnitude
- Operational volume
- Population affected
- Persistence
- Relative position against the baseline
- Data completeness
- Analytical grain
- Business significance
- Decision relevance

For example, a relatively small percentage difference affecting a very large operational population may warrant greater attention than a large percentage difference affecting only a very small population.

---

#### 3.6.7.6 Business Question Alignment
---

Every diagnostic finding must remain explicitly connected to the business question that triggered the investigation.

Examples:

**Q2 — How reliable is delivery performance?**

A finding should explain a meaningful delivery-reliability pattern rather than simply report the overall **44.61% On-Time Delivery %**.

**Q4 — How effectively is the fleet being utilized?**

A finding should explain a meaningful utilization pattern at the validated truck-month grain rather than simply report the source-defined utilization KPI.

**Q5 — What are the major drivers of operating cost and fuel efficiency?**

A finding may identify meaningful associations among fuel consumption, fuel cost, efficiency, route, time, or operational activity, but must not claim causation without supporting evidence.

---

#### 3.6.7.7 Interpretation of the On-Time Delivery KPI
---

The Stage 3.5 validated On-Time Delivery KPI has a baseline of **44.61%**, with **38,102 on-time** and **47,308 late** delivery events.

The KPI uses the source-defined **±120-minute tolerance**.

Therefore, a Stage 3.6 finding based on delivery reliability must:

- Preserve the validated tolerance.
- Avoid presenting the tolerance as independently established business policy.
- Consider the delivery-event analytical grain.
- Consider the identified **486 / 0.569% chronology reversals** where chronology affects the investigation.
- Avoid causal claims unless additional evidence supports them.

The overall 44.61% result is a baseline, not by itself a finding about why delivery performance differs.

---

#### 3.6.7.8 Interpretation of Fleet Utilization
---

Fleet Utilization % is validated at the **truck-month grain** using the source-defined metric.

Stage 3.5 identified:

- **436 truck-month records** above 100%.
- **13.16%** of truck-month records exceeding 100%.
- Maximum observed utilization of **148.40%**.

These values must not automatically be classified as data errors or capped at 100%.

A diagnostic finding may investigate where these values occur and whether they represent a meaningful operational pattern, but the analysis must not invent an alternative utilization formula unless separately validated.

---

#### 3.6.7.9 Interpretation of Asset-Level Findings
---

Asset-level findings involving drivers, trucks, or trailers must account for incomplete assignment coverage.

Stage 3.5 established that:

- **4,952 completed trips / 5.80%** lack at least one driver, truck, or trailer assignment.

Therefore:

- Asset-level rankings must not automatically be presented as complete population rankings.
- Missing assignments must not be interpreted as zero performance.
- Conclusions about individual assets require sufficient attributable activity.
- Asset-level findings must disclose the relevant attribution limitation when material.

---

#### 3.6.7.10 Interpretation of Fuel and Efficiency Findings
---

Fuel-related findings must preserve the validated source and grain characteristics.

Stage 3.5 established:

- Total Fuel Consumption baseline: **24,493,560.80 gallons**.
- Fuel Cost baseline: **95,499,723.14**.
- Fuel-purchase truck attribution is incomplete for **1.98%** of records.
- Fuel-purchase driver attribution is incomplete for **2.03%** of records.
- Average Fuel Efficiency uses a **source-defined methodology that was not independently reproducible**.

Therefore, fuel findings may identify observed associations and performance differences, but must not imply complete truck-level attribution or independently validated source methodology where those limitations remain.

---

#### 3.6.7.11 Association vs Causation
---

A diagnostic finding must distinguish between what the data demonstrates and what the data merely suggests.

Acceptable interpretation:

> A route demonstrates lower On-Time Delivery % and higher fuel cost than the overall baseline.

Potentially acceptable with supporting evidence:

> The route's delivery performance is associated with higher operational duration.

Unsupported interpretation:

> Higher fuel cost causes delivery delays.

Unless causal evidence is available, findings should use terms such as:

- Associated with
- Coincides with
- Shows a higher/lower rate
- Demonstrates a pattern
- Concentrates
- Warrants further investigation

---

#### 3.6.7.12 Business Insight Qualification
---

A business insight may be produced only after the underlying diagnostic finding has been qualified.

The insight should answer:

> **What does this validated finding mean for the operation?**

A business insight must:

- Reference the relevant finding.
- Explain operational significance.
- Avoid introducing unsupported causes.
- Retain material limitations.
- Connect to the original business question.
- Identify why management should care.

The insight must add interpretation rather than simply repeat the KPI value.

---

#### 3.6.7.13 Decision and Recommendation Qualification
---

A recommendation may be proposed only when the qualified finding has sufficient decision relevance.

The recommendation should be proportional to the evidence.

Examples of appropriate decision framing include:

- Investigate a materially underperforming route.
- Review operational practices at a facility showing persistent performance differences.
- Examine high-utilization truck-month patterns.
- Investigate recurring fuel-efficiency differences.
- Monitor a pattern where evidence is currently insufficient for intervention.

The project must not prescribe operational changes solely because a segment ranks worst on a single KPI.

---

#### 3.6.7.14 Finding Confidence
---

Each qualified finding should communicate the strength of available evidence.

| Evidence Strength | Interpretation |
|---|---|
| High | Multiple validation checks support a material and persistent pattern |
| Moderate | Evidence supports the pattern but one or more meaningful limitations remain |
| Low | Pattern is visible but evidence is insufficient for a strong diagnostic conclusion |

Evidence strength is not a statistical significance label.

It communicates the practical strength of the analytical evidence available for business interpretation.

---

#### 3.6.7.15 Prohibited Analytical Escalation
---

The following transitions are prohibited without additional evidence:

- KPI result → automatic finding
- Ranking → automatic bottleneck
- Correlation → causation
- High volume → poor performance
- Low percentage → operational failure
- Outlier → data error
- Utilization >100% → invalid record
- Missing assignment → zero performance
- Source-defined metric → independently validated methodology
- Observation → recommendation without business interpretation

These controls protect the project from overstating what the dataset can support.

---

#### 3.6.7.16 Finding Qualification Record
---

Every final diagnostic finding should be recorded using the following structure:

| Field | Required Content |
|---|---|
| Business Question | Q1–Q19 reference |
| Investigation Objective | What was being investigated |
| Validated KPI(s) | KPI used as evidence |
| KPI Validation Status | Stage 3.5 status |
| Baseline | Validated reference value |
| Analytical Grain | Grain used for investigation |
| Segmentation | Dimension(s) investigated |
| Comparison Basis | Reference used |
| Observed Pattern | What the analysis showed |
| Validation Evidence | Checks supporting the pattern |
| Limitations | Relevant known constraints |
| Finding Classification | Observation / Finding / Finding with Limitation / Data Limitation |
| Evidence Strength | High / Moderate / Low |
| Business Meaning | Operational interpretation |
| Decision Relevance | Why management may care |
| Recommendation | Only where evidence supports action |

This record will provide traceability from the validated KPI through investigation to business interpretation.

---

#### 3.6.7.17 Stage 3.6.7 Decision

---

The finding qualification and business interpretation framework was established to ensure that analytical observations are not promoted to business findings without sufficient evidence, materiality, business-question alignment, and limitation assessment.

The framework distinguishes between:

* observed patterns;
* validated findings;
* qualified business insights;
* decision-relevant implications; and
* recommendations requiring additional evidence or management judgment.

The framework also requires association and correlation to remain distinct from causation unless additional evidence supports a causal interpretation.

These qualification controls were subsequently carried into downstream analytical execution. Actual findings and interpretations were evaluated against the documented KPI definitions, analytical populations, grain controls, data-quality limitations, and evidence requirements.

The original Stage 3.6.7 framework therefore remains the controlled **design specification**, while its execution state is evidenced through the downstream analytical and BI workflow.

## **Status: FINDING QUALIFICATION & BUSINESS INTERPRETATION DEFINED / CARRIED INTO DOWNSTREAM ANALYTICAL EXECUTION**

---

### 3.6.8 Investigation Output & Documentation Standard
---

The investigation output standard defines the evidence record that must be produced when Stage 3.6 diagnostic investigations are executed.

This section does not create analytical findings in advance. It establishes the required structure for documenting actual results derived from the validated KPI foundation, approved analytical scope, investigation priorities, segmentation design, and evidence-validation framework.

#### 3.6.8.1 Output Objective
---

Every executed investigation must produce a traceable analytical record that connects:

**Business Question → Validated KPI → Investigation → Evidence → Finding Classification → Business Meaning → Decision Relevance**

The output must allow another analyst to understand:

- What was investigated.
- Why it was investigated.
- Which validated KPI was used.
- At what grain the analysis was performed.
- What the comparison showed.
- What validation was performed.
- What limitations affected interpretation.
- Whether the result qualifies as a finding.
- What business meaning is supported by the evidence.

---

#### 3.6.8.2 Investigation Output Status
---

Stage 3.6 has been established as the controlled design and analytical-control framework, with its execution requirements subsequently carried into downstream analytical and BI execution.

Therefore, this section defines the required output structure but does not populate it with fabricated findings.

Actual values, segment comparisons, diagnostic evidence, business insights, and recommendations will be added only during analytical execution.

This preserves the project control principle:

**Evidence → Analysis → Decision → Documentation**

---

#### 3.6.8.3 Required Investigation Record
---

Every executed investigation should contain the following fields:

| Field | Requirement |
|---|---|
| Investigation ID | Unique identifier |
| Business Question | Q1–Q19 reference |
| Priority | P1 / P2 / P3 |
| Investigation Objective | Specific analytical objective |
| Validated KPI(s) | KPI(s) used |
| Stage 3.5 Status | Approved / Approved with Limitation |
| Analytical Grain | Grain used |
| Analytical Period | Period investigated |
| Population | Records/entities included |
| Segmentation | Dimension(s) used |
| Comparison Basis | Baseline or peer reference |
| KPI Result | Actual calculated result |
| Observed Pattern | Actual observed difference/pattern |
| Validation Checks | Checks performed |
| Data-Quality Impact | Relevant inherited limitations |
| Diagnostic Evidence | Evidence supporting interpretation |
| Evidence Status | Sufficient / Limited / Observation / Insufficient |
| Finding Classification | Final classification |
| Evidence Strength | High / Moderate / Low |
| Business Meaning | Supported operational interpretation |
| Decision Relevance | Management significance |
| Recommendation | Only where justified |
| Investigation Status | Complete / Requires Further Investigation |

---

#### 3.6.8.4 Investigation ID Convention
---

Executed investigations should use a consistent identifier based on the business-question hierarchy.

Recommended structure:

- `Q01` — Overall operational performance
- `Q02` — Delivery reliability
- `Q03` — Delivery-performance differences
- `Q04` — Fleet utilization
- `Q05` — Operating cost and fuel efficiency
- `Q06` — Route / operational-area performance
- `Q07` — Facility investigation
- `Q08–Q15` — Supporting diagnostics
- `Q16–Q19` — Exploratory investigations

Where multiple investigations are required for the same business question, a secondary identifier may be used.

Example:

`Q03-01` — Delivery performance by route

`Q03-02` — Delivery performance by facility

`Q03-03` — Delivery performance over time

The identifier must remain stable across analysis, documentation, and final reporting.

---

#### 3.6.8.5 Required Analytical Traceability
---

Each investigation must be traceable back to:

- The originating business question in Section 3.3.
- The validated KPI definition in Section 3.4.
- The KPI validation decision in Section 3.5.
- The investigation priority in Section 3.6.2.
- The segmentation and comparison design in Section 3.6.5.
- The evidence-validation framework in Section 3.6.6.
- The finding qualification rules in Section 3.6.7.

This creates a controlled analytical lineage from business requirement to final finding.

---

#### 3.6.8.6 Baseline Documentation
---

The baseline must be recorded before interpreting segment-level results.

The baseline should include:

- KPI name
- KPI value
- Population
- Period
- Analytical grain
- Relevant Stage 3.5 limitation

For the current P1 portfolio, the validated baseline foundation includes:

- **85,410 Completed Loads**
- **85,410 Completed Trips**
- **262,525,800.29 Total Revenue**
- **44.61% On-Time Delivery**
- **92 Active Fleet Count**
- **24,493,560.80 gallons Total Fuel Consumption**
- **95,499,723.14 Fuel Cost**

Fleet Utilization % and Average Fuel Efficiency must retain their source-defined methodology rather than introducing an unvalidated replacement calculation.

---

#### 3.6.8.7 Observed Pattern Documentation
---

The observed pattern must describe what the analysis actually shows without prematurely assigning business meaning.

Examples of acceptable observations:

- A segment has a lower On-Time Delivery % than the overall baseline.
- A subset of truck-month records shows materially higher utilization.
- A route accounts for a large share of operational volume.
- Fuel cost is concentrated in a subset of operational segments.
- A performance difference persists across multiple periods.

The observation must remain separate from the explanation of why the pattern exists.

---

#### 3.6.8.8 Diagnostic Evidence Documentation
---

Where an observed pattern requires deeper investigation, the supporting evidence must be documented.

Potential evidence includes:

- Time persistence
- Segment concentration
- Operational volume
- Related KPI behavior
- Relevant asset characteristics
- Facility or route characteristics
- Maintenance patterns
- Fuel or efficiency patterns
- Delivery-event characteristics

Only evidence supported by the available dataset should be included.

Unmeasured explanations must not be presented as established causes.

---

#### 3.6.8.9 Limitation Documentation
---

Relevant Stage 2 and Stage 3.5 limitations must be carried into the investigation record when they affect interpretation.

Examples include:

- **5.80%** of completed trips missing at least one driver, truck, or trailer assignment.
- **486 / 0.569%** chronology reversals between pickup and delivery timestamps.
- **436 / 13.16%** truck-month utilization records above 100%.
- **1.98%** of fuel-purchase records missing truck identifiers.
- Source-defined Average Fuel Efficiency methodology not independently reproducible.
- On-Time Delivery % based on the source-defined **±120-minute tolerance**, whose formal business-policy basis was not independently verified.

Limitations must be attached to the relevant finding rather than copied indiscriminately into every investigation.

---

#### 3.6.8.10 Finding Documentation
---

A qualified finding must document:

1. What was measured.
2. What difference or pattern was observed.
3. Where it occurred.
4. How it was validated.
5. What evidence supports the interpretation.
6. What limitations remain.
7. Why the finding matters operationally.
8. Whether management attention may be warranted.

The finding must be stated at the level supported by the evidence.

---

#### 3.6.8.11 Business Insight Documentation
---

The business insight must translate a qualified finding into operational meaning.

It should answer:

> **What should a business stakeholder understand from this finding?**

The insight must not:

- Simply repeat the KPI result.
- Introduce unsupported causes.
- Ignore relevant limitations.
- Convert association into causation.
- Claim a problem is solved merely because a pattern was identified.

A strong insight connects the validated analytical result to operational significance.

---

#### 3.6.8.12 Decision Relevance Documentation
---

Each qualified finding should indicate whether it has potential decision relevance.

Possible outcomes include:

- Management attention warranted
- Further operational investigation warranted
- Monitoring recommended
- No immediate action required
- Evidence insufficient for action
- Data limitation prevents decision support

A recommendation should be included only when the evidence supports an actionable response.

---

#### 3.6.8.13 Recommendation Standard
---

Recommendations must be proportional to the strength of evidence.

Examples of evidence-aligned recommendation types include:

- Investigate a persistently underperforming facility.
- Review routes with material and sustained delivery-performance differences.
- Examine unusually high truck-month utilization patterns.
- Review recurring fuel-efficiency differences.
- Monitor a pattern where evidence is not yet sufficient for intervention.

Recommendations should not prescribe operational changes solely from rankings or correlations.

---

#### 3.6.8.14 Investigation Completion Record
---

An investigation may be marked **Complete** only when:

- The business question is identified.
- The validated KPI is identified.
- The analytical grain is confirmed.
- The baseline is established.
- The segmentation/comparison is completed.
- Required validation checks are performed.
- Relevant limitations are documented.
- The evidence status is assigned.
- The finding classification is assigned.
- Business interpretation is documented where supported.
- Decision relevance is documented.

An investigation may instead be marked **Requires Further Investigation** when evidence is incomplete or the observed pattern cannot yet be reliably explained or qualified.

---

#### 3.6.8.15 Stage 3.6 Output Categories
---

The final Stage 3.6 investigation record may produce one of the following outcomes:

| Output | Meaning |
|---|---|
| No Material Pattern | Investigation completed without meaningful finding |
| Observation | Pattern identified but not sufficiently supported for diagnostic conclusion |
| Diagnostic Finding | Evidence supports a material operational finding |
| Finding with Limitation | Finding supported but materially constrained |
| Data Limitation | Dataset prevents reliable interpretation |
| Requires Further Investigation | Additional evidence or analysis is necessary |

These outcomes must not be converted into stronger conclusions merely for reporting purposes.

---

#### 3.6.8.16 Documentation Separation
---

The project will maintain a clear distinction between:

**Design Documentation**

What the project intends to investigate and how it will validate the result.

**Execution Evidence**

What the actual analysis produced.

**Business Interpretation**

What the validated result means operationally.

**Decision Output**

What action or management response may be appropriate.

The existence of a planned investigation section does not constitute evidence that the investigation has been executed.

---

#### 3.6.8.17 Stage 3.6.8 Decision
---

The investigation output and documentation standard was established to ensure that analytical work remains traceable from the original business question through baseline, analysis, evidence, finding, interpretation, and decision relevance.

The required documentation structure distinguishes:

* analytical question;
* KPI and baseline;
* observed pattern;
* diagnostic evidence;
* data-quality limitation;
* qualified finding;
* business insight;
* decision relevance; and
* recommendation where supported.

This separation prevents analytical observations, validated findings, business interpretations, and recommendations from being presented as interchangeable outputs.

The defined investigation-output standard was subsequently carried into downstream analytical and BI execution. The resulting workflow retained the required traceability, evidence qualification, limitation disclosure, and separation between observed evidence and management interpretation.

The original Stage 3.6.8 framework therefore remains the controlled **design and documentation specification**, while its execution state is evidenced through the downstream analytical, validation, and BI workflow.

## **Status: INVESTIGATION OUTPUT & DOCUMENTATION STANDARD DEFINED / CARRIED INTO DOWNSTREAM ANALYTICAL EXECUTION**

---

### 3.6.9 Stage 3.6 Completion Criteria
---

Stage 3.6 will be considered complete only when the defined diagnostic and investigation framework has been executed against the prioritized business questions and the resulting evidence has been reviewed and documented.

The existence of Sections 3.6.1–3.6.8 does not constitute completion. Stage 3.6 requires actual analytical execution and evidence.

#### 3.6.9.1 Completion Objective
---

The Stage 3.6 completion gate ensures that the project has progressed from **planned investigation design** to **evidence-supported diagnostic analysis**.

Completion requires:

**Validated KPI Foundation → Investigation Execution → Evidence Validation → Finding Qualification → Business Interpretation → Decision Relevance**

Only after this sequence has been completed should Stage 3.6 be closed.

---

#### 3.6.9.2 Required Foundation

---

Before Stage 3.6 execution can be accepted, the following must already be available:

* Stage 3.2 business objectives.
* Stage 3.3 prioritized business questions.
* Stage 3.4 KPI definitions.
* Stage 3.5 P1 KPI validation and approval.
* Stage 3.6.1 analytical scope.
* Stage 3.6.2 diagnostic investigation priorities.
* Stage 3.6.3 investigation framework and evidence requirements.
* Stage 3.6.4 analytical scope.
* Stage 3.6.5 analytical segmentation and comparison design.
* Stage 3.6.6 diagnostic evidence and validation design.
* Stage 3.6.7 finding qualification and business interpretation.
* Stage 3.6.8 investigation output and documentation standard.

## Stage 3.6 execution must use these as controlled inputs rather than redefining them during analysis.

---

#### 3.6.9.3 P1 Investigation Completion
---

The P1 investigation sequence must be executed beginning with the Core Management Questions:

1. **Q1 — Overall operational performance**
2. **Q2 — Delivery reliability**
3. **Q3 — Delivery-performance differences**
4. **Q4 — Fleet utilization**
5. **Q5 — Operating cost and fuel efficiency**
6. **Q6 — Route / operational-area performance**
7. **Q7 — Facility investigation**

The investigation sequence must remain evidence-driven.

A question does not require a diagnostic finding merely because it is classified as P1.

---

#### 3.6.9.4 P1 KPI Evidence Foundation
---

The P1 investigations must use the validated KPI portfolio from Stage 3.5.

The controlled KPI foundation is:

| KPI | Stage 3.5 Status | Diagnostic Treatment |
|---|---|---|
| Completed Loads | Approved | Primary operational-volume measure |
| Completed Trips | Approved with Limitation | Preserve incomplete asset attribution |
| Total Revenue | Approved | Primary value measure |
| On-Time Delivery % | Approved with Limitation | Preserve ±120-minute tolerance limitation |
| Fleet Utilization % | Approved with Limitation | Preserve truck-month grain and >100% observations |
| Active Fleet Count | Approved with Limitation | Preserve relevant attribution limitations |
| Total Fuel Consumption | Approved with Limitation | Preserve incomplete asset attribution |
| Average Fuel Efficiency | Approved with Limitation | Preserve source-methodology limitation |
| Fuel Cost | Approved with Limitation | Preserve fuel-purchase attribution limitation |

No P1 KPI remains in a **Requires Validation** or **Deferred** state.

---

#### 3.6.9.5 Baseline Completion Requirement
---

Each executed P1 investigation must establish its relevant baseline before segmentation and comparison.

The validated portfolio provides the following overall baseline values:

- **85,410 Completed Loads**
- **85,410 Completed Trips**
- **262,525,800.29 Total Revenue**
- **44.61% On-Time Delivery**
- **92 Active Fleet Count**
- **24,493,560.80 gallons Total Fuel Consumption**
- **95,499,723.14 Fuel Cost**

Fleet Utilization % and Average Fuel Efficiency must continue to use their validated source-defined methodologies.

The baseline must be interpreted according to the applicable KPI grain and time period.

---

#### 3.6.9.6 Investigation Execution Requirement
---

For each executed investigation, the project must document:

- Business question
- Investigation objective
- Validated KPI(s)
- Analytical grain
- Analytical period
- Population
- Segmentation
- Comparison basis
- Baseline
- Observed result
- Validation checks
- Relevant limitations
- Evidence status
- Finding classification
- Business interpretation where supported
- Decision relevance

An investigation cannot be marked complete from a visualization alone.

The underlying analytical result must be reproducible and explainable.

---

#### 3.6.9.7 Diagnostic Evidence Requirement
---

A diagnostic finding must have evidence beyond the initial KPI result.

Where applicable, the investigation should demonstrate:

- Meaningful segment difference
- Adequate population
- Operational scale
- Persistence
- Grain validity
- Data-quality consideration
- Relevant supporting KPI behavior
- Diagnostic evidence

The evidence required will depend on the specific business question.

No universal analytical test will be imposed where it is not appropriate to the KPI or investigation.

---

#### 3.6.9.8 Data-Quality Completion Requirement
---

Known limitations must be considered in every investigation where they can affect interpretation.

The Stage 3.6 completion review must verify appropriate treatment of:

- **5.80%** of completed trips missing at least one driver, truck, or trailer assignment.
- **486 / 0.569%** chronology reversals.
- **436 / 13.16%** truck-month utilization records above 100%.
- **1.98%** of fuel-purchase records missing truck identifiers.
- Source-defined Average Fuel Efficiency methodology not independently reproducible.
- On-Time Delivery % source-defined **±120-minute tolerance** whose formal business-policy basis was not independently verified.

These limitations must not be silently removed from the analytical record.

---

#### 3.6.9.9 Finding Qualification Requirement
---

Every material observed pattern must receive a final classification:

- No Material Pattern
- Observation
- Diagnostic Finding
- Finding with Limitation
- Data Limitation
- Requires Further Investigation

A diagnostic finding requires sufficient evidence under the rules established in Section 3.6.7.

If the evidence is insufficient, the result must remain an observation or limitation.

---

#### 3.6.9.10 Business Interpretation Requirement
---

Every qualified diagnostic finding must have a corresponding business interpretation.

The interpretation must:

- Explain operational significance.
- Remain consistent with the evidence.
- Preserve material limitations.
- Avoid unsupported causal claims.
- Remain aligned with the originating business question.

A numerical result without business interpretation is not a completed diagnostic output.

---

#### 3.6.9.11 Decision-Relevance Requirement
---

Each qualified finding must be assessed for decision relevance.

Possible outcomes include:

- Management attention warranted
- Further investigation warranted
- Monitoring warranted
- No immediate action required
- Evidence insufficient for action
- Data limitation prevents decision support

A recommendation is optional when evidence does not justify action.

The absence of a recommendation is acceptable when the correct business conclusion is to monitor or investigate further.

---

#### 3.6.9.12 Supporting Diagnostic Activation
---

Q8–Q15 will be considered activated only when the P1 investigation produces a meaningful pattern requiring deeper investigation.

The project does not need to force execution of every supporting diagnostic question.

Examples:

- A delivery-performance difference may activate Q8.
- Significant route concentration may activate Q9.
- Fleet utilization differences may activate Q10.
- A supported driver-performance pattern may activate Q11.
- Maintenance-related patterns may activate Q12 or Q13.
- A meaningful time pattern may activate Q14 or Q15.

Activation must be documented with the evidence that justified the additional investigation.

---

#### 3.6.9.13 Exploratory Analysis Boundary
---

Q16–Q19 remain exploratory.

They should not be allowed to delay completion of the P1 diagnostic investigation.

Exploratory analysis may proceed only when:

- Core investigations are sufficiently advanced.
- The analysis has clear business relevance.
- Required data supports the investigation.
- The additional work does not compromise the Stage 3 timeline.

Q19 must remain constrained by the availability of defensible profitability or margin inputs.

---

#### 3.6.9.14 Reproducibility Requirement
---

A completed investigation must be reproducible from the documented analytical logic and source data.

Another analyst should be able to understand:

- Which data was used.
- Which KPI was applied.
- Which grain was used.
- Which filters or segments were applied.
- Which comparison was performed.
- How the result was validated.
- How the finding was classified.

Reproducibility is required for important project findings.

---

#### 3.6.9.15 Stage 3.6 Evidence Package
---

Before closure, the project should contain an evidence package consisting of:

- Executed investigation records.
- Analytical outputs/results.
- Validation evidence.
- Relevant tables or analytical extracts.
- Documented findings.
- Business interpretations.
- Decision relevance.
- Limitations and exceptions.
- Investigation status.

The package must represent actual execution rather than planned analysis.

---

#### 3.6.9.16 Stage 3.6 Completion Checklist
---

Stage 3.6 may be marked complete only when all applicable conditions are satisfied:

- [ ] Analytical scope executed within approved boundaries.
- [ ] P1 Q1–Q7 investigations addressed.
- [ ] Validated P1 KPIs used without unauthorized redefinition.
- [ ] Appropriate analytical grain maintained.
- [ ] Baselines established.
- [ ] Required segment comparisons performed.
- [ ] Material differences investigated.
- [ ] Relevant data-quality limitations incorporated.
- [ ] Exceptions appropriately treated.
- [ ] Diagnostic evidence documented.
- [ ] Findings classified.
- [ ] Business interpretations documented where supported.
- [ ] Decision relevance assessed.
- [ ] Supporting diagnostics activated where justified.
- [ ] Exploratory work remained subordinate to core priorities.
- [ ] Investigation outputs are traceable and reproducible.
- [ ] No unsupported causal claims or manufactured findings remain.

---

#### 3.6.9.17 Stage 3.6 Closure Rule
---

Stage 3.6 must not be closed merely because the eight subsections have been written.

The stage is complete only when the analytical design has been **executed against the validated data and the resulting evidence has been reviewed and documented**.

The governing distinction is:

**Designed ≠ Executed**

**Executed ≠ Validated**

**Validated ≠ Business Conclusion**

Only after the complete evidence chain is established may Stage 3.6 be marked complete.

---

#### 3.6.9.18 Stage 3.6.9 Decision
---

Stage 3.6 established the controlled completion criteria for diagnostic analytical work across scope, priorities, investigation framework, segmentation, evidence validation, finding qualification, documentation, and completion controls.

The completion criteria require the analytical evidence chain to remain explicit:

**Executed ≠ Validated**

**Validated ≠ Business Conclusion**

Only evidence that satisfies the applicable population, grain, validation, limitation, and business-question requirements may be treated as a qualified analytical finding.

The defined Stage 3.6 completion criteria were subsequently carried into downstream analytical and BI execution. The resulting workflow applied the documented KPI definitions, analytical populations, grain controls, data-quality limitations, and evidence-validation requirements when interpreting operational results.

The original Stage 3.6 completion criteria therefore remain the **design and governance gate**, while their execution state is evidenced through the subsequent analytical, KPI reconciliation, BI implementation, and validation workflow.

Stage 3.6 is therefore considered complete as a design and analytical-control framework, with downstream execution evidence retained in the corresponding project artifacts.

## **Status: STAGE 3.6 COMPLETION CRITERIA DEFINED / CARRIED INTO DOWNSTREAM ANALYTICAL EXECUTION AND VALIDATION**

---

### 3.7.1 Final Analytical Workstreams
---

The final analytical workstreams convert the approved business questions and Stage 3.6 investigation design into a practical set of analysis streams to be executed during Stage 5. Each workstream has a defined business purpose, analytical focus, and expected decision-support outcome.

The workstreams are organized from overall operational performance toward increasingly diagnostic and exploratory analysis. Diagnostic and exploratory streams are activated according to the investigation rules and evidence established in Stage 3.6.

| Workstream | Analytical Focus | Primary Business Questions | Expected Analytical Outcome |
|---|---|---|---|
| **W1 — Overall Operational Performance** | Establish the overall operational baseline across volume, activity, revenue, delivery, fleet, fuel, and cost measures. | Q1 | Overall performance baseline and identification of areas requiring deeper investigation. |
| **W2 — Delivery Reliability** | Evaluate delivery reliability and identify meaningful differences across relevant operational dimensions. | Q2, Q3 | Delivery-performance patterns, segment differences, and validated areas requiring diagnosis. |
| **W3 — Fleet Performance** | Evaluate fleet utilization, active fleet levels, and supported asset-performance patterns. | Q4 | Fleet utilization baseline, meaningful utilization differences, and potential asset-level investigation areas. |
| **W4 — Fuel & Cost Performance** | Analyze fuel consumption, fuel efficiency, fuel cost, and relevant cost-efficiency relationships. | Q5 | Fuel and cost performance patterns, material differences, and areas requiring further diagnosis. |
| **W5 — Route Performance** | Compare routes using operational volume, delivery reliability, revenue, fuel, efficiency, and cost measures where applicable. | Q6, Q9, Q17 | Identification of materially stronger or weaker route-performance patterns and high-contribution routes. |
| **W6 — Facility Performance** | Compare facilities across operational activity, delivery reliability, fleet activity, revenue, and cost-related measures. | Q7 | Identification of facilities demonstrating meaningful performance differences requiring investigation. |
| **W7 — Driver / Asset Diagnostics** | Investigate materially different supported performance patterns across drivers, trucks, and trailers. | Q10, Q11 | Identification of asset or driver patterns requiring diagnostic interpretation, subject to data-quality limitations. |
| **W8 — Maintenance Diagnostics** | Examine maintenance activity and cost patterns and assess their relationship with supported fleet-performance measures. | Q12, Q13 | Maintenance-related patterns and evidence for or against further investigation. |
| **W9 — Time-Based Analysis** | Evaluate operational performance changes over time and identify meaningful recurring or seasonal patterns. | Q14, Q15 | Trend patterns, period differences, and recurring operational signals. |
| **W10 — Customer / Efficiency Exploration** | Explore customer contribution and relationships between operational volume, efficiency, and cost-related measures where supported. | Q16, Q17, Q18 | Exploratory patterns that may support additional business investigation or segmentation. |
| **W11 — Profitability Support Assessment** | Assess whether the available data provides sufficient analytical support for profitability or margin analysis. | Q19 | Explicit determination of whether profitability analysis is supported, limited, or outside the defensible analytical scope. |

#### Workstream Execution Principles
---

1. **Business-question driven:** Every workstream must trace to one or more approved Stage 3.3 business questions.

2. **Investigation controlled:** Workstreams must follow the investigation framework established in Stage 3.6 rather than becoming unrestricted exploratory analysis.

3. **Evidence before escalation:** A workstream may progress from baseline analysis to deeper diagnosis only when the observed pattern satisfies the applicable validation and evidence requirements.

4. **Grain-aware execution:** Each analysis must preserve the validated grain of the underlying KPI and analytical population. Cross-grain calculations must not create duplicated measures.

5. **Data-quality aware:** Known Stage 2 and Stage 3.5 limitations must be considered when interpreting analytical results, particularly for dimensional attribution, chronology, fleet utilization, fuel linkage, and source-defined measures.

6. **Core-period first:** Analytical execution should primarily use the validated core operational period of **2022-01-01 through 2024-12-31**. Supporting data outside this period must not automatically be treated as equivalent analytical coverage.

7. **Diagnostic before recommendation:** A descriptive difference or ranking is not itself a business finding. Deeper investigation must establish sufficient evidence before a business interpretation or decision implication is recorded.

8. **Decision relevance:** Each completed workstream should ultimately clarify what the observed result means for the business and whether it requires management attention, further investigation, monitoring, or no action.

9. **Tool-neutral execution:** The analytical method and tool should be selected according to the requirement and evidence needed, not to demonstrate a particular technology.

10. **Reproducibility:** Analytical outputs must be reproducible through documented logic, controlled populations, and identifiable analytical artifacts.

#### Workstream Dependency
---

The workstreams follow a progressive analytical path:

**Overall Baseline → Delivery Reliability → Fleet Performance → Fuel & Cost → Route / Facility Comparison → Conditional Diagnostics → Time-Based Analysis → Exploratory Analysis → Final Business Analysis**

This sequence ensures that deeper analysis is driven by evidence from earlier stages rather than by arbitrary segmentation or unsupported assumptions.

#### Expected Stage 3.7 Outcome
---

The final analytical workstreams provide the execution structure for Stage 5 analysis. They define **what will be analyzed**, while the subsequent sections of Stage 3.7 define **when, how, with which population, using which methods, and in what output format** the analysis will be executed.

---

### 3.7.2 Analytical Execution Sequence
---

The analytical execution sequence defines the controlled order for executing the approved business questions and analytical workstreams. It inherits the KPI approvals from Section 3.5 and the investigation controls established in Section 3.6, ensuring that analysis progresses from validated operational baselines to evidence-supported diagnostic and exploratory analysis.

The sequence is designed to prevent premature segmentation, unsupported conclusions, and uncontrolled exploratory analysis. Q1–Q7 form the primary management-analysis path; Q8–Q15 are activated according to evidence from the core analysis, while Q16–Q19 remain controlled exploratory or analytical-support assessments.

#### Execution Sequence
---

| Sequence | Analysis | Business Questions | Primary Measures / Evidence | Execution Purpose | Activation |
|---|---|---|---|---|---|
| **1** | **Overall Operational Baseline** | Q1 | Completed Loads, Completed Trips, Total Revenue; supporting On-Time Delivery %, Active Fleet Count, Fleet Utilization %, Total Fuel Consumption, Average Fuel Efficiency, Fuel Cost | Establish the overall operating baseline for the core analytical period and identify whether material performance patterns require deeper investigation. | Mandatory |
| **2** | **Delivery Reliability Analysis** | Q2 | On-Time Delivery % | Establish overall delivery reliability and assess the magnitude and context of delivery-performance performance. | Mandatory |
| **3** | **Delivery Difference Analysis** | Q3 | On-Time Delivery % by Route, Facility, Time and other validated dimensions | Determine where meaningful delivery-performance differences occur and validate whether observed differences warrant diagnostic investigation. | Mandatory |
| **4** | **Fleet Performance Analysis** | Q4 | Fleet Utilization %, Active Fleet Count; supporting Completed Trips | Assess fleet activity and utilization at the validated truck-month grain and identify materially different utilization patterns. | Mandatory |
| **5** | **Fuel & Cost Analysis** | Q5 | Total Fuel Consumption, Average Fuel Efficiency, Fuel Cost; supporting Completed Trips and Total Revenue | Evaluate fuel and cost performance and identify supported relationships or differences requiring further investigation. | Mandatory |
| **6** | **Route Performance Analysis** | Q6, Q9 | Completed Loads, Completed Trips, Total Revenue, On-Time Delivery %, Fleet Utilization %, Total Fuel Consumption, Average Fuel Efficiency, Fuel Cost | Compare route performance using multiple validated measures and identify materially stronger or weaker operational patterns. | Mandatory |
| **7** | **Facility Performance Analysis** | Q7 | Completed Loads, Completed Trips, Total Revenue, On-Time Delivery %, Fuel Cost and other applicable validated measures | Assess facility-level performance differences and determine whether evidence supports further operational investigation. | Mandatory |
| **8** | **Delivery Delay Diagnostics** | Q8 | On-Time Delivery % plus validated operational dimensions and supporting evidence | Investigate factors associated with observed delivery-performance differences where earlier analysis establishes a meaningful pattern. Association must not be interpreted as causation. | Conditional |
| **9** | **Fleet / Driver / Asset Diagnostics** | Q10, Q11 | Fleet Utilization %, Average Fuel Efficiency and applicable supporting measures | Investigate materially different supported performance patterns across trucks, trailers, and drivers while accounting for assignment completeness and population limitations. | Conditional |
| **10** | **Maintenance Diagnostics** | Q12, Q13 | Maintenance-related measures and applicable fleet-performance measures | Examine maintenance activity and cost patterns and assess whether supported relationships with fleet performance warrant further investigation. | Conditional |
| **11** | **Time-Based Performance Analysis** | Q14, Q15 | Applicable approved KPIs across month, quarter, year, and other validated time dimensions | Evaluate performance changes over time and determine whether persistent, recurring, or seasonal patterns are supported by the data. | Core / Conditional by question |
| **12** | **Customer & Efficiency Exploration** | Q16, Q17, Q18 | Revenue, volume, cost, efficiency and other applicable validated measures | Explore customer contribution and relationships between operational volume and efficiency where sufficient analytical support exists. | Exploratory |
| **13** | **Profitability Support Assessment** | Q19 | Revenue and available cost-related measures | Determine whether the available dataset supports defensible profitability or margin analysis without introducing unsupported assumptions. | Exploratory / Scope Assessment |

#### Primary Management Analysis Path
---

The mandatory management-analysis path is:

**Q1 Overall Performance**

↓  

**Q2 Delivery Reliability**

↓  

**Q3 Delivery Differences**

↓  

**Q4 Fleet Utilization**

↓  

**Q5 Fuel & Cost Performance**

↓  

**Q6 Route Performance**

↓  

**Q7 Facility Performance**

This sequence directly follows the priority established in Section 3.6.2 and ensures that management-level questions are addressed before supporting diagnostics or exploratory questions are pursued.

#### Baseline-to-Diagnostic Escalation
---

The execution of each primary analysis follows the controlled progression established in Section 3.6:

**Validated KPI Result**

→ **Segment / Time Comparison**

→ **Observed Difference**

→ **Validation of Difference**

→ **Diagnostic Investigation, if justified**

→ **Finding Classification**

→ **Business Interpretation**

→ **Decision Relevance**

A difference must not automatically be classified as a diagnostic finding. The evidence requirements, grain controls, data-quality considerations, and finding-qualification rules defined in Sections 3.6.3–3.6.7 remain applicable throughout execution.

#### Conditional Diagnostic Activation
---

Supporting diagnostic questions Q8–Q15 are not treated as mandatory independent analyses that must produce findings. They are activated when the preceding analysis provides a defensible analytical reason for further investigation.

Examples include:

- A meaningful delivery-performance difference identified in Q3 may activate **Q8 — Delivery Delay Diagnostics**.
- Material utilization or efficiency differences identified in Q4 or Q5 may activate **Q10 — Fleet / Asset Diagnostics**.
- Maintenance patterns identified during fleet analysis may activate **Q12–Q13 — Maintenance Diagnostics**.
- Persistent performance differences across periods may activate **Q14–Q15 — Time-Based Analysis**.
- Route or facility differences may provide the analytical basis for additional diagnostic segmentation.

If the evidence does not support escalation, the relevant question is recorded as **No Material Pattern**, **Observation**, **Data Limitation**, or another applicable Stage 3.6 classification rather than forcing additional analysis.

#### Exploratory Analysis Sequence
---

Questions Q16–Q19 are executed only after the primary management-analysis path has been addressed and any material diagnostic requirements have been considered.

The exploratory sequence is:

**Core Operational Findings**

→ **Customer Contribution / Efficiency Exploration**

→ **Volume–Efficiency Relationship Analysis**

→ **Profitability Support Assessment**

Exploratory analysis must remain clearly distinguished from approved management findings. Relationships or patterns identified during exploration must satisfy the Stage 3.6 evidence requirements before being promoted to a validated diagnostic finding or business insight.

#### Analytical Population and Period Control
---

Unless a question or validated source limitation requires otherwise, analytical execution uses the approved core operational period:

**2022-01-01 through 2024-12-31**

Supporting data extending into January 2025 must not automatically be combined with the core operational population.

Execution must preserve the applicable analytical grain for each measure, including:

- **Completed Loads:** load grain
- **Completed Trips:** trip grain
- **On-Time Delivery %:** delivery-event-based calculation
- **Fleet Utilization %:** truck-month grain
- **Fuel Consumption / Fuel Cost:** fuel-purchase transaction grain
- **Average Fuel Efficiency:** source-defined measure

Cross-grain analysis must use controlled aggregation or compatible populations to prevent transaction multiplication.

#### Known Validation Constraints Carried Into Execution
---

The following validated limitations remain active during analytical execution:

- **Completed Trips:** 5.80% of trips are missing at least one driver, truck, or trailer assignment; therefore, dimensional attribution must not be interpreted as complete fleet/driver/trailer coverage.
- **Delivery chronology:** 486 trips (0.569%) contain delivery-before-pickup timestamp reversals and must not be silently corrected or removed.
- **On-Time Delivery:** the 44.61% baseline uses the source-defined ±120-minute tolerance; the underlying formal business-policy basis is not independently established.
- **Fleet Utilization:** 436 truck-month records exceed 100%, with a maximum of 148.40%; values must not be arbitrarily capped or corrected.
- **Fuel linkage:** 1.98% of fuel-purchase records lack `truck_id`, approximately 2.03% lack `driver_id`, and 8,471 completed trips have no corresponding fuel purchase record under the validated linkage logic.
- **Average Fuel Efficiency:** the source-defined `average_mpg` measure is approved with limitation because its underlying methodology is not independently reproducible.
- **Raw data:** source data remains immutable throughout analytical execution.

These limitations affect interpretation and attribution but do not invalidate the approved KPI portfolio or overall operational analysis.

#### Execution Control Rules
---

1. **Q1–Q7 must be addressed before final Stage 3 analytical closure.**

2. **Approved KPI definitions from Section 3.5 must not be changed during execution without following KPI change control.**

3. **Stage 3.6 investigation rules remain authoritative for segmentation, comparison, evidence, and finding qualification.**

4. **No analysis may treat association as causation without appropriate causal evidence, which is outside the current analytical scope.**

5. **No ranking, percentage difference, or outlier is automatically treated as a business problem.**

6. **No data-quality exception may be silently removed, corrected, capped, or converted into a business conclusion.**

7. **Dimensional analysis must account for missing assignments and other population limitations before interpretation.**

8. **Every material finding must be reproducible from a documented analytical population, KPI, comparison basis, and calculation approach.**

9. **If no meaningful pattern is established, the correct analytical outcome is a documented absence of a material pattern rather than a forced finding.**

10. **Exploratory analysis must not override or redefine the approved management-analysis scope.**

#### Sequence Completion Logic
---

The sequence is considered analytically progressed when:

**Baseline Established**

→ **Primary Question Analyzed**

→ **Meaningful Differences Identified or Ruled Out**

→ **Differences Validated**

→ **Diagnostics Activated Where Justified**

→ **Findings Classified**

→ **Business Meaning Established**

→ **Decision Relevance Recorded**

This provides the controlled handoff from Stage 3.7 execution planning into the actual analytical work of Stage 5.

#### Transition
---

The execution sequence now establishes **the order, dependencies, activation rules, populations, and controls governing analytical execution**. The next section converts this sequence into a question-level execution map, linking each approved Q1–Q19 business question to the specific analytical work required to answer it.

---

### 3.7.3 Question-to-Analysis Execution Map
---

The Question-to-Analysis Execution Map translates the approved business questions from Section 3.3 into the specific analytical work that will be performed. It uses the KPI definitions and approved measurement logic established in Section 3.4, the validation status and limitations established in Section 3.5, and the investigation controls established in Section 3.6.

Unlike Section 3.3, which defines **what management wants to know**, this section defines **what analytical work will be performed to answer each question**.

#### Core Management Questions — Q1–Q7
---

| Question | Business Question | Analytical Work to Execute | Primary Validated KPI(s) | Analytical Dimensions / Comparison | Expected Output |
|---|---|---|---|---|---|
| **Q1** | How is the logistics operation performing overall? | Establish the overall operational baseline across activity, revenue, delivery reliability, fleet, fuel, efficiency, and cost. Reconcile headline results to approved Stage 3.5 baselines. | Completed Loads, Completed Trips, Total Revenue, On-Time Delivery %, Active Fleet Count, Fleet Utilization %, Total Fuel Consumption, Average Fuel Efficiency, Fuel Cost | Overall operational period; monthly/yearly trend where relevant | Overall performance baseline and identification of areas requiring deeper analysis. |
| **Q2** | How reliable is delivery performance? | Calculate and interpret overall delivery reliability using the approved On-Time Delivery definition and assess the distribution of delivery performance across the core population. | On-Time Delivery % | Overall; time; relevant validated dimensions | Delivery reliability baseline and evidence-supported assessment of overall performance. |
| **Q3** | Where are the most significant delivery-performance differences occurring? | Compare delivery reliability across routes, facilities, and time periods; validate material differences before escalation to diagnostic analysis. | On-Time Delivery % | Route, facility, time; appropriate peer comparisons | Validated delivery-performance differences and candidate areas for further investigation. |
| **Q4** | How effectively is the fleet being utilized? | Analyze fleet utilization and active fleet levels at the validated truck-month grain; examine distribution and materially different utilization patterns without correcting source values. | Fleet Utilization %, Active Fleet Count | Truck-month, time, fleet/asset segments | Fleet utilization baseline, meaningful differences, and limitations affecting interpretation. |
| **Q5** | What are the major drivers of operating cost and fuel efficiency? | Analyze fuel consumption, fuel cost, and source-defined fuel efficiency alongside operational volume and revenue; evaluate supported associations without claiming causality. | Total Fuel Consumption, Average Fuel Efficiency, Fuel Cost | Time, route, fleet/asset dimensions, operational volume | Fuel and cost performance patterns and evidence-supported areas for deeper investigation. |
| **Q6** | Which routes or operational areas demonstrate the strongest and weakest overall performance? | Compare routes using multiple approved KPIs rather than a single ranking; consider operational volume, delivery reliability, revenue, fleet, fuel, efficiency, and cost where applicable. | Completed Loads, Completed Trips, Total Revenue, On-Time Delivery %, Fleet Utilization %, Total Fuel Consumption, Average Fuel Efficiency, Fuel Cost | Route; peer route comparison; time where useful | Multi-KPI route-performance assessment identifying materially stronger or weaker patterns. |
| **Q7** | Are there facilities that require further operational investigation? | Compare facilities across relevant operational and performance measures and determine whether evidence supports further investigation. | Completed Loads, Completed Trips, Total Revenue, On-Time Delivery %, Fuel Cost and applicable supporting KPIs | Facility; peer facility comparison; time where useful | Facility-level performance assessment and evidence-supported investigation candidates. |

#### Supporting Diagnostic Questions — Q8–Q15
---

| Question | Business Question | Analytical Work to Execute | Primary Measurement / Evidence | Activation Logic | Expected Output |
|---|---|---|---|---|---|
| **Q8** | What factors are associated with delivery delays? | Investigate operational dimensions associated with validated delivery-performance differences identified through Q2–Q3. | On-Time Delivery % plus relevant operational dimensions | Activate when Q2/Q3 establishes a meaningful delivery pattern. | Diagnostic evidence describing supported associations; no causal claim. |
| **Q9** | Which routes contribute most to operational volume, cost, or revenue? | Perform contribution analysis across routes using volume, revenue, and applicable cost measures while maintaining compatible grains. | Completed Loads, Completed Trips, Total Revenue, Fuel Cost and applicable measures | May be executed with Q6 route analysis where contribution analysis is decision-relevant. | Route contribution profile and identification of high-contribution areas requiring context. |
| **Q10** | Which fleet assets demonstrate materially different utilization or efficiency patterns? | Examine truck/trailer-level utilization and efficiency distributions and investigate materially different supported patterns. | Fleet Utilization %, Average Fuel Efficiency | Activate when Q4/Q5 identifies material asset-level differences. | Asset-performance patterns with data-quality and population limitations documented. |
| **Q11** | Which drivers demonstrate materially different supported performance patterns? | Compare supported driver-level performance while accounting for missing driver assignments and applicable population coverage. | Applicable validated KPIs and supporting measures | Activate only where driver attribution is sufficiently supported. | Driver-performance observations or diagnostic findings with attribution limitations. |
| **Q12** | What maintenance patterns are visible across the fleet? | Analyze maintenance activity, frequency, and cost patterns across applicable fleet dimensions and time periods. | Validated maintenance measures / supporting evidence | Activate when maintenance analysis is relevant to an identified operational question or fleet pattern. | Maintenance pattern assessment. |
| **Q13** | Are maintenance patterns associated with differences in fleet performance? | Compare maintenance patterns with supported fleet-performance measures while distinguishing association from causation. | Maintenance measures, Fleet Utilization %, Average Fuel Efficiency and applicable measures | Activate when Q12 identifies meaningful maintenance patterns. | Evidence-supported association assessment and limitation statement. |
| **Q14** | How does operational performance change over time? | Analyze approved KPIs across appropriate time periods and evaluate direction, persistence, and material period differences. | Applicable approved KPI portfolio | Activated as part of time analysis where temporal comparison is decision-relevant. | Time-based performance trends and validated period differences. |
| **Q15** | Are there meaningful seasonal or recurring operational patterns? | Examine recurring patterns across appropriate time periods while distinguishing seasonality from isolated variation. | Applicable approved KPIs | Activate where sufficient temporal coverage and population support the analysis. | Supported recurring/seasonal pattern assessment or documented absence of material pattern. |

#### Exploratory Questions — Q16–Q19
---

| Question | Business Question | Analytical Work to Execute | Primary Measurement / Evidence | Analytical Control | Expected Output |
|---|---|---|---|---|---|
| **Q16** | Which customers or customer segments contribute most to operational value? | Explore customer-level contribution using supported volume and revenue measures and assess whether meaningful concentration or differences exist. | Completed Loads, Completed Trips, Total Revenue and applicable measures | Exploratory; customer-level conclusions must account for population and grain. | Customer contribution profile and potential business segmentation insight. |
| **Q17** | Which operational dimensions are associated with higher cost per mile or similar efficiency measures? | Explore supported cost-efficiency relationships using compatible numerator/denominator populations and validated operational dimensions. | Fuel Cost and applicable cost/efficiency measures | Exploratory; association must not be interpreted as causation. | Supported efficiency relationships or evidence that no material relationship is established. |
| **Q18** | Are there meaningful relationships between operational volume and efficiency? | Compare operational volume against applicable efficiency measures and assess whether observed relationships are persistent and decision-relevant. | Completed Loads, Completed Trips, Average Fuel Efficiency and applicable measures | Exploratory relationship analysis; grain compatibility required. | Relationship assessment with evidence strength and limitations. |
| **Q19** | Is profitability or margin analysis sufficiently supported by the available data? | Assess whether revenue and available cost measures provide a sufficiently complete and compatible basis for defensible profitability or margin analysis. | Total Revenue, Fuel Cost and available supporting cost measures | Scope assessment; no unsupported profitability calculation. | Explicit supported / limited / unsupported profitability conclusion. |

#### Question-to-Analysis Traceability
---

The execution map maintains the following traceability chain:

**Section 3.3 — Business Question**

→ **Section 3.4 — KPI / Measurement Definition**

→ **Section 3.5 — KPI Validation & Approval**

→ **Section 3.6 — Investigation Design**

→ **Section 3.7.3 — Analytical Execution**

→ **Stage 5 — Analytical Result**

→ **Stage 3.8 — Visualization / Presentation Requirement**

This ensures that analytical execution does not introduce new business questions or redefine approved measurements without formal change control.

#### Analytical Priority Rules
---

The following priority rules govern execution:

1. **Q1–Q7 are the primary management-analysis scope** and must be addressed before Stage 3 analytical closure.

2. **Q1 establishes the overall baseline** before detailed segmentation is interpreted.

3. **Q2 and Q3 establish delivery reliability and differences** before Q8 is activated.

4. **Q4 and Q5 establish fleet, fuel, efficiency, and cost patterns** before Q10–Q13 are considered.

5. **Q6 and Q7 provide route and facility comparisons** using multiple validated measures rather than isolated rankings.

6. **Q8–Q15 are evidence-driven diagnostic questions**, not mandatory finding generators.

7. **Q16–Q19 are exploratory or analytical-support questions** and must not displace the primary management-analysis path.

8. A question may result in **No Material Pattern, Observation, Diagnostic Finding, Finding with Limitation, Data Limitation, or Requires Further Investigation**, consistent with the Stage 3.6 finding framework.

9. A question must not be considered successfully answered merely because a chart or numerical result has been produced. The result must have sufficient analytical context and evidence for its intended interpretation.

#### Validated Constraints Applied to Question Execution
---

The Stage 3.5 KPI limitations remain attached to the relevant analytical questions.

- **Completed Trips:** Q1, Q4, Q6, Q7, Q9, and Q16 must account for the 5.80% of trips missing at least one driver, truck, or trailer assignment when performing dimensional analysis.
- **On-Time Delivery:** Q2, Q3, Q6, Q7, and Q8 must retain the approved source-defined ±120-minute tolerance and its documented policy limitation.
- **Fleet Utilization:** Q4, Q5, Q6, and Q10 must preserve the source values, including the 436 truck-month records above 100%; values must not be capped or silently corrected.
- **Fuel Measures:** Q5, Q6, Q10, Q17, and Q18 must account for incomplete fuel linkage, including fuel transactions missing asset/driver identifiers and completed trips without linked fuel purchases.
- **Average Fuel Efficiency:** Q5, Q6, Q10, Q17, and Q18 must identify the measure as source-defined and subject to its approved methodological limitation.
- **Cross-grain analysis:** All questions involving multiple transactional sources must use controlled aggregation and compatible populations to prevent measure multiplication.

#### Expected Analytical Record
---

For each executed question, the analytical output should be traceable to the Stage 3.6 investigation record and should capture, at minimum:

**Question ID → Objective → KPI(s) → Population → Period → Grain → Segmentation → Comparison → Result → Observed Pattern → Validation Evidence → Data-Quality Impact → Finding Classification → Business Meaning → Decision Relevance**

This provides the required bridge between the planned analysis in Stage 3.7 and the evidence-based analytical execution performed during Stage 5.

#### Transition
---

The Question-to-Analysis Execution Map now establishes **exactly what analytical work will be performed for each approved business question and how that work traces back to Sections 3.3–3.6**. The next section defines the analytical methods to be used for executing these analyses and establishes when each method is appropriate.

---

### 3.7.4 Analytical Method Selection
---

Analytical methods for Stage 5 are selected directly from the approved business questions in Section 3.3 and the KPI portfolio established and validated in Sections 3.4–3.5. The methods must support the operational objectives defined in Sections 3.1–3.2 while respecting the investigation controls, grain requirements, and data-quality limitations established in Section 3.6.

The purpose of this section is not to introduce new analytical techniques, but to establish the appropriate method for answering each approved question in a controlled and reproducible manner.

#### Method-to-Question Mapping
---

| Analytical Method | Primary Use in This Project | Applicable Questions | Execution Requirement |
|---|---|---|---|
| **Descriptive Analysis** | Establish the overall operational baseline and summarize approved KPI performance. | Q1, Q2, Q4, Q5 | Use approved KPI definitions, validated populations, and KPI-specific grains. |
| **Comparative Analysis** | Identify meaningful performance differences between routes, facilities, fleet assets, drivers, customers, or periods. | Q3, Q4, Q5, Q6, Q7, Q10, Q11, Q16 | Comparisons must use defensible peer groups, sufficient population, compatible grain, and relevant supporting volume. |
| **Trend Analysis** | Determine how operational performance changes across the core period and whether patterns persist over time. | Q1, Q2, Q4, Q5, Q14, Q15 | Use the appropriate KPI date and preserve the core period of 2022-01-01 through 2024-12-31. |
| **Contribution Analysis** | Determine which routes or customers contribute materially to operational volume, revenue, or applicable cost measures. | Q6, Q9, Q16 | Aggregation must remain grain-aware and must prevent transaction multiplication. |
| **Association Analysis** | Examine supported relationships between operational dimensions and delivery, fuel, efficiency, maintenance, or cost measures. | Q5, Q8, Q13, Q17, Q18 | Results describe association only and must not be interpreted as causal relationships. |
| **Distribution / Outlier Analysis** | Examine variation and unusual observations that may warrant further investigation. | Q4, Q5, Q10, Q11, Q12 | Unusual observations are investigation signals and must not be automatically treated as errors. |
| **Data Sufficiency / Scope Assessment** | Determine whether the available data supports a requested analytical conclusion. | Q19 and applicable limitations across Q1–Q18 | Unsupported profitability, margin, causal, predictive, or optimization conclusions must not be produced. |

#### Application to the Core Management Questions
---

The primary management questions Q1–Q7 follow a controlled progression:

**Q1 — Overall Performance**

Use **descriptive analysis** to establish the validated operational baseline using Completed Loads, Completed Trips, Total Revenue, On-Time Delivery %, Active Fleet Count, Fleet Utilization %, Total Fuel Consumption, Average Fuel Efficiency, and Fuel Cost.

↓

**Q2 — Delivery Reliability**

Use **descriptive analysis** to establish the approved On-Time Delivery baseline and its operational context.

↓

**Q3 — Delivery Differences**

Use **comparative analysis** across validated dimensions such as route, facility, and time to identify meaningful differences in delivery reliability.

↓

**Q4 — Fleet Utilization**

Use **descriptive, comparative, and distribution analysis** at the validated truck-month grain to understand fleet utilization and materially different utilization patterns.

↓

**Q5 — Fuel & Cost**

Use **descriptive, comparative, trend, and association analysis** to examine fuel consumption, source-defined fuel efficiency, and fuel cost alongside operational activity.

↓

**Q6 — Route Performance**

Use **comparative and contribution analysis** across multiple approved KPIs rather than ranking routes using a single measure.

↓

**Q7 — Facility Performance**

Use **comparative analysis** across relevant approved KPIs to determine whether facility-level differences justify further operational investigation.

#### Application to Supporting Diagnostic Questions
---

Questions Q8–Q15 use methods conditionally according to the evidence generated by the core analysis.

- **Q8 — Delivery Delay Factors:** comparative and association analysis may be used after Q2–Q3 establishes a meaningful delivery pattern.
- **Q9 — Route Contribution:** contribution analysis is used to evaluate route contribution to volume, revenue, or applicable cost measures.
- **Q10 — Fleet Asset Differences:** comparative and distribution analysis may be used for truck and trailer performance where population and attribution are sufficient.
- **Q11 — Driver Performance:** comparative analysis may be used only where driver attribution is sufficiently supported.
- **Q12 — Maintenance Patterns:** descriptive, comparative, trend, and distribution analysis may be used to identify maintenance patterns.
- **Q13 — Maintenance and Fleet Performance:** association analysis may be used to assess supported relationships between maintenance patterns and fleet-performance measures.
- **Q14 — Operational Change Over Time:** trend analysis is used to evaluate changes across the approved operational period.
- **Q15 — Seasonal / Recurring Patterns:** trend and distribution analysis may be used where sufficient temporal coverage supports the comparison.

These methods support diagnosis but do not by themselves establish causation or business impact.

#### Application to Exploratory Questions
---

Questions Q16–Q19 remain secondary to the core management analysis.

- **Q16 — Customer Contribution:** contribution and comparative analysis may be used to identify meaningful customer-level concentration or contribution.
- **Q17 — Cost-Efficiency Relationships:** comparative and association analysis may be used where compatible cost and efficiency populations are available.
- **Q18 — Volume and Efficiency Relationships:** comparative, trend, and association analysis may be used to explore supported relationships between operational volume and efficiency.
- **Q19 — Profitability Support:** a data-sufficiency and scope assessment determines whether profitability or margin analysis can be defensibly performed.

Exploratory analysis must not override the approved scope or convert an exploratory relationship into a validated business conclusion without satisfying the Stage 3.6 evidence requirements.

#### Method Selection Controls from KPI Validation
---

Analytical method selection must preserve the validated conditions established in Section 3.5:

1. **Completed Loads** remain at load grain.
2. **Completed Trips** remain at trip grain, with dimensional analysis accounting for the 5.80% of trips missing at least one driver, truck, or trailer assignment.
3. **On-Time Delivery %** retains the approved source-defined ±120-minute tolerance.
4. **Fleet Utilization %** remains at truck-month grain and must retain source values, including the validated records exceeding 100%.
5. **Fuel Consumption and Fuel Cost** remain based on the validated fuel-purchase population and must account for incomplete asset/driver linkage.
6. **Average Fuel Efficiency** remains the approved source-defined `average_mpg` measure and must not be represented as independently reproducible methodology.
7. Cross-grain calculations must use controlled aggregation to prevent duplication across loads, trips, delivery events, fuel transactions, and other transactional sources.

#### Method Selection Controls from Business Design
---

The methods must also remain aligned with the business-analysis boundaries established in Sections 3.1–3.3:

- Analysis must remain focused on **operational performance, delivery reliability, fleet utilization, fuel and cost performance, routes, facilities, and supported operational diagnostics**.
- High activity alone must not be interpreted as poor performance or a bottleneck.
- A performance difference must be evaluated in business context before being classified as a finding.
- Recommendations must follow validated findings rather than precede them.
- Unsupported causal claims, predictive modelling, optimization, and unsupported profitability conclusions remain outside the approved analytical scope.

#### Evidence Requirement
---

The selected analytical method must produce evidence that can progress through the Stage 3.6 investigation chain:

**Analytical Result**

→ **Observed Pattern**

→ **Validation of Pattern**

→ **Diagnostic Finding, if supported**

→ **Business Insight**

→ **Decision Relevance**

A numerical result or visual comparison alone is not sufficient to establish a business finding.

#### Analytical Simplicity Principle
---

Stage 5 should use the **least complex defensible method** that answers the approved business question.

Advanced statistical techniques are not required merely to increase technical complexity. Additional methods may be introduced only when a clearly defined analytical requirement cannot be answered adequately through the approved descriptive, comparative, trend, contribution, association, distribution, or sufficiency-assessment methods and the change is documented through analytical change control.

#### Transition
---

The analytical methods are now explicitly mapped to the approved Q1–Q19 scope, validated KPI portfolio, business objectives, analytical grains, and known limitations from Sections 3.1–3.5. The next section defines the **analytical populations and period controls** that will govern the actual execution of these methods.

---

### 3.7.5 Analytical Population & Period Control
---

Analytical population and period control define exactly which records, dates, grains, and populations may be used during Stage 5 execution. These controls inherit the validated data conditions from Stage 2, the approved KPI populations and limitations from Section 3.5, and the analytical scope established in Section 3.6.

The purpose is to ensure that analytical comparisons remain reproducible and that results are not distorted by mixing operational periods, incompatible grains, incomplete attribution, or supporting data outside the approved core population.

#### Core Analytical Period
---

The primary analytical period for Stage 5 is:

**2022-01-01 through 2024-12-31**

This period represents the approved core operational population established during KPI validation and is the default period for Q1–Q19 unless a question explicitly requires a different validated population.

Supporting data extending into **January 2025** must not be automatically combined with the core operational population. Such records may be examined only when the analytical purpose and source coverage justify their separate use.

#### Population Hierarchy
---

Analytical populations must be established in the following order:

**Core Operational Period**

→ **Question-Specific Population**

→ **KPI-Specific Population**

→ **Validated Analytical Grain**

→ **Applicable Segmentation**

→ **Comparison Population**

This prevents a segment or KPI from silently changing the population established for the broader business question.

#### KPI-Specific Analytical Grains
---

Each analysis must preserve the validated grain of the KPI being used.

| KPI / Measure | Validated Analytical Grain | Population Control |
|---|---|---|
| **Completed Loads** | Load | Completed load records within the applicable period. |
| **Completed Trips** | Trip | Completed trip records; dimensional attribution must account for missing driver, truck, and trailer assignments. |
| **Total Revenue** | Load / revenue-bearing operational record | Revenue must be aggregated at its validated source grain before being combined with other transactional populations. |
| **On-Time Delivery %** | Delivery-event-based calculation | Apply the approved source-defined ±120-minute tolerance and the validated delivery-event population. |
| **Fleet Utilization %** | Truck-month | Preserve truck-month aggregation and source values, including records exceeding 100%. |
| **Active Fleet Count** | Fleet / asset population | Use the validated active-fleet definition and applicable period. |
| **Total Fuel Consumption** | Fuel-purchase transaction | Aggregate fuel transactions before combining with other operational grains. |
| **Average Fuel Efficiency** | Source-defined measure | Use the validated `average_mpg` measure and retain its documented methodological limitation. |
| **Fuel Cost** | Fuel-purchase transaction | Aggregate the validated fuel-cost population without duplicating transactions through trip or load joins. |

#### Core Population Controls
---

The following controls apply to the primary analytical population:

1. **Completed operational records:** Loads and Trips contain **85,410 completed records** each and form the primary operational activity population.

2. **Trip attribution:** **4,952 trips (5.80%)** are missing at least one driver, truck, or trailer assignment. These records remain part of total trip activity but require caution when performing driver, truck, or trailer segmentation.

3. **Delivery chronology:** **486 trips (0.569%)** contain delivery-before-pickup timestamp reversals. These records must not be silently removed or corrected during analysis.

4. **Fleet utilization:** **436 truck-month records (13.16%)** exceed 100%, with a maximum of **148.40%**. These values remain in the analytical population and must not be arbitrarily capped.

5. **Fuel linkage:** **3,880 fuel-purchase records (1.98%)** lack `truck_id`; approximately **2.03%** lack `driver_id`. These limitations must be considered when performing asset- or driver-level fuel analysis.

6. **Fuel coverage:** **8,471 completed trips** have no corresponding fuel purchase under the validated linkage logic. Fuel-based analysis must therefore not be interpreted as complete fuel coverage of all completed trips.

7. **Source-defined efficiency:** `average_mpg` remains the approved source-defined fuel-efficiency measure and must retain its Section 3.5 limitation during interpretation.

#### Question-Specific Population Control
---

The analytical population must be adjusted only when the business question requires a narrower validated population.

Examples:

- **Q1:** Uses the overall core operational population to establish the management baseline.
- **Q2:** Uses the validated delivery population supporting the approved On-Time Delivery calculation.
- **Q3:** Uses the same delivery-performance population when comparing routes, facilities, or time periods.
- **Q4:** Uses the validated truck-month population for Fleet Utilization %.
- **Q5:** Uses compatible fuel, efficiency, cost, and operational populations rather than assuming all measures share the same grain.
- **Q6:** Uses route-level populations with multiple compatible KPIs and sufficient operational volume.
- **Q7:** Uses facility-level populations and multiple relevant KPIs; high activity alone does not establish a facility bottleneck.
- **Q10–Q11:** Require sufficient truck, trailer, or driver attribution before interpreting asset-level differences.
- **Q19:** evaluates whether compatible revenue and cost populations are sufficient before any profitability or margin conclusion is attempted.

A narrower population must always be documented rather than implicitly created through filtering or joining.

#### Time Dimension Control
---

Time analysis must use the date appropriate to the KPI and business question.

Examples include:

- **Load date** for load-volume analysis.
- **Dispatch / trip date** for trip-level operational analysis.
- **Delivery-related date/time** for delivery reliability analysis.
- **Truck-month** for Fleet Utilization %.
- **Fuel-purchase date** for fuel transaction analysis.

A single calendar dimension must not be assumed to represent every KPI equally.

For trend and period comparisons, the selected time dimension must be documented with the analytical result.

#### Core Period vs Supporting Period
---

The distinction between the core and supporting periods is mandatory:

| Period | Analytical Role | Treatment |
|---|---|---|
| **2022-01-01 to 2024-12-31** | Core operational analysis | Primary basis for management findings and Stage 5 conclusions. |
| **January 2025 supporting records** | Supporting / extended data | May be examined separately when relevant; must not silently extend the core analytical period. |

Any analysis using the supporting period must explicitly state that it is outside the core operational period.

#### Cross-Grain Population Control
---

The validated data model contains multiple transactional populations. Therefore, analytical execution must avoid direct unrestricted joins between grains.

The following principle applies:

**Aggregate at source grain**

→ **Establish compatible population**

→ **Combine only after aggregation**

For example:

- Fuel purchases must not be joined directly to trips and then summed without controlling duplication.
- Delivery events must not be joined to loads and used to re-sum load-level revenue.
- Maintenance transactions must not be attributed to trips without a validated asset/time relationship.
- Truck-month utilization must not be treated as a trip-level measure.

This control directly carries forward the grain-awareness requirement established during Stage 2 validation and KPI approval.

#### Missing-Value Treatment
---

Missing values must be interpreted according to the validated meaning of the field and analytical context.

In particular:

- Missing driver/truck/trailer assignments must **not** be converted into zero performance.
- Missing fuel identifiers must **not** be assumed to represent zero fuel consumption.
- Missing or incomplete supporting records must not be silently excluded when doing so changes the analytical population.
- Exclusions required for a specific comparison must be documented with their impact on population size and interpretation.

#### Population Reconciliation
---

Before finalizing an analytical result, the executed population should be reconciled against the relevant Stage 3.5 baseline wherever a comparable population exists.

For controlled KPI reconciliation:

**Independent Analytical Baseline**

↔ **Implemented Analytical Result**

Expected outcome:

- Exact counts / sums: **difference = 0**
- Ratios / percentages: within the documented validation tolerance
- Any unexplained difference: **investigate before interpretation**

This preserves the independent-calculation and reconciliation principle established during KPI validation.

#### Population Change Control
---

Any deviation from the approved analytical population must document:

- **Original population**
- **Changed population**
- **Reason for change**
- **Affected question / KPI**
- **Records added or excluded**
- **Analytical impact**
- **Interpretation impact**
- **Validation required**

Population changes must not be introduced solely to obtain a stronger visual result or a more favorable business conclusion.

#### Analytical Population Decision Rule
---

For every Stage 5 analysis:

**Which business question?**

→ **Which approved KPI / measure?**

→ **Which validated population?**

→ **Which date / period?**

→ **Which analytical grain?**

→ **Which segmentation?**

→ **What exclusions or limitations apply?**

→ **Does the resulting population remain comparable and reproducible?**

Only after these controls are satisfied should the analytical result be interpreted.

#### Transition
---

The analytical population, period, grain, and reconciliation controls are now defined using the validated conditions established through Sections 3.1–3.6. The next section specifies the **standard output that each completed analytical workstream must produce**, ensuring that Stage 5 results can be traced from KPI result through finding and business decision relevance.

---

### 3.7.6 Analytical Output Specification
---

The analytical output specification defines the minimum evidence and documentation that must be produced when an approved analytical question is executed in Stage 5. It carries forward the business-question structure from Section 3.3, KPI definitions from Section 3.4, KPI validation evidence and limitations from Section 3.5, and the investigation and finding framework established in Section 3.6.

The objective is to ensure that every analytical result can be traced from a validated measurement to an evidence-supported business interpretation and decision relevance.

#### Standard Analytical Output
---

Every executed analysis must produce the following analytical record:

| Output Component | Required Content | Project-Specific Control |
|---|---|---|
| **Question ID** | Q1–Q19 identifier | Must match the approved question in Section 3.3. |
| **Analytical Objective** | What the analysis is intended to determine | Must remain within the approved business objective and question scope. |
| **KPI / Measure** | Approved KPI(s) or supporting measure(s) used | Must reference the Section 3.4 definition and Section 3.5 validation status. |
| **KPI Status** | Approval status and applicable limitation | No unapproved KPI definition may be introduced during analysis. |
| **Population** | Records included in the analysis | Must follow Section 3.7.5 population controls. |
| **Period** | Analytical date range | Default core period is 2022-01-01 through 2024-12-31 unless explicitly justified otherwise. |
| **Grain** | Actual analytical grain | Must remain compatible with the validated KPI grain. |
| **Segmentation** | Route, facility, time, asset, driver, customer, or other relevant dimension | Must follow the Stage 3.6 segmentation rules. |
| **Comparison Basis** | Overall, peer, historical, distribution, or contribution comparison | Must be explicitly stated. |
| **Analytical Method** | Descriptive, comparative, trend, contribution, association, distribution, or scope assessment | Must follow Section 3.7.4. |
| **Result** | Actual calculated analytical result | Must be reproducible from the documented population and method. |
| **Observed Pattern** | What the result shows before interpretation | Must remain separate from the business conclusion. |
| **Validation Evidence** | Checks supporting the observed pattern | Must include relevant population, magnitude, persistence, grain, cross-KPI, or data-quality checks. |
| **Data-Quality Impact** | Known Stage 2 / Stage 3.5 limitations affecting interpretation | Must be explicitly recorded where applicable. |
| **Finding Classification** | No Material Pattern, Observation, Diagnostic Finding, Finding with Limitation, Data Limitation, or Requires Further Investigation | Must follow Section 3.6.7. |
| **Evidence Strength** | Strength of supporting evidence | Must follow the evidence hierarchy established in Section 3.6.3. |
| **Business Meaning** | What the validated result means operationally | Must not exceed the available evidence. |
| **Decision Relevance** | Whether management action, monitoring, further investigation, or no action is indicated | Must be derived from the validated finding. |
| **Recommendation** | Recommendation, where justified | Must follow the finding rather than precede it. |
| **Investigation Status** | Planned, In Progress, Completed, Conditional, or Closed | Must accurately reflect execution status. |

#### Required Output by Analysis Type
---

Different analytical methods require different primary outputs while retaining the standard analytical record.

**Overall KPI Analysis**

Must produce:

**Baseline → Context → Validation → Business Meaning**

Example: Q1 must reconcile the overall operational baseline to the approved Stage 3.5 values, including **85,410 Completed Loads**, **85,410 Completed Trips**, **262,525,800.29 Total Revenue**, **44.61% On-Time Delivery**, **92 Active Fleet**, **24,493,560.80 gallons Total Fuel Consumption**, and **95,499,723.14 Fuel Cost**, with applicable limitations retained.

**Comparative Analysis**

Must produce:

**Segment Result → Overall / Peer Comparison → Magnitude → Population Check → Interpretation**

A segment cannot be classified as materially strong or weak solely because it ranks first or last.

**Trend Analysis**

Must produce:

**Time-Series Result → Period Comparison → Persistence / Change → Interpretation**

Temporal results must use the KPI-appropriate date and must distinguish persistent patterns from isolated variation.

**Contribution Analysis**

Must produce:

**Segment Contribution → Total / Overall Context → Concentration → Business Relevance**

Contribution to volume or revenue must not automatically be interpreted as poor or strong operational performance.

**Association Analysis**

Must produce:

**Observed Relationship → Supporting Evidence → Strength / Consistency → Limitation**

The output must explicitly distinguish association from causation.

**Distribution / Outlier Analysis**

Must produce:

**Distribution → Unusual Observation → Validation → Classification**

An unusual value must not be removed, corrected, or classified as erroneous without supporting evidence.

**Scope / Sufficiency Assessment**

Must produce:

**Required Analytical Claim → Available Data → Coverage / Compatibility → Supported or Unsupported Conclusion**

This is particularly important for **Q19**, where profitability or margin analysis must not be produced if the available revenue and cost data do not support a defensible calculation.

#### Mandatory Evidence Fields
---

A completed analytical result must retain enough evidence to answer:

1. **What was analyzed?**
2. **Why was it analyzed?**
3. **Which approved KPI or measure was used?**
4. **What population was used?**
5. **What period was used?**
6. **What was the analytical grain?**
7. **What comparison was performed?**
8. **What result was observed?**
9. **How was the result validated?**
10. **Which known data-quality limitations affect interpretation?**
11. **What finding classification is justified?**
12. **What does the finding mean for the business?**
13. **Is there a decision implication?**

If these questions cannot be answered, the analysis is not considered sufficiently documented for final business interpretation.

#### Real Validation Requirements
---

Analytical outputs must remain consistent with the validated Stage 3.5 evidence.

Examples:

- The overall Completed Loads result must reconcile to **85,410**.
- The overall Completed Trips result must reconcile to **85,410**.
- Total Revenue must reconcile to **262,525,800.29** for the approved baseline.
- On-Time Delivery must use the approved **44.61% baseline** and ±120-minute source-defined tolerance.
- Active Fleet must reconcile to **92** for the validated baseline.
- Total Fuel Consumption must reconcile to **24,493,560.80 gallons**.
- Fuel Cost must reconcile to **95,499,723.14**.
- Fleet Utilization analysis must retain the **436 truck-month records above 100%**, including the maximum of **148.40%**.
- Dimensional trip analysis must account for the **4,952 trips (5.80%)** missing at least one driver, truck, or trailer assignment.
- Delivery analysis must retain awareness of the **486 trips (0.569%)** with delivery-before-pickup timestamp reversals.
- Fuel analysis must account for **3,880 fuel-purchase records (1.98%)** missing `truck_id` and **8,471 completed trips** without a corresponding fuel purchase under the validated linkage.
- `average_mpg` must remain identified as a **source-defined measure** with its approved methodological limitation.

These values are validation anchors, not targets to be reproduced through forced filtering or population manipulation.

#### Finding Qualification
---

Analytical outputs must follow the Stage 3.6 classification chain:

**KPI Result**

→ **Observed Pattern**

→ **Validated Pattern**

→ **Diagnostic Finding**

→ **Business Insight**

→ **Decision / Recommendation**

The output must stop at the highest level supported by the evidence.

For example:

- A route with lower On-Time Delivery is an **observed difference**.
- If the difference is validated across population, magnitude, persistence, and data-quality checks, it may become a **diagnostic finding**.
- A supported operational interpretation may then become a **business insight**.
- A recommendation is produced only when the finding provides sufficient decision relevance.

#### Reproducibility Requirement
---

Every final analytical output must be reproducible through its associated analytical artifact.

The artifact should identify, where applicable:

- source table(s)
- relevant fields
- filters
- population definition
- period
- aggregation logic
- analytical grain
- calculation logic
- comparison basis
- validation checks
- exception handling
- output result

The objective is that another analyst can reproduce the result without relying on undocumented manual steps.

#### Stage 5 Handoff Requirement
---

Completed analytical outputs must be suitable for downstream use in:

**Stage 5 — Analysis**

→ **Validated Finding**

→ **Stage 3.8 — Dashboard / Presentation Design**

→ **Stage 6 — Dashboard**

The dashboard must visualize findings and decision-relevant patterns that have sufficient analytical support. Visuals must not be used to create conclusions that were not established during analytical execution.

#### Transition
---

The analytical output specification now defines **what evidence and documentation must exist for every executed question and workstream**, while preserving the validated KPI values, grains, limitations, and finding rules established in Sections 3.1–3.6. The next section defines **which tools and analytical artifacts will be used to produce and preserve this evidence**.

---

### 3.7.7 Analytical Tool & Artifact Plan
---

The analytical execution for Project 2 will follow the project's primary Data Analyst tool strategy: **Python → Excel → Power Query → Power BI/DAX**. The objective is to use Python for independent analytical validation, Excel for business-oriented analysis and investigation, Power Query for controlled model preparation, and Power BI/DAX for final KPI implementation and interactive presentation.

This approach intentionally positions Project 2 as an **Excel + Power BI analytics project**, rather than an ETL-engineering project similar to Project 1. SQL may support analytical investigation where useful, but ETL pipelines, Airflow, cloud automation, and other engineering extensions remain secondary to the Data Analyst objective.

#### 3.7.7.1 Tool Responsibilities
---

Each tool has a defined analytical responsibility and must be used according to the validated business and data requirements established in Sections 3.1–3.6.

| Tool | Primary Responsibility | Project Application |
|---|---|---|
| **Python** | Independent analytical computation and validation | Baseline calculations, profiling, aggregations, distributions, exception analysis, reconciliation, investigation support |
| **Excel** | Business-oriented analytical investigation and validation | Pivot-based analysis, segment comparisons, trend analysis, contribution analysis, KPI cross-checks, analyst-ready summaries and evidence |
| **Power Query** | Controlled data preparation | Cleaning, transformation, shaping, merging/appending where justified, model-ready preparation and refreshable data flow |
| **Power BI / DAX** | KPI implementation and business presentation | Approved KPI measures, interactive analysis, drill-down, comparisons, trends and final dashboard presentation |
| **SQL** | Supporting analytical querying | Structured joins, aggregations, relationship checks and targeted analytical queries where beneficial |
| **Jupyter Notebook** | Reproducible analytical record | Human-readable investigation logic, calculations, validation evidence and analytical conclusions |

The tool sequence does not mean every question must use every tool. Tool selection must follow the analytical requirement while preserving the approved KPI definition, population, grain and validation controls.

#### 3.7.7.2 Python → Excel → Power Query → Power BI/DAX Workflow
---

The project will use the following controlled analytical progression:

**1. Python — Independent Analytical Baseline**
- Establish reproducible baseline values before BI implementation.
- Validate counts, sums, percentages, distributions and analytical populations.
- Investigate data-quality exceptions identified during Stage 2.
- Support the Stage 3.7 analytical workstreams and Q1–Q19 investigations.
- Reconcile important calculations independently before relying on Power BI/DAX output.

Key baseline anchors already established in Stage 3.5 include:
- Completed Loads = **85,410**
- Completed Trips = **85,410**
- Total Revenue = **262,525,800.29**
- On-Time Delivery = **44.61%**
- Active Fleet = **92**
- Total Fuel Consumption = **24,493,560.80 gallons**
- Fuel Cost = **95,499,723.14**

**2. Excel — Business Analysis & Validation Layer**
- Convert validated analytical questions into analyst-readable comparisons.
- Use PivotTables, formulas, summaries and controlled worksheets where appropriate.
- Compare performance by route, facility, time period, fleet assets and other validated dimensions.
- Examine contribution, distributions, trends and meaningful differences.
- Cross-check important Python results.
- Produce business-oriented evidence that can inform later Power BI presentation requirements.

Excel analysis must remain grain-aware. For example, truck-month Fleet Utilization must not be treated as a trip-level measure, and fuel-purchase transactions must not be multiplied through inappropriate joins.

**3. Power Query — Model Preparation**
- Prepare the validated data for the Power BI model.
- Apply only justified transformations required for analytical usability.
- Preserve source meaning and validated business definitions.
- Maintain appropriate table/grain separation.
- Avoid transformations that silently change KPI populations or definitions.
- Keep the raw dataset immutable.

**4. Power BI / DAX — Final Analytical Implementation**
- Implement the approved KPI definitions from Stage 3.5.
- Reproduce the independently established analytical baselines.
- Provide interactive analysis across the validated dimensions.
- Present findings and business insights without visually implying unsupported conclusions.
- Maintain explicit separation between KPI results, observations, validated findings and recommendations.

The expected implementation chain is therefore:

**Business Question → Python Baseline → Excel Analysis/Validation → Power Query Preparation → Power BI/DAX → Reconciliation → Validated Finding → Business Insight → Decision Relevance**

#### 3.7.7.3 Question-to-Tool Alignment
---

Tool usage will follow the priority established in Sections 3.3, 3.6 and 3.7.

| Question Group | Primary Analysis | Python | Excel | Power Query | Power BI/DAX |
|---|---|---|---|---|---|
| **Q1 — Overall Performance** | Baseline and operational summary | Required | Required | Required | Required |
| **Q2 — Delivery Reliability** | On-time performance | Required | Required | Required | Required |
| **Q3 — Delivery Differences** | Route/facility/time comparison | Required | Required | Required | Required |
| **Q4 — Fleet Utilization** | Truck-month utilization and fleet profile | Required | Required | Required | Required |
| **Q5 — Fuel & Cost** | Consumption, efficiency and cost analysis | Required | Required | Required | Required |
| **Q6 — Route Performance** | Multi-KPI route comparison | Required | Required | Required | Required |
| **Q7 — Facility Investigation** | Multi-KPI facility comparison | Required | Required | Required | Required |
| **Q8–Q15** | Conditional diagnostic analysis | As required | As required | As required | As required |
| **Q16–Q19** | Exploratory analysis / scope assessment | As required | As required | As required | As required |

The P1 management path therefore receives the strongest Excel and Power BI treatment because these questions form the core business-analysis story of the project.

#### 3.7.7.4 Analytical Artifacts
---

The analytical artifacts must provide traceability from the business question to the final presentation.

Primary project locations:

- `analysis/03_business_analysis/` — analytical notebooks, investigations and evidence
- `analysis/04_kpi_validation/` — KPI validation and baseline evidence
- `power_query/` — Power Query transformation logic and supporting documentation
- `dax/` — approved DAX implementation
- `powerbi/` — Power BI model/report artifacts
- `docs/` — finalized analytical and project documentation
- `data/processed/` — controlled processed/model-ready outputs
- `data/raw/` — immutable source data; never modified by analytical execution

Recommended analytical naming pattern:

- `Q##_analysis_<topic>`
- `Q##_validation_<topic>`
- `W##_analysis_<topic>`

Examples:

- `Q01_analysis_overall_performance`
- `Q03_analysis_delivery_differences`
- `Q04_analysis_fleet_utilization`
- `Q05_analysis_fuel_cost`
- `Q06_analysis_route_performance`
- `Q07_analysis_facility_performance`

#### 3.7.7.5 Mandatory Analytical Controls
---

The tool workflow must preserve the validated controls established through Sections 3.1–3.6.

**KPI and grain controls**
- Completed Loads remain at load grain.
- Completed Trips remain at trip grain.
- On-Time Delivery remains based on the validated delivery-event logic.
- Fleet Utilization remains a truck-month measure.
- Fuel Consumption and Fuel Cost remain based on fuel-purchase transactions.
- `average_mpg` remains a source-defined efficiency measure.
- Ratios must use compatible numerator and denominator populations.

**Known data-quality controls**
- **4,952 trips (5.80%)** are missing at least one driver, truck or trailer assignment.
- **486 trips (0.569%)** contain delivery-before-pickup chronology reversals.
- **436 truck-month records (13.16%)** have utilization above 100%, with a maximum of **148.40%**.
- **3,880 fuel-purchase records (1.98%)** are missing `truck_id`.
- Approximately **2.03%** of fuel-purchase records are missing `driver_id`.
- **8,471 completed trips** have no corresponding fuel-purchase record under the validated linkage.
- Supporting fuel and delivery data extends into January 2025, but the core analytical period remains **2022-01-01 through 2024-12-31**.

These conditions must be visible in analytical interpretation and must not be silently corrected, removed or converted into assumptions.

#### 3.7.7.6 Baseline Reconciliation Control
---

The Stage 3.5 validation sequence remains mandatory:

**Business Definition → Independent Analytical Baseline → Power BI/DAX Implementation → Reconciliation**

Python and Excel may both be used to independently establish and cross-check analytical baselines before Power BI implementation.

For exact counts and sums, unexplained differences must reconcile to **0**. Ratio-based measures must use the documented validation tolerance where applicable. Any unexplained discrepancy must trigger investigation before the result is accepted.

At minimum, the following Stage 3.5 baseline values must remain reproducible:

| KPI | Validated Baseline |
|---|---:|
| Completed Loads | 85,410 |
| Completed Trips | 85,410 |
| Total Revenue | 262,525,800.29 |
| On-Time Delivery | 44.61% |
| Active Fleet | 92 |
| Total Fuel Consumption | 24,493,560.80 gallons |
| Fuel Cost | 95,499,723.14 |

#### 3.7.7.7 Tool Change Control
---

A tool may be changed when another approach provides a more reliable or efficient analytical path, but the change must not silently alter:

- the business question;
- the approved KPI definition;
- the analytical population;
- the validated grain;
- the comparison basis;
- the interpretation of data-quality limitations.

Material changes must be documented and assessed before implementation.

The objective is not to maximize the number of technologies used. The objective is to demonstrate a strong, practical **Data Analyst workflow using Python, Excel, Power Query and Power BI**, supported by evidence-based analysis and controlled validation.

#### 3.7.7.8 Analytical Evidence and Documentation Standard
---

Every material analytical output must be traceable to the actual project evidence established in Sections 3.1–3.6.

Documentation should identify, where applicable:

- the originating Business Question from Section 3.3;
- the relevant KPI definition from Section 3.4;
- the KPI validation status from Section 3.5;
- the investigation design from Section 3.6;
- the analytical method from Section 3.7;
- the Python and/or Excel analytical evidence;
- the Power Query transformation dependency, if applicable;
- the Power BI/DAX implementation dependency, if applicable;
- the relevant data-quality limitation;
- the resulting finding classification;
- the business meaning and decision relevance.

No analytical Markdown should describe a result as a generic theoretical possibility when the project has already produced a validated value or finding.

This ensures that the analytical record remains **evidence-first, reproducible, business-oriented and directly connected to the final Excel + Power BI deliverable**.

#### 3.7.7.9 Transition to Analysis-to-Decision Handoff
---

The completed analytical artifacts from Python and Excel, together with the controlled Power Query preparation and Power BI/DAX implementation, will feed the final analysis-to-decision handoff.

The next section will define how an analytical result becomes a validated finding, business insight and decision-relevant output without prematurely designing dashboard visuals.

**Business Question → Validated KPI → Python Analysis → Excel Analysis → Power Query → Power BI/DAX → Validated Finding → Business Insight → Decision Relevance → Stage 3.8 Presentation Requirement**

---

### 3.7.8 Analysis-to-Decision Handoff
---

The purpose of the analysis-to-decision handoff is to convert executed analytical results into validated findings, business insights and decision-relevant outputs without allowing the dashboard or visualization layer to dictate the conclusion.

The handoff must preserve traceability from the prioritized business questions in Section 3.3 through the approved KPI definitions and validations in Sections 3.4–3.5, the investigation framework in Section 3.6, and the analytical execution defined in Section 3.7.

#### 3.7.8.1 Handoff Chain
---

Every material analytical result should follow the controlled chain:

**Business Question → Validated KPI → Python Analysis → Excel Analysis/Validation → Power Query Preparation → Power BI/DAX Implementation → Validated Finding → Business Insight → Decision Relevance → Presentation Requirement**

The dashboard is therefore the final communication layer, not the source of the business conclusion.

A visual must not be created first and then used to search for a conclusion. The analytical evidence must establish the result before the presentation requirement is defined.

#### 3.7.8.2 Q1–Q7 Management Handoff
---

The P1 management questions form the primary decision path for the project.

| Question | Analytical Result Required | Decision Relevance |
|---|---|---|
| **Q1 — Overall Performance** | Establish the operational baseline using 85,410 completed loads, 85,410 completed trips, revenue of 262,525,800.29, 44.61% on-time delivery, 92 active fleet assets, 24,493,560.80 gallons of fuel consumption and fuel cost of 95,499,723.14 | Establish overall operating position and identify which performance area requires management attention |
| **Q2 — Delivery Reliability** | Assess the validated 44.61% On-Time Delivery baseline and examine its distribution over appropriate time/operational dimensions | Determine whether delivery reliability represents a material management concern |
| **Q3 — Delivery Differences** | Compare On-Time Delivery across routes, facilities and time periods while validating population and data-quality effects | Identify where delivery-performance differences warrant investigation |
| **Q4 — Fleet Utilization** | Analyze truck-month Fleet Utilization and Active Fleet Count, including the 436 truck-month records above 100% and maximum of 148.40% | Identify utilization patterns requiring operational investigation without treating >100% as automatically invalid |
| **Q5 — Fuel & Cost** | Examine fuel consumption, fuel cost and source-defined `average_mpg` together with operational volume and relevant fleet dimensions | Identify cost and efficiency patterns while avoiding unsupported causal claims |
| **Q6 — Route Performance** | Compare routes using multiple validated KPIs rather than a single ranking | Identify routes demonstrating materially different operational performance |
| **Q7 — Facility Investigation** | Compare facilities using activity, delivery, cost and operational performance measures | Identify facilities requiring further investigation rather than labeling high-volume facilities as bottlenecks automatically |

The decision output for each question must depend on the evidence produced during analysis. A question may legitimately conclude **no material pattern** if the evidence does not support escalation.

#### 3.7.8.3 Conditional Diagnostic Handoff — Q8–Q15
---

Questions Q8–Q15 are supporting diagnostic questions and should be activated when P1 analysis identifies a meaningful pattern requiring deeper investigation.

Examples include:

- Q8 — factors associated with delivery delays;
- Q9 — routes contributing most to volume, cost or revenue;
- Q10 — materially different fleet asset utilization or efficiency;
- Q11 — materially different supported driver performance;
- Q12 — visible maintenance patterns;
- Q13 — maintenance patterns associated with fleet performance;
- Q14 — performance changes over time;
- Q15 — seasonal or recurring patterns.

These questions must not be forced into the analysis simply to increase analytical coverage.

A P1 result must provide a defensible reason for deeper investigation, such as a persistent difference, meaningful contribution, unusual distribution, operational concentration or other validated pattern.

#### 3.7.8.4 Exploratory Handoff — Q16–Q19
---

Q16–Q19 remain exploratory and must not override the primary management story.

The exploratory scope includes:

- customer contribution to operational value;
- relationships between operational dimensions and cost efficiency;
- relationships between operational volume and efficiency;
- assessment of whether profitability or margin analysis is sufficiently supported.

Q19 requires particular caution because the available validated data does not automatically establish a complete profitability or margin framework.

Exploratory analysis may identify useful future analytical opportunities, but unsupported profitability conclusions must not be presented as established business findings.

#### 3.7.8.5 Finding-to-Insight Qualification
---

An analytical result must progress through the following qualification levels:

**KPI Result → Observed Pattern → Validated Pattern → Diagnostic Finding → Business Insight → Decision Relevance**

The following distinctions are mandatory:

- **KPI Result:** what the measurement shows.
- **Observed Pattern:** a visible difference, trend, contribution or distribution.
- **Validated Pattern:** an observed pattern that survives the defined comparison and validation checks.
- **Diagnostic Finding:** a sufficiently supported pattern that has business significance.
- **Business Insight:** what the finding means operationally.
- **Decision Relevance:** what management may reasonably consider because of the finding.

The project must not skip directly from a KPI result to a business recommendation.

#### 3.7.8.6 Evidence and Data-Quality Handoff
---

Every finding transferred toward presentation must carry its relevant evidence and limitations.

Important validated limitations include:

- **4,952 trips (5.80%)** are missing at least one driver, truck or trailer assignment.
- **486 trips (0.569%)** contain delivery-before-pickup chronology reversals.
- **436 truck-month records (13.16%)** have Fleet Utilization above 100%, with a maximum of **148.40%**.
- **3,880 fuel-purchase records (1.98%)** are missing `truck_id`.
- Approximately **2.03%** of fuel-purchase records are missing `driver_id`.
- **8,471 completed trips** have no corresponding fuel-purchase record under the validated linkage.
- `average_mpg` remains a source-defined metric whose methodology was not independently reproduced.
- On-Time Delivery is based on the source-defined **±120-minute tolerance**, whose formal policy basis was not independently established.
- Supporting fuel and delivery data extends into January 2025, while the core analytical period remains **2022-01-01 through 2024-12-31**.

These limitations must travel with the finding when they materially affect interpretation.

#### 3.7.8.7 Decision-Relevance Rules
---

A finding may be considered decision-relevant only when:

1. it directly relates to a prioritized business question;
2. the underlying KPI is approved under Stage 3.5;
3. the analytical population and grain are appropriate;
4. the observed difference or pattern has been validated;
5. relevant data-quality limitations have been assessed;
6. the business interpretation does not exceed the available evidence;
7. the implication is sufficiently clear to inform an operational decision or further investigation.

The following shortcuts are prohibited:

- **High volume ≠ poor performance**
- **Low percentage ≠ operational failure**
- **Ranking ≠ bottleneck**
- **Correlation/association ≠ causation**
- **Outlier ≠ data error**
- **Utilization >100% ≠ automatically invalid**
- **Missing assignment ≠ zero performance**
- **Source-defined metric ≠ independently validated methodology**
- **Observed pattern ≠ confirmed finding**
- **Finding ≠ automatic recommendation**

#### 3.7.8.8 Handoff to Excel and Power BI Presentation
---

The analytical evidence should first be understandable and defensible in the analyst workflow before being converted into the final interactive presentation.

The preferred progression is:

**Python**
→ establish and validate the analytical result

**Excel**
→ investigate, compare, summarize and communicate the analytical evidence in analyst-oriented form

**Power Query**
→ prepare the validated data structure for the BI model

**Power BI/DAX**
→ implement approved measures and present the validated analytical story interactively

The Power BI presentation must therefore inherit the conclusions established through analysis rather than independently inventing them.

Dashboard visuals should answer questions such as:

- What is happening?
- Where is it happening?
- How large is the difference?
- Is the pattern persistent or meaningful?
- What evidence supports the interpretation?
- What should management investigate or consider?

They should not be designed to manufacture a finding that the analytical evidence does not support.

#### 3.7.8.9 Stage 3.8 Handoff Requirement
---

The output of Stage 3.7 is not a collection of charts. It is a controlled set of analytical results, validated findings, business insights and decision-relevant conclusions that can later be translated into dashboard requirements.

Before entering Stage 3.8, each material P1 analytical output must have:

- a linked Business Question;
- an approved KPI or clearly documented supporting measure;
- a defined population and grain;
- an analytical result;
- comparison or investigation evidence where applicable;
- relevant data-quality assessment;
- finding classification;
- evidence strength;
- business meaning;
- decision relevance;
- reproducible analytical support.

Stage 3.8 may then determine **how those validated outputs should be presented**, without changing their definitions or manufacturing conclusions.

#### 3.7.8.10 Traceability Standard
---

Every final analytical conclusion must remain traceable through the project design:

**3.3 Business Question**
→ **3.4 KPI Definition**
→ **3.5 KPI Validation & Approval**
→ **3.6 Investigation Design**
→ **3.7 Analytical Execution**
→ **Validated Finding**
→ **Business Insight**
→ **Decision Relevance**
→ **3.8 Presentation Requirement**

This traceability ensures that the final Excel + Power BI project remains evidence-driven and that every major dashboard element can be explained in terms of an actual business question and validated analytical result.

#### 3.7.8.11 Transition to 3.7.9
---

With the analysis-to-decision handoff defined, Stage 3.7 proceeded to its final analytical governance, change-control, reproducibility, and completion-gate controls.

Section **3.7.9** establishes those final governance requirements and records the Stage 3.7 completion decision.

The governance controls subsequently served as downstream analytical and BI execution controls, including baseline reconciliation, data-quality exception handling, tool responsibilities, reproducibility, and controlled change management.

The transition from the analysis-to-decision handoff into Section 3.7.9 is therefore recorded as part of the completed Stage 3.7 design and execution-control sequence.

## **STATUS: ANALYSIS-TO-DECISION HANDOFF COMPLETED / TRANSITION TO FINAL STAGE 3.7 GOVERNANCE COMPLETED**

---

### 3.7.9 Analytical Governance, Change Control & Completion Gate
---

The purpose of this section is to establish the final governance rules for executing Stage 3.7 without changing the approved business questions, KPI definitions, analytical populations or investigation framework established in Sections 3.1–3.6.

Stage 3.7 is considered ready for execution only when the analytical plan is reproducible, evidence-driven, appropriately controlled across Python, Excel, Power Query and Power BI/DAX, and capable of producing traceable findings for the Stage 3.8 presentation design.

#### 3.7.9.1 Analytical Governance Principles
---

All Stage 3.7 analysis must follow these principles:

1. **Business-first analysis**  
   Analysis must originate from the prioritized business questions established in Section 3.3 rather than from arbitrary available fields or visually interesting patterns.

2. **Validated KPI dependency**  
   KPI definitions and approval decisions established in Sections 3.4–3.5 are treated as controlled inputs to the analysis.

3. **Evidence before conclusion**  
   A numerical result or visual pattern must not automatically be treated as a business finding.

4. **Grain awareness**  
   Every analysis must respect the validated grain of the underlying measure.

5. **Data-quality awareness**  
   Known Stage 2 and Stage 3 limitations must be considered when interpreting analytical results.

6. **Reproducibility**  
   Material analytical results must be reproducible through documented calculations, controlled datasets, notebooks, Excel analysis, queries or Power BI/DAX logic as applicable.

7. **No unsupported causality**  
   Association, correlation or co-movement must not be represented as causal impact unless causal evidence is independently established.

8. **No artificial correction of source behavior**  
   Source-defined metrics and validated exceptions must not be silently corrected simply because they produce unexpected results.

9. **Presentation follows analysis**  
   Power BI visuals must communicate validated analytical results rather than determine the conclusion in advance.

10. **Data Analyst priority**  
    The project must prioritize practical analytical capability using **Python → Excel → Power Query → Power BI/DAX**, rather than shifting toward ETL-engineering complexity.

#### 3.7.9.2 Controlled Analytical Baseline
---

The following validated baseline measures form the controlled analytical reference for downstream interpretation and BI reconciliation:

* Completed Loads: **85,410**
* Completed Trips: **85,410**
* Total Revenue: **262,525,800.29**
* On-Time Delivery: **44.61%**
* Fleet Utilization: **83.04%**
* Average Trip Duration: **25.01 hours**
* Fuel Cost per Gallon: **6.50**
* Trips per Active Truck: **7.01**
* Cost per Load: **approximately $1.12K**

These baseline values were subsequently reproduced and reconciled during the downstream analytical and BI validation workflow.

The baseline was used as a controlled reference for:

* KPI implementation;
* reconciliation;
* diagnostic comparison;
* dashboard validation; and
* downstream analytical interpretation.

The baseline does not imply that every metric shares the same analytical grain or filter behavior. Source-defined fleet-level measures and other metrics with documented limitations remain subject to their respective population, grain, and semantic constraints.

## **Status: CONTROLLED ANALYTICAL BASELINE ESTABLISHED / REPRODUCED AND RECONCILED IN DOWNSTREAM VALIDATION**


#### 3.7.9.3 Analytical Change Control
---

Stage 3.7 analysis may evolve as evidence is discovered, but material changes must be controlled.

A change is considered material when it affects:

- Business Question;
- KPI definition;
- KPI population;
- analytical grain;
- time period;
- segmentation logic;
- comparison basis;
- numerator or denominator;
- inclusion/exclusion criteria;
- interpretation;
- finding classification;
- decision relevance.

For any material change, the analytical record must document:

1. Original approach.
2. Proposed change.
3. Reason for change.
4. Evidence supporting the change.
5. Business impact.
6. Affected analysis or KPI.
7. Validation required.
8. Final decision.
9. Updated analytical artifact.

KPI definition changes must follow the change-control requirements established in Section 3.5 and must never be hidden inside DAX or an undocumented Excel formula.

#### 3.7.9.4 Data-Quality Exception Governance
---

Known exceptions identified during Stages 1–3 must remain visible throughout analytical execution.

The following are controlled analytical conditions:

- **4,952 trips (5.80%)** are missing at least one driver, truck or trailer assignment.
- **486 trips (0.569%)** contain delivery-before-pickup chronology reversals.
- **436 truck-month records (13.16%)** have Fleet Utilization above 100%, with a maximum of **148.40%**.
- **3,880 fuel-purchase records (1.98%)** are missing `truck_id`.
- Approximately **2.03%** of fuel-purchase records are missing `driver_id`.
- **8,471 completed trips** have no corresponding fuel-purchase record under the validated linkage.
- `average_mpg` is source-defined and its methodology was not independently reproduced.
- On-Time Delivery uses the source-defined **±120-minute tolerance**, without an independently established formal policy basis.
- Supporting fuel and delivery records extend into January 2025, while the core operational period remains **2022-01-01 through 2024-12-31**.

These conditions must not be silently deleted, capped, imputed or reclassified unless a documented analytical requirement and validation decision supports the treatment.

#### 3.7.9.5 Python and Excel Evidence Control
---

Python and Excel together form the primary independent analytical and business-investigation layer before final BI presentation.

**Python must be used where appropriate for:**
- reproducible calculations;
- independent KPI baselines;
- population checks;
- aggregations;
- distributions;
- exception analysis;
- reconciliation;
- analytical validation.

**Excel must be used where appropriate for:**
- PivotTable-based investigation;
- business-oriented comparisons;
- trend and contribution analysis;
- segment-level summaries;
- cross-checking Python results;
- analyst-readable evidence tables;
- investigation support for routes, facilities, fleet, fuel/cost and other relevant dimensions.

Excel analysis must remain controlled and reproducible. Important formulas, filters, populations and assumptions must be documented sufficiently for another analyst to understand how the result was produced.

The purpose is not to duplicate Python analysis unnecessarily. Python provides computational independence and reproducibility, while Excel provides a practical business-analysis environment aligned with the project's Data Analyst objective.

#### 3.7.9.6 Power Query and Power BI Governance
---

Power Query must prepare data for the BI model without changing the approved analytical meaning of the data.

Power Query transformations must:

- preserve required grain separation;
- avoid accidental transaction multiplication;
- maintain appropriate relationships;
- preserve relevant source values and exceptions;
- document material transformations;
- avoid silently changing KPI populations.

Power BI/DAX must then implement the approved Stage 3.5 KPI definitions.

The implementation sequence remains:

**Validated Business Definition → Python/Excel Baseline → Power Query Model Preparation → Power BI/DAX Implementation → Reconciliation**

Power BI/DAX must not become the hidden location for changing business definitions.

#### 3.7.9.7 Reproducibility Requirement
---

Every material analytical result must be reproducible through a documented analytical path.

At minimum, reproducibility should identify:

- Business Question;
- analytical population;
- time period;
- grain;
- measure/KPI;
- segmentation;
- comparison basis;
- calculation method;
- source data;
- relevant data-quality conditions;
- analytical tool used;
- resulting value/pattern;
- validation evidence.

For P1 questions, reproducibility is mandatory before a conclusion is promoted to a validated business finding.

#### 3.7.9.8 Stage 3.7 Completion Gate
---

Stage 3.7 may be considered complete only when the following conditions are satisfied:

**Business Alignment**
- Q1–Q7 have defined executable analytical paths.
- Q8–Q15 have conditional diagnostic paths.
- Q16–Q19 have defined exploratory/scope treatment.

**KPI Control**
- All P1 KPIs remain aligned with the Stage 3.5 approved definitions and limitations.
- No unapproved KPI definition changes have been introduced.

**Population & Grain**
- The core period is controlled as **2022-01-01 through 2024-12-31**.
- Question-specific populations are documented.
- KPI-specific grains are respected.
- Cross-grain multiplication risks are controlled.

**Analytical Execution Plan**
- Python analysis requirements are defined.
- Excel analysis requirements are defined.
- Power Query preparation requirements are defined.
- Power BI/DAX implementation requirements are defined.
- Tool responsibilities are not duplicated without analytical justification.

**Evidence**
- Baseline reconciliation requirements are established.
- Data-quality limitations are carried into analytical interpretation.
- Finding qualification rules are established.
- Decision relevance is explicitly separated from recommendation.

**Traceability**
Every major analytical output can be traced through:

**3.3 Business Question → 3.4 KPI Definition → 3.5 KPI Validation → 3.6 Investigation Design → 3.7 Analytical Execution → Finding → Insight → Decision Relevance**

**Presentation Handoff**
- Analytical conclusions can be translated into Stage 3.8 requirements.
- No dashboard visual is required to establish a conclusion that has not first been analytically supported.

---

#### 3.7.9.9 Stage 3.7 Completion Status
---

**STAGE 3.7 — ANALYTICAL PLAN: COMPLETE / CARRIED INTO DOWNSTREAM EXECUTION**

Stage 3.7 established the executable analytical workstreams, sequence, question-to-analysis mapping, method selection, population controls, output specification, tool architecture, analysis-to-decision handoff, governance, and completion criteria.

The approved project execution philosophy was:

**Validated Business Questions**
→ **Python Independent Analysis**
→ **Excel Business Analysis & Validation**
→ **Power Query Data Preparation**
→ **Power BI/DAX Implementation**
→ **Reconciliation**
→ **Validated Findings**
→ **Business Insights**
→ **Decision-Relevant Conclusions**
→ **Stage 3.8 Presentation Design**

The Stage 3.7 analytical framework was subsequently carried into downstream analytical and BI execution. The resulting workflow retained the approved business-question hierarchy, KPI definitions, analytical populations, grain controls, data-quality limitations, and evidence requirements.

The original Stage 3.7 section therefore remains the controlled **analytical execution specification**, while its execution state is evidenced through the subsequent analytical validation, BI implementation, reconciliation, and QA workflow.

Stage 3.7 should therefore no longer be described as merely awaiting analytical execution. Its design gate was completed and its execution framework was subsequently used to produce and validate downstream analytical and BI evidence.

## **STATUS: STAGE 3.7 — COMPLETE / GATED / CARRIED INTO DOWNSTREAM ANALYTICAL EXECUTION**

---

#### 3.7.9.10 Transition to Stage 3.8

---

With Stage 3.7 analytically defined and subsequently carried into downstream execution, the project transitioned to **Stage 3.8 — Dashboard & Presentation Design**.

Stage 3.8 inherited the validated business questions, KPI definitions, analytical scope, documented limitations, analytical evidence requirements, and decision requirements established through Stages 3.1–3.7.

The dashboard architecture was therefore designed around the business problem established at the beginning of Stage 3 rather than as a collection of independent charts.

The subsequent Stage 3.8 design and downstream BI implementation retained this analytical-to-presentation traceability. The implemented dashboard structure therefore represents the downstream presentation of the governed business and analytical framework rather than a replacement for it.

The transition from Stage 3.7 to Stage 3.8 is consequently recorded as a **completed historical stage transition**, while any subsequent refinement is governed through the applicable downstream change-control process.

## **STATUS: STAGE 3.7 → STAGE 3.8 TRANSITION COMPLETED**

---

### 3.8.1 Dashboard & Presentation Decision Framework
---

The purpose of this section is to establish Project 2 as a small **business intelligence product**, rather than a collection of independent Power BI visuals. The final presentation must communicate the validated operational story from Sections 3.1–3.7 and ultimately connect analytical evidence to management attention and action.

The dashboard architecture will therefore progress from **overall performance → operational differences → diagnostic evidence → business meaning → management action**, while Excel provides the detailed analytical evidence supporting the Power BI presentation.

#### 3.8.1.1 Core Presentation Philosophy
---

Project 2 will not be designed around the question:

**"What charts can be created from this dataset?"**

It will be designed around:

**"What does management need to know, what evidence supports it, and what decision or investigation can reasonably follow?"**

The presentation chain will be:

**Business Question → Validated KPI → Analytical Result → Observed Pattern → Validated Finding → Diagnostic Evidence → Business Insight → Decision Relevance → Management Action**

The dashboard must therefore communicate both **performance** and **meaning**.

A KPI alone is not a finding.

A ranking alone is not a problem.

A difference alone is not a root cause.

A correlation or association alone is not causation.

A recommendation must therefore be supported by the analytical evidence produced during Stage 5.

#### 3.8.1.2 Small BI Product Strategy
---

The project will be presented as a compact BI product consisting of complementary analytical and presentation layers.

The primary product structure will be:

**Python**
→ independent analytical calculation and validation

**Excel**
→ detailed business analysis, comparison and evidence

**Power Query**
→ controlled data preparation

**Power BI / DAX**
→ interactive management presentation

**Management Findings**
→ validated conclusions, business meaning and decision relevance

This structure deliberately positions Project 2 as an **Excel + Power BI Data Analyst project**, rather than repeating the ETL-engineering orientation of Project 1.

#### 3.8.1.3 Power BI Product Architecture
---

The preferred Power BI architecture is a five-part management story.

| Page | Business Question | Purpose |
|---|---|---|
| **01 — Executive Control Tower** | Q1 | Establish the overall operating baseline and highlight areas requiring attention |
| **02 — Operations Diagnostics** | Q2, Q3 | Examine delivery reliability and identify meaningful performance differences |
| **03 — Fleet, Fuel & Cost Intelligence** | Q4, Q5 | Analyze fleet utilization, fuel efficiency, fuel consumption and operating cost patterns |
| **04 — Route & Facility Intelligence** | Q6, Q7 | Compare operational areas and identify segments requiring deeper investigation |
| **05 — Management Findings & Action** | Q1–Q7, supported by Q8–Q15 | Present validated findings, diagnostic evidence, business impact and decision relevance |

This five-page structure is the preferred product architecture, but individual page composition may change after Stage 5 analytical execution.

The final dashboard must be driven by the findings actually discovered in the validated data.

#### 3.8.1.4 Page 01 — Executive Control Tower
---

The Executive Control Tower answers:

**"How is the operation performing overall?"**

The initial validated baseline includes:

- **85,410 Completed Loads**
- **85,410 Completed Trips**
- **262,525,800.29 Total Revenue**
- **44.61% On-Time Delivery**
- **92 Active Fleet**
- **24,493,560.80 gallons Total Fuel Consumption**
- **95,499,723.14 Fuel Cost**

These values establish operating scale and current measurement baselines.

They must not automatically be labeled as positive or negative without an appropriate comparison or business benchmark.

The page should provide:

- overall KPI baseline;
- high-level trend context where analytically appropriate;
- clear navigation toward areas requiring investigation;
- concise data-quality or interpretation notes where material.

The Executive Control Tower must remain focused on **management orientation**, not detailed diagnostics.

#### 3.8.1.5 Page 02 — Operations Diagnostics
---

The Operations Diagnostics page answers:

**"Where are delivery and operational performance differences occurring?"**

The page will primarily support:

- Q2 — Delivery Reliability;
- Q3 — Delivery Performance Differences;
- conditional diagnostic questions from Q8;
- relevant time-based analysis from Q14–Q15.

The primary analytical measure is the approved **44.61% On-Time Delivery** baseline.

Potential analytical dimensions include:

- time;
- route;
- facility;
- relevant operational categories.

Comparisons must use validated populations and appropriate grains.

The source-defined **±120-minute On-Time Delivery tolerance** must remain unchanged, and its formal policy basis must not be represented as independently established.

The page should identify meaningful differences only after the analytical validation rules from Stage 3.6 have been satisfied.

#### 3.8.1.6 Page 03 — Fleet, Fuel & Cost Intelligence
---

The Fleet, Fuel & Cost Intelligence page answers:

**"What operational patterns are visible across fleet utilization, fuel efficiency and operating cost?"**

The page supports:

- Q4 — Fleet Utilization;
- Q5 — Fuel and Cost Performance;
- Q10 — Fleet Asset Diagnostics;
- Q12–Q13 — Maintenance Diagnostics where supported.

The analysis must preserve the validated Fleet Utilization grain of **truck-month**.

The dashboard must explicitly respect the Stage 2 finding that:

- **436 truck-month records (13.16%)** exceed 100% utilization;
- maximum observed utilization is **148.40%**.

These values must not be automatically capped, removed or classified as invalid.

Fuel-related interpretation must also preserve:

- **3,880 fuel-purchase records (1.98%)** missing `truck_id`;
- approximately **2.03%** missing `driver_id`;
- **8,471 completed trips** without a corresponding fuel-purchase record under the validated linkage;
- source-defined `average_mpg`.

Fuel and cost patterns must therefore be presented as supported analytical associations unless stronger evidence is established.

#### 3.8.1.7 Page 04 — Route & Facility Intelligence
---

The Route & Facility Intelligence page answers:

**"Which operational areas demonstrate materially different performance?"**

The page primarily supports:

- Q6 — Route Performance;
- Q7 — Facility Investigation;
- Q9 — Route Contribution;
- relevant elements of Q3 and Q15.

Route and facility evaluation must use multiple relevant KPIs rather than a single ranking.

Potential measures include:

- operational volume;
- On-Time Delivery;
- revenue;
- fuel cost;
- fuel efficiency;
- fleet-related measures;
- other approved supporting measures where analytically appropriate.

A high-volume route or facility must not automatically be labeled inefficient.

A low-performing segment must not automatically be labeled a bottleneck.

A segment becomes a candidate for management attention when the analytical evidence demonstrates a sufficiently meaningful and validated pattern.

#### 3.8.1.8 Page 05 — Management Findings & Action
---

The Management Findings & Action page is the primary portfolio differentiator.

Its purpose is to answer:

**"What did the analysis actually find, why does it matter, and what should management consider next?"**

This page must not be populated with generic recommendations prepared before Stage 5 analysis.

It must be populated from the validated analytical findings produced through:

**Python → Excel → Power Query → Power BI/DAX**

Each material finding should follow a structured format:

**Finding**
- What materially different or meaningful pattern was identified?

**Evidence**
- What KPI, comparison, trend, contribution or distribution supports the finding?

**Diagnostic Evidence**
- What additional validated evidence helps explain the observed pattern?

**Data Limitation**
- What known data-quality or methodological limitation affects interpretation?

**Business Meaning**
- What does the validated finding mean operationally?

**Business Impact**
- What operational consequence is supported by the evidence?

**Management Action**
- What action, review or further investigation is reasonably justified?

This structure converts Power BI from a reporting interface into a **decision-support product**.

#### 3.8.1.9 Finding Representation Standard
---

The final dashboard should prioritize a small number of **high-value validated findings** rather than attempting to display every analytical result.

A finding should be promoted to the management layer only when:

1. it is linked to a prioritized business question;
2. the underlying KPI or measure is appropriately defined;
3. the analytical population and grain are valid;
4. the observed pattern has been investigated;
5. relevant data-quality effects have been assessed;
6. the interpretation is supported by evidence;
7. the business relevance is clear.

Findings should be classified using the Stage 3.6 framework:

- **No Material Pattern**
- **Observation**
- **Diagnostic Finding**
- **Finding with Limitation**
- **Data Limitation**
- **Requires Further Investigation**

Only sufficiently supported findings should be presented as management conclusions.

#### 3.8.1.10 Diagnostic Evidence vs Root Cause
---

The dashboard must distinguish between **diagnostic evidence** and **causal explanation**.

The project may identify:

- associated factors;
- meaningful segment differences;
- contribution patterns;
- persistent trends;
- operational concentrations;
- relationships requiring further investigation.

The project must not label these as confirmed root causes unless the evidence supports causal inference.

Therefore, language such as:

**"Primary Cause: Route Distance"**

must not be used merely because route distance is associated with poor delivery performance.

A defensible presentation may instead state:

**"Diagnostic Evidence: Lower delivery reliability is associated with higher route-distance segments."**

If further evidence supports an operational interpretation, the dashboard may then state:

**"Management Implication: Review scheduling and route planning for the affected segment."**

This distinction is essential for analytical credibility.

#### 3.8.1.11 Management Action Standard
---

Management actions must be generated from validated findings rather than predetermined assumptions.

Possible action categories include:

- monitor;
- investigate;
- review;
- prioritize;
- validate operational process;
- evaluate scheduling;
- evaluate route planning;
- review asset utilization;
- review maintenance patterns;
- conduct targeted operational analysis.

Actions must remain proportional to the evidence.

For example:

**Validated Finding**
→ materially lower delivery reliability in a defined operational segment

**Business Meaning**
→ the segment warrants operational review

**Management Action**
→ review scheduling and route-planning practices for that segment

This is preferable to an unsupported claim such as:

**"Route planning caused the delays; optimize the route immediately."**

#### 3.8.1.12 Excel-to-Power-BI Evidence Relationship
---

Excel will serve as an important evidence and investigation layer supporting the final Power BI product.

The expected relationship is:

**Python**
→ establish independent analytical baseline

**Excel**
→ investigate the pattern, compare segments, validate the evidence and prepare analyst-readable findings

**Power Query**
→ prepare the controlled BI data model

**Power BI/DAX**
→ reproduce approved measures and communicate the validated result

**Management Findings**
→ translate validated analytical evidence into business meaning and decision relevance

Where a Power BI visual represents an important finding, the supporting analytical evidence should be traceable to the underlying Excel/Python analysis.

#### 3.8.1.13 Standout Portfolio Requirement
---

The final project should demonstrate more than technical dashboard construction.

A reviewer should be able to understand:

**What was the business problem?**

→ **What did the analyst measure?**

→ **What did the data show?**

→ **Where was the meaningful difference?**

→ **What evidence supported the finding?**

→ **What limitation affected interpretation?**

→ **Why does the finding matter?**

→ **What should management consider next?**

This is the primary distinction between a generic Power BI portfolio dashboard and a professional Data Analyst case study.

The project should therefore emphasize **analytical reasoning, evidence and decision support** over visual complexity.

#### 3.8.1.14 Profitability and Unsupported KPI Control
---

The original conceptual design included profit/margin.

However, Stage 3.6 establishes that profitability or margin analysis must not be presented unless the available data sufficiently supports a defensible profitability definition.

Therefore:

- Profit must not be displayed as an executive KPI merely because it is common in logistics dashboards.
- Margin must not be calculated from incomplete or unsupported cost components.
- Cost per mile may only be promoted when its population, numerator and denominator are analytically validated.
- Any new executive KPI must pass the same KPI-definition and validation controls established in Sections 3.4–3.5.

This protects the dashboard from appearing more sophisticated than the underlying evidence allows.

#### 3.8.1.15 Final Presentation Decision
---

The final Project 2 presentation strategy is therefore:

**01 — Executive Control Tower**
→ What is happening?

**02 — Operations Diagnostics**
→ Where are the performance differences?

**03 — Fleet, Fuel & Cost Intelligence**
→ What operational patterns exist across fleet and cost?

**04 — Route & Facility Intelligence**
→ Which operational areas deserve attention?

**05 — Management Findings & Action**
→ What did the analysis actually find, why does it matter, and what should management consider?

This structure will be treated as the preferred Stage 3.8 product architecture.

However, the **actual findings, visuals, rankings, highlighted segments and recommendations must be determined after Stage 5 analytical execution**.

The project must never manufacture findings to fill a predetermined dashboard layout.

**The dashboard architecture is fixed enough to provide direction; the analytical story inside it must remain evidence-driven.**

---

### 3.8.2 Executive Control Tower Design
---

The Executive Control Tower is the management entry point to the Power BI report. It is designed to answer Q1 — **“How is the logistics operation performing overall?”** — using the approved KPI portfolio, validated analytical period, and evidence controls established in Sections 3.1–3.7.

The page must present the operational baseline clearly, provide enough trend/comparison context to make the baseline meaningful, identify areas requiring deeper investigation without inventing findings, and provide controlled navigation into the diagnostic pages.

#### 3.8.2.1 Executive Page Objective
---

The primary objective of Page 01 is to provide a concise management-level view of overall operational performance before the user moves into diagnostic analysis.

The page must answer four sequential questions:

1. **What is the scale of the operation?**
2. **What is the current validated performance baseline?**
3. **Which performance dimensions require deeper investigation?**
4. **Where should management go next to investigate the underlying pattern?**

The page is therefore a **management summary and navigation layer**, not the location where final diagnostic conclusions are created.

The underlying analytical chain remains:

**Business Question → Validated KPI → Analytical Result → Observed Pattern → Validated Finding → Diagnostic Evidence → Business Insight → Decision Relevance**

Page 01 should primarily communicate the first three stages of this chain and direct users to the later stages on Pages 02–05.

#### 3.8.2.2 Q1 Alignment and Executive Scope
---

Page 01 is directly aligned to **Q1 — How is the logistics operation performing overall?**

The primary Q1 measures approved through Stage 3.5 are:

| KPI | Validated Baseline | Primary Role |
|---|---:|---|
| Completed Loads | 85,410 | Operational scale |
| Completed Trips | 85,410 | Operational activity |
| Total Revenue | 262,525,800.29 | Business value / revenue activity |
| On-Time Delivery % | 44.61% | Delivery reliability |
| Active Fleet Count | 92 | Fleet capacity context |
| Total Fuel Consumption | 24,493,560.80 gallons | Fuel exposure |
| Fuel Cost | 95,499,723.14 | Cost exposure |
| Fleet Utilization % | Source-defined | Fleet efficiency context |
| Average Fuel Efficiency | Source-defined | Fuel-efficiency context |

These values are not redesigned or redefined in Stage 3.8. They are the approved Stage 3.5 KPI baselines and must remain consistent with the validated KPI definitions, grains, populations, and limitations.

The page should prioritize the measures that directly establish the operating picture rather than attempting to display every supporting KPI available in the model.

#### 3.8.2.3 KPI Hierarchy
---

The Executive Control Tower will use a hierarchy rather than presenting every KPI with equal visual importance.

**Tier 1 — Core Operational Performance**

- Completed Loads
- Completed Trips
- On-Time Delivery %

These measures establish operational scale and delivery reliability.

**Tier 2 — Business Value and Cost Context**

- Total Revenue
- Fuel Cost
- Total Fuel Consumption

These measures establish the financial and fuel-exposure context of the operation without making unsupported profitability or margin claims.

**Tier 3 — Fleet Context**

- Active Fleet Count
- Fleet Utilization %
- Average Fuel Efficiency

These measures provide fleet and efficiency context and support navigation into the Fleet, Fuel & Cost analysis.

Fleet Utilization and Average Fuel Efficiency must retain their Stage 3.5 source-defined status. The dashboard must not imply that these measures have been independently re-derived if their source methodology has not been independently reproduced.

#### 3.8.2.4 Validated Baseline and Period Control
---

The Executive Control Tower must use the approved core analytical period:

**2022-01-01 through 2024-12-31**

This period is the common management-analysis window established in Stage 3.5 and carried into Stage 3.6 and Stage 3.7.

Supporting fuel and delivery-related data extending into January 2025 must not silently expand the Executive Control Tower's core reporting period.

Any January 2025 information used for a specific supporting analysis must be clearly identified as supporting data rather than being blended into the core management baseline.

The page must therefore maintain a visible or discoverable reporting-period definition so that users understand the population represented by the headline KPIs.

#### 3.8.2.5 Executive Information Flow
---

The page should follow a top-down management information flow:

**Overall KPI Baseline → Reliability → Fleet/Cost Context → Trend or Comparison Context → Attention Signals → Investigation Navigation**

The highest-priority information should appear first.

The Executive Control Tower should not begin with detailed route, facility, driver, truck, or transaction-level analysis. Those dimensions belong to the diagnostic pages defined later in the dashboard architecture.

This follows the principle that an executive dashboard should emphasize the most important information and progressively direct users toward detail rather than attempting to display the complete analytical model on one page. :contentReference[oaicite:2]{index=2}

#### 3.8.2.6 KPI Cards and Context
---

KPI cards should be used for the headline measures that establish the overall operating baseline.

The cards should prominently communicate:

- Completed Loads — **85,410**
- Completed Trips — **85,410**
- Total Revenue — **262,525,800.29**
- On-Time Delivery — **44.61%**
- Active Fleet — **92**
- Fuel Cost — **95,499,723.14**

Total Fuel Consumption of **24,493,560.80 gallons** may be presented as supporting fuel context where space and visual hierarchy justify its inclusion.

Fleet Utilization and Average Fuel Efficiency should be displayed only with their appropriate source-defined interpretation.

The page must avoid excessive decimal precision and unnecessary visual duplication. Large financial and volume measures should be formatted for executive readability while preserving analytical accuracy in the underlying model.

#### 3.8.2.7 Comparison and Trend Context
---

A headline KPI without context can be difficult to interpret. Therefore, where the validated analytical data supports it, Page 01 should provide comparison or trend context rather than displaying isolated numbers.

Potential comparison bases include:

- monthly trend
- quarterly trend
- yearly trend
- previous comparable period
- overall-period comparison
- validated segment comparison

The selected comparison must use the correct KPI grain and date logic established in Sections 3.4–3.7.

For example:

- On-Time Delivery must retain its delivery-event-based logic.
- Fleet Utilization must retain truck-month grain.
- Fuel Cost must retain fuel-purchase transaction logic.
- Completed Loads must remain load-grain based.

A comparison must not be created merely because it is visually attractive.

If a target, budget, service-level threshold, or management benchmark has not been validated in the project, the dashboard must **not invent one** merely to create red/amber/green KPI status.

A KPI status indicator should only be used where a defensible target or threshold exists. :contentReference[oaicite:3]{index=3}

#### 3.8.2.8 Executive Attention Logic
---

Page 01 should not label a KPI as a “problem” solely because its value is high, low, or visually prominent.

The controlled escalation logic is:

**KPI Result → Meaningful Comparison → Validated Pattern → Attention Required**

For example:

- On-Time Delivery of **44.61%** is the validated baseline.
- It is not, by itself, sufficient evidence to identify a specific operational cause.
- Route, facility, time, and other dimensions must be investigated through the analytical work defined in Stage 3.7.
- Only after the comparison and validation steps establish a material pattern should the result progress toward a Diagnostic Finding.

Similarly, the following Stage 2 findings must not automatically be presented as executive performance failures:

- **4,952 trips (5.80%)** missing at least one driver, truck, or trailer assignment.
- **486 trips (0.569%)** with delivery occurring before pickup.
- **436 truck-month records (13.16%)** with utilization above 100%, with a maximum of **148.40%**.
- **3,880 fuel-purchase records (1.98%)** missing `truck_id`.
- Approximately **2.03%** of fuel records missing `driver_id`.
- **8,471 completed trips** without a corresponding fuel purchase.

These are important analytical controls and limitations. They should be surfaced when relevant but must not be converted into unsupported operational conclusions.

#### 3.8.2.9 Data-Quality Discoverability
---

The Executive Control Tower should provide controlled access to relevant data-quality information without allowing data-quality findings to overwhelm the management view.

The following limitations must remain discoverable:

**Trip assignment completeness**

5.80% of completed trips are missing at least one driver, truck, or trailer assignment. This primarily affects dimensional attribution rather than the validity of the total completed-trip count.

**Trip chronology**

486 completed trips, representing approximately 0.569%, contain delivery timestamps earlier than pickup timestamps. These records affect chronology-sensitive analysis and must be considered when interpreting time-based delivery diagnostics.

**Fleet utilization**

436 truck-month records, or 13.16%, exceed 100% utilization, with a maximum of 148.40%. These values must not be automatically capped, corrected, or treated as invalid without additional evidence.

**Fuel linkage**

1.98% of fuel-purchase records are missing `truck_id`, approximately 2.03% are missing `driver_id`, and 8,471 completed trips have no corresponding fuel purchase. Fuel-based dimensional analysis must therefore preserve its documented limitations.

The page should expose these limitations through a compact methodology/data-quality indicator, tooltip, information panel, or controlled navigation rather than presenting them as unsupported performance alerts.

#### 3.8.2.10 Visual Selection Principles
---

The final visual selection will be completed after Stage 5 analytical execution has established the actual patterns and findings.

However, the information architecture is defined now.

Potential visual roles include:

- KPI cards for validated headline measures
- trend visuals for validated time-based patterns
- comparison bars for validated period or segment differences
- compact supporting tables for selected management-level context
- attention indicators only where comparison logic is defensible
- navigation elements to diagnostic and findings pages

Visual selection must be driven by the analytical question, not by the number of chart types available in Power BI.

The page should avoid visual overload, unnecessary chart variety, 3-D visuals, and decorative elements that do not support Q1. Power BI guidance similarly recommends emphasizing important information, keeping dashboards uncluttered, and choosing visuals according to the analytical purpose. :contentReference[oaicite:4]{index=4}

#### 3.8.2.11 Excel-to-Power BI Evidence Relationship
---

The Executive Control Tower is the presentation layer of an analytical workflow that follows:

**Python → Excel → Power Query → Power BI/DAX**

Python will provide independent analytical computation, validation, aggregation, distributions, exception analysis, and reconciliation.

Excel will provide the detailed analyst-facing evidence behind the management view, including:

- KPI reconciliation
- PivotTable-based comparisons
- segment summaries
- trend analysis
- contribution analysis
- exception review
- supporting calculations
- investigation evidence

Power Query will provide controlled transformation and model preparation.

Power BI and DAX will implement the approved KPI logic and provide the interactive management presentation layer.

The Executive Control Tower therefore must not become the place where analytical conclusions are manually created to “make the dashboard look right.”

The dashboard result must be traceable back to the analytical evidence.

#### 3.8.2.12 Navigation and Analytical Handoff
---

Page 01 should provide a controlled navigation path into the remaining dashboard pages.

| Executive Signal / Question | Destination |
|---|---|
| Overall performance | Page 01 — Executive Control Tower |
| Delivery reliability / differences | Page 02 — Operations Diagnostics |
| Fleet utilization / fuel / cost | Page 03 — Fleet, Fuel & Cost Intelligence |
| Route performance | Page 04 — Route & Facility Intelligence |
| Facility performance | Page 04 — Route & Facility Intelligence |
| Validated management findings | Page 05 — Management Findings & Action |

The navigation structure follows the analytical sequence established in Sections 3.6 and 3.7:

**Overall Baseline → Delivery → Fleet/Fuel/Cost → Route/Facility → Validated Findings**

The Executive Control Tower should therefore function as the entry point to the analytical product rather than attempting to replace the deeper analytical pages.

#### 3.8.2.13 Finding and Recommendation Control
---

Page 01 must not contain predetermined root-cause statements, recommendations, or problem-area claims before Stage 5 analytical execution.

The project explicitly distinguishes:

**KPI Result → Observed Pattern → Validated Pattern → Diagnostic Finding → Business Insight → Decision Relevance → Management Action**

Therefore:

- a low KPI is not automatically a finding;
- a ranking is not automatically a bottleneck;
- high volume is not automatically poor performance;
- an outlier is not automatically an error;
- correlation or association is not causation;
- utilization above 100% is not automatically invalid;
- missing assignment is not equivalent to zero performance;
- a source-defined metric is not automatically independently validated.

Any management finding displayed on Page 01 must originate from the executed analytical evidence documented through Stage 5 and must be consistent with the finding qualification framework established in Stage 3.6.

#### 3.8.2.14 Profitability and Unsupported KPI Control
---

The Executive Control Tower must not display profit, margin, or profitability-based performance as an executive KPI unless Stage 5 establishes that the available revenue and cost data are sufficiently aligned for a defensible profitability calculation.

The validated Stage 3.5 portfolio establishes **Total Revenue** and **Fuel Cost**, but the existence of these two measures alone does not establish complete operating profit or margin.

Therefore:

**Revenue + Fuel Cost ≠ Profitability**

Fuel Cost may be presented as a validated cost-exposure measure.

Profit or margin must remain out of the executive KPI hierarchy unless the required cost components, population, grain, and calculation logic are analytically supported and validated.

Similarly, measures such as cost per mile should only be promoted when the numerator and denominator populations are demonstrably compatible.

#### 3.8.2.15 Executive Design Success Criteria
---

The Executive Control Tower will be considered successfully designed when it satisfies all of the following:

- Directly answers **Q1**.
- Uses only approved Stage 3.5 KPI definitions.
- Uses the approved core period of **2022-01-01 to 2024-12-31**.
- Displays the validated baseline values without redefining them.
- Preserves KPI-specific grain and population controls.
- Provides meaningful comparison or trend context where analytically supported.
- Does not invent targets, thresholds, or traffic-light statuses.
- Makes relevant data-quality limitations discoverable.
- Does not convert limitations into unsupported performance conclusions.
- Does not introduce unsupported profitability or causal claims.
- Provides navigation into deeper diagnostic analysis.
- Maintains traceability to the Python and Excel analytical evidence.
- Uses Power BI/DAX as the presentation and interactive analysis layer rather than as a hidden location for analytical definition changes.
- Remains concise enough to function as an executive summary rather than a detailed analytical page.
- Defers final visual selection to the findings produced during Stage 5 execution.

#### 3.8.2.16 Portfolio Differentiation Standard
---

The Executive Control Tower should demonstrate that the project is more than a collection of Power BI visuals.

The reviewer should be able to understand the following progression:

**Business Problem → Business Question → Validated KPI → Real Baseline → Comparison → Analytical Evidence → Limitation → Management Attention → Deeper Investigation**

The strongest differentiator is not visual complexity.

It is the ability to demonstrate that the dashboard is the final presentation layer of a controlled Data Analyst workflow:

**Python analysis → Excel business analysis and validation → Power Query preparation → Power BI/DAX implementation → validated management presentation**

This positioning reinforces the project's primary objective as an **Excel + Power BI Data Analyst portfolio project**, while keeping Python and SQL in their appropriate supporting analytical roles.

#### 3.8.2.17 Stage 3.8.2 Completion Criteria
---

3.8.2 will be considered design-complete when the Executive Control Tower has:

1. A defined Q1 purpose.
2. A validated KPI hierarchy.
3. The approved baseline values from Stage 3.5.
4. Core-period control.
5. KPI-specific grain and population control.
6. A defined executive information flow.
7. A controlled comparison/trend approach.
8. A defined attention-escalation mechanism.
9. Discoverable data-quality limitations.
10. A documented Excel evidence relationship.
11. Controlled navigation to diagnostic pages.
12. Explicit prohibition of unsupported causality, profitability, and root-cause claims.
13. A visual-selection process that depends on Stage 5 analytical findings.
14. Traceability to Sections 3.3–3.7.

At this point, the **Executive Control Tower design is approved as the presentation architecture**, while the final visual composition and actual attention indicators remain dependent on Stage 5 analytical execution.

**Status: 3.8.2 — EXECUTIVE CONTROL TOWER DESIGN: APPROVED FOR IMPLEMENTATION AFTER ANALYTICAL EXECUTION**

---

### 3.8.3 Operations Diagnostics Design
---

The Operations Diagnostics page is the second analytical layer of the Power BI product. It moves from the overall operating baseline established in the Executive Control Tower into the investigation of **delivery reliability and operational differences**, primarily addressing Q2 and Q3 and conditionally activating Q8, Q14, and Q15 when Stage 5 analysis identifies meaningful patterns.

The page must show **where differences occur and what evidence supports further investigation**, without presenting unsupported root-cause or causal conclusions.

#### 3.8.3.1 Diagnostic Objective
---

The primary objective of Page 02 is to answer:

**Q2 — How reliable is delivery performance?**

and

**Q3 — Where are the most significant delivery-performance differences occurring?**

The page may also support:

- Q8 — What factors are associated with delivery delays?
- Q14 — How does operational performance change over time?
- Q15 — Are there meaningful seasonal or recurring operational patterns?

The page therefore moves the analytical story from:

**Overall Performance → Delivery Reliability → Where Differences Occur → What Requires Investigation**

The page does not attempt to determine causal root causes before the underlying analytical evidence has been established.

#### 3.8.3.2 Validated Delivery Baseline
---

The primary delivery-performance KPI approved through Stage 3.5 is:

**On-Time Delivery = 44.61%**

The KPI uses the source-defined delivery-performance methodology with a **±120-minute tolerance**.

The 44.61% result is therefore the validated baseline for the Operations Diagnostics page.

However, the Stage 3.5 approval also established an important limitation:

The ±120-minute tolerance is source-defined, and its formal business-policy basis was not independently established during validation.

Therefore, the dashboard must present the KPI according to the approved definition without implying that the ±120-minute threshold represents an independently confirmed company service-level policy.

The page must not redefine the on-time calculation in Power BI merely to produce a more favorable or intuitive result.

#### 3.8.3.3 Diagnostic Questions and Analytical Scope
---

The page will primarily support the following analytical questions:

| Question | Role on Page 02 |
|---|---|
| Q2 | Primary — overall delivery reliability |
| Q3 | Primary — delivery differences |
| Q8 | Conditional — associated factors behind delays |
| Q14 | Conditional — performance over time |
| Q15 | Conditional — seasonal or recurring patterns |

Q2 establishes the delivery baseline.

Q3 compares delivery performance across meaningful operational dimensions.

Q8 is activated only where Stage 5 evidence identifies a sufficiently strong pattern requiring diagnostic investigation.

Q14 and Q15 are activated where time-based analysis demonstrates a meaningful trend, recurring pattern, or seasonal structure.

This prevents the dashboard from becoming a collection of unrelated delivery charts.

#### 3.8.3.4 Analytical Dimensions
---

The primary dimensions available for delivery diagnostics are:

- Time
- Route
- Facility
- Relevant operational categories
- Other validated dimensions where their relationship to delivery events is analytically defensible

The principal dimensions established through Stage 3.6 are:

**Time → Route → Facility → Secondary Diagnostic Dimension**

The investigation should begin with the overall delivery baseline and progressively move into segmentation only where a meaningful comparison is justified.

Driver, truck, trailer, and customer dimensions should not automatically be treated as delivery-performance dimensions merely because they exist in the data model.

Their use must satisfy the segmentation rules established in Section 3.6.5, including valid relationship, sufficient population, understandable missingness, and appropriate grain.

#### 3.8.3.5 Delivery Performance Comparison Framework
---

The page should use controlled comparison rather than simple ranking.

The comparison sequence is:

**Overall On-Time Delivery → Segment Comparison → Magnitude of Difference → Population Check → Persistence Check → Diagnostic Investigation**

Potential comparison bases include:

- overall operational baseline
- route versus overall performance
- facility versus overall performance
- time period versus prior comparable period
- segment versus peer segment
- distribution across routes or facilities

A segment should not be described as a performance problem solely because it ranks lowest.

For example:

**Lowest On-Time Route ≠ Root Cause**

and

**Lowest On-Time Facility ≠ Bottleneck**

A meaningful difference must be evaluated against population size, data quality, persistence, and business relevance before being classified as a Diagnostic Finding.

#### 3.8.3.6 Population and Grain Control
---

Delivery analysis must preserve the approved KPI population and grain.

On-Time Delivery is based on delivery-event logic and must not be calculated by directly aggregating unrelated transactional tables.

The page must preserve the Stage 3.6 and 3.7 grain-control principle:

**KPI Grain → Correct Population → Valid Segmentation → Compatible Comparison**

The following cross-grain risks must be explicitly controlled:

- load-level revenue must not be multiplied through delivery-event records;
- fuel-purchase records must not be joined to delivery events in a way that duplicates fuel values;
- maintenance transactions must not be attributed to trips without a validated asset/time relationship;
- delivery-event counts must not be substituted for completed-load or completed-trip counts;
- ratios must use compatible numerator and denominator populations.

The Power BI model and DAX implementation must therefore preserve the approved analytical grain rather than relying on visual-level filtering to conceal duplication.

#### 3.8.3.7 Time-Based Delivery Analysis
---

Time-based analysis may be used to determine whether delivery reliability changes meaningfully across the approved operational period:

**2022-01-01 through 2024-12-31**

Possible analytical views include:

- monthly On-Time Delivery %
- quarterly On-Time Delivery %
- yearly On-Time Delivery %
- comparable-period differences
- distribution of delivery performance over time

The appropriate date field must follow the validated KPI and business question.

The page must not silently include January 2025 supporting records within the core operational trend.

Where January 2025 is used for supporting investigation, it must be clearly identified as outside the core management-analysis period.

Time-based analysis should distinguish between:

**Trend → Temporary Variation → Recurring Pattern → Validated Finding**

A single high or low period is not automatically a recurring operational pattern.

#### 3.8.3.8 Route-Level Delivery Diagnostics
---

Route analysis is one of the primary diagnostic dimensions for Q3.

The analysis should compare routes using On-Time Delivery together with appropriate operational-volume measures.

Possible supporting measures include:

- Completed Loads
- Completed Trips
- Total Revenue
- Fuel Cost
- Total Fuel Consumption
- Average Fuel Efficiency

However, supporting measures must remain at their validated grains and must not be combined through uncontrolled joins.

A route with lower On-Time Delivery should therefore be evaluated alongside its operational population.

The analytical question is not simply:

**“Which route has the lowest On-Time Delivery?”**

It is:

**“Which routes demonstrate materially different delivery reliability, and is the difference sufficiently supported by population, persistence, and data-quality evidence to require further investigation?”**

Actual routes requiring attention must be determined during Stage 5 analysis rather than predefined during dashboard design.

#### 3.8.3.9 Facility-Level Delivery Diagnostics
---

Facility analysis supports Q3 and Q7.

Facilities may be compared using:

- On-Time Delivery %
- Completed Loads
- Completed Trips
- Total Revenue
- Fuel Cost
- relevant supporting operational measures

The analysis must distinguish operational scale from operational performance.

A facility handling high volume is not automatically a bottleneck.

A facility with low On-Time Delivery is not automatically the cause of delivery delays.

A facility should become a management attention candidate only when the evidence demonstrates a meaningful and sufficiently supported pattern.

The 50 facilities identified during Stage 1 provide the available facility population for investigation, subject to the applicable analytical population and relationship controls.

#### 3.8.3.10 Diagnostic Investigation of Delivery Differences
---

Where Q3 identifies a meaningful difference, the analysis may progress toward Q8.

The investigation sequence is:

**Delivery Difference → Population Validation → Persistence Validation → Secondary Segmentation → Diagnostic Evidence → Finding Qualification**

Potential diagnostic dimensions may include:

- route
- facility
- time
- distance-related operational dimensions
- fleet or asset dimensions where the relationship is validated
- other supported operational characteristics

The purpose is to identify **associated factors** that may help explain an observed delivery pattern.

The dashboard must use language such as:

- “associated with”
- “observed alongside”
- “higher/lower performance observed in”
- “pattern warrants investigation”

unless Stage 5 provides evidence sufficient to support stronger language.

The dashboard must not automatically use:

- “root cause”
- “primary cause”
- “caused by”
- “responsible for”

because association does not establish causation.

#### 3.8.3.11 Data-Quality Controls for Delivery Diagnostics
---

The Operations Diagnostics page must preserve the known data-quality limitations that can affect interpretation.

The most important delivery-related limitation is:

**486 completed trips (0.569%) have delivery occurring before pickup.**

These records affect chronology-sensitive analysis.

They must not automatically be deleted from the raw data or silently corrected.

The second major limitation is:

**4,952 completed trips (5.80%) are missing at least one driver, truck, or trailer assignment.**

This does not invalidate the overall completed-trip count, but it can affect dimensional attribution when attempting to analyze delivery performance by driver, truck, or trailer.

Therefore, asset- or driver-level delivery analysis must explicitly account for assignment completeness.

The page should provide discoverable methodology or data-quality information so users understand these limitations when interpreting diagnostic results.

#### 3.8.3.12 Visual Role Definition
---

The final visual selection will depend on the actual Stage 5 findings.

The information architecture, however, is defined around the following visual roles:

**Delivery Reliability**

A primary KPI representation of the validated **44.61% On-Time Delivery** baseline.

**Time Trend**

A time-series visual where temporal analysis establishes a meaningful trend or recurring pattern.

**Route Comparison**

A comparison visual for validated route-level differences.

**Facility Comparison**

A comparison visual for validated facility-level differences.

**Diagnostic Evidence**

A supporting visual or table showing the secondary dimension associated with an observed delivery pattern.

**Detailed Evidence**

A compact table or drill-through structure where management needs to inspect the underlying segment-level result.

The dashboard must not contain every possible chart merely because the data supports it.

Each visual must answer a defined analytical question.

#### 3.8.3.13 Executive-to-Diagnostic Navigation
---

Page 02 should receive users primarily from the Executive Control Tower when delivery reliability requires deeper investigation.

The navigation path is:

**Page 01 — Executive Control Tower**

→ **On-Time Delivery = 44.61% baseline**

→ **Page 02 — Operations Diagnostics**

→ **Route / Facility / Time comparison**

→ **Validated Pattern**

→ **Page 05 — Management Findings & Action**, where appropriate.

Page 02 should also provide controlled navigation toward:

- Page 03 for fleet/fuel/cost relationships where relevant;
- Page 04 for deeper route/facility operational comparison;
- Page 05 for validated management findings.

This maintains the overall product flow:

**Baseline → Diagnostic Analysis → Evidence → Management Finding**

#### 3.8.3.14 Python and Excel Analytical Evidence
---

The Operations Diagnostics page must be supported by the project's primary Data Analyst workflow:

**Python → Excel → Power Query → Power BI/DAX**

Python should be used for independent investigation and validation, including:

- route-level On-Time Delivery calculations;
- facility-level On-Time Delivery calculations;
- time-based aggregation;
- population checks;
- distribution analysis;
- exception identification;
- independent reconciliation.

Excel should provide the detailed analyst-facing evidence behind the Power BI presentation, including:

- PivotTable-based route comparisons;
- facility comparisons;
- monthly or quarterly delivery trends;
- population-size comparisons;
- contribution or volume context;
- exception review;
- supporting calculations;
- validation and reconciliation tables.

Power Query should prepare the controlled analytical model.

Power BI/DAX should implement the approved KPI logic and present the validated analytical results interactively.

The Power BI visual should therefore be considered the **presentation of the analysis**, not the place where the analysis is first performed.

#### 3.8.3.15 Finding Qualification and Management Interpretation
---

A delivery-performance difference must progress through the following evidence chain:

**KPI Result → Observed Difference → Validated Difference → Diagnostic Evidence → Diagnostic Finding → Business Insight**

The page must preserve the Stage 3.6 finding-qualification rules.

The following shortcuts are prohibited:

- low On-Time Delivery → operational failure;
- lowest route → problem route;
- lowest facility → bottleneck;
- high volume → poor performance;
- correlation → causation;
- outlier → data error;
- missing assignment → zero performance.

If the evidence is insufficient, the dashboard should communicate an **Observation** or **Requires Further Investigation** status rather than forcing a finding.

This is particularly important for portfolio quality: demonstrating that the analyst can recognize when the evidence does **not** support a strong conclusion is part of the analytical standard.

#### 3.8.3.16 Conditional Diagnostic Extensions
---

Q8, Q14, and Q15 should not be treated as mandatory dashboard content simply because they were defined during Stage 3.

They are conditional analytical extensions.

**Q8 — Factors associated with delivery delays**

Activate when route, facility, time, or another validated dimension demonstrates a sufficiently meaningful delivery-performance pattern.

**Q14 — Operational performance over time**

Activate when the time-series analysis identifies a meaningful trend or change requiring management attention.

**Q15 — Seasonal or recurring patterns**

Activate only when repeated temporal behavior is demonstrated through evidence rather than inferred from a single period.

This prevents the Operations Diagnostics page from becoming overloaded with speculative analysis.

#### 3.8.3.17 Management Interpretation Standard
---

The page should communicate diagnostic results in a disciplined format:

**WHAT HAPPENED?**

Validated delivery-performance result.

**WHERE?**

Route, facility, time period, or other validated segment demonstrating the difference.

**HOW LARGE IS THE DIFFERENCE?**

Magnitude relative to the appropriate comparison population.

**IS THE PATTERN SUPPORTED?**

Population, persistence, grain, cross-KPI, exception, and data-quality validation.

**WHAT DOES THE EVIDENCE SUGGEST?**

Observed association or diagnostic evidence, without unsupported causal language.

**WHAT SHOULD HAPPEN NEXT?**

Further investigation, monitoring, process review, route review, scheduling review, or another evidence-supported management action.

The final management action belongs primarily on Page 05 once the finding has passed the Stage 3.6 qualification framework and Stage 5 execution.

#### 3.8.3.18 Portfolio Differentiation Standard
---

The Operations Diagnostics page should demonstrate that the project is not simply a visual reporting exercise.

A reviewer should be able to follow:

**44.61% On-Time Delivery Baseline**

→ **Segment Comparison**

→ **Material Difference**

→ **Population and Data-Quality Validation**

→ **Diagnostic Evidence**

→ **Validated Finding**

→ **Management Relevance**

This is the intended progression from KPI reporting toward genuine Data Analyst work.

The page should therefore demonstrate analytical judgment rather than visual complexity.

#### 3.8.3.19 Stage 3.8.3 Completion Criteria
---

The Operations Diagnostics design will be considered complete when:

1. Q2 and Q3 are explicitly supported.
2. The validated **44.61% On-Time Delivery** baseline is preserved.
3. The source-defined **±120-minute tolerance** is documented.
4. The core period remains **2022-01-01 through 2024-12-31**.
5. Route, facility, and time are defined as primary diagnostic dimensions.
6. Q8, Q14, and Q15 are treated as conditional extensions.
7. Comparison logic is defined before actual problem segments are identified.
8. Population and grain controls are preserved.
9. The **486 chronology reversals (0.569%)** remain visible as a relevant limitation.
10. The **5.80% missing trip-assignment limitation** is preserved for dimensional analysis.
11. Unsupported causal and root-cause claims are prohibited.
12. Actual problem routes, facilities, and periods are determined only after Stage 5 execution.
13. Python provides independent analytical computation and validation.
14. Excel provides detailed business-analysis evidence and reconciliation.
15. Power Query provides controlled model preparation.
16. Power BI/DAX provides the interactive presentation layer.
17. Findings are traceable to the analytical evidence.
18. The page provides navigation toward deeper operational and management-finding analysis.

**Status: 3.8.3 — OPERATIONS DIAGNOSTICS DESIGN: APPROVED FOR IMPLEMENTATION AFTER ANALYTICAL EXECUTION**

---

### 3.8.4 Fleet, Fuel & Cost Intelligence Design
---

The Fleet, Fuel & Cost Intelligence page is the third analytical layer of the Power BI product. It addresses Q4 — **“How effectively is the fleet being utilized?”** — and Q5 — **“What are the major drivers of operating cost and fuel efficiency?”**, while conditionally supporting Q10, Q12, and Q13 when Stage 5 analysis establishes meaningful patterns.

The page must connect fleet utilization, fuel consumption, fuel efficiency, and fuel cost through validated analytical populations and grains. It must not convert source-defined metrics, associations, or outliers into unsupported causal conclusions.

#### 3.8.4.1 Page Objective
---

The primary objective of Page 03 is to move from the overall operational baseline into fleet and cost efficiency analysis.

The page should answer:

1. **How much fleet capacity is active?**
2. **How is fleet utilization behaving?**
3. **How much fuel is being consumed?**
4. **What is the observed fuel-efficiency position?**
5. **What is the fuel-cost exposure?**
6. **Which fleet, fuel, or asset patterns require further investigation?**

The analytical progression is:

**Fleet Position → Utilization → Fuel Consumption → Fuel Efficiency → Fuel Cost → Validated Pattern → Management Attention**

The page must not imply that fuel cost alone represents total operating cost or profitability.

#### 3.8.4.2 Q4 and Q5 Alignment
---

Page 03 primarily supports:

| Question | Role |
|---|---|
| Q4 | Primary — fleet utilization |
| Q5 | Primary — fuel, efficiency, and cost |
| Q10 | Conditional — asset-level utilization/efficiency differences |
| Q12 | Conditional — maintenance patterns |
| Q13 | Conditional — maintenance/performance association |

Q4 focuses on fleet capacity and utilization.

Q5 focuses on fuel consumption, fuel efficiency, and fuel-cost exposure.

Q10 is activated when truck, trailer, or other asset-level analysis demonstrates meaningful performance differences.

Q12 and Q13 are activated only when maintenance data produces a sufficiently supported analytical pattern.

#### 3.8.4.3 Validated Fleet and Fuel Baseline
---

The Executive Control Tower establishes the following validated context for Page 03:

| KPI | Validated Baseline | Analytical Role |
|---|---:|---|
| Active Fleet Count | 92 | Fleet population context |
| Total Fuel Consumption | 24,493,560.80 gallons | Fuel consumption |
| Fuel Cost | 95,499,723.14 | Fuel-cost exposure |
| Fleet Utilization % | Source-defined | Fleet utilization |
| Average Fuel Efficiency | Source-defined | Fuel-efficiency context |

The project also contains:

- **120 trucks**, all recorded with Diesel fuel type;
- **180 trailers**;
- **150 drivers**.

These counts provide model and population context but must not automatically be interpreted as active operating populations for every KPI.

Active Fleet Count of **92** must remain distinct from the total number of trucks in the source population.

#### 3.8.4.4 Fleet Utilization Analytical Definition
---

Fleet Utilization is a validated P1 KPI and is defined at **truck-month grain**.

This grain must remain unchanged throughout analysis and Power BI implementation.

The Stage 2 validation identified:

- **436 truck-month records** with utilization above 100%;
- **13.16%** of truck-month records affected;
- maximum observed utilization of **148.40%**.

These values are important analytical evidence and must be retained.

They must not be:

- capped at 100%;
- replaced with 100%;
- removed automatically;
- treated as data errors solely because they exceed 100%.

The appropriate analytical response is investigation.

The dashboard should therefore distinguish:

**Source Result → Exception → Investigation**

rather than:

**Source Result → Automatic Correction**

#### 3.8.4.5 Fleet Utilization Comparison Framework
---

Fleet utilization should be analyzed using:

**Overall Fleet Baseline → Time → Truck/Asset Comparison → Distribution → Exception Investigation**

Potential comparisons include:

- monthly utilization;
- yearly utilization;
- truck versus fleet baseline;
- distribution of truck-month utilization;
- utilization above/below observed fleet patterns;
- relationship with relevant supporting operational measures.

The analysis must remain at truck-month grain.

A truck-level ranking based on an uncontrolled aggregation of truck-month records must not replace the validated utilization definition.

Where a truck demonstrates materially different utilization, the analysis should verify:

- number of observed months;
- population completeness;
- distribution across months;
- supporting operational activity;
- relevant data-quality limitations.

A single unusual truck-month must not automatically become an asset-level finding.

#### 3.8.4.6 Active Fleet Context
---

Active Fleet Count is a P1 KPI with a validated baseline of:

**92 active fleet assets**

The dashboard should use this value as fleet-population context.

The total source population of **120 trucks** must not be substituted for the active fleet KPI.

Similarly, the existence of 180 trailers does not establish an active trailer population equivalent to the 92 active fleet count.

Fleet population definitions must follow the approved KPI logic rather than visual convenience.

#### 3.8.4.7 Fuel Consumption Analysis
---

Total Fuel Consumption is a P1 KPI with a validated baseline of:

**24,493,560.80 gallons**

Fuel consumption is based on fuel-purchase transaction data.

Potential analytical dimensions include:

- time;
- truck;
- driver;
- relevant operational area;
- supported fleet dimensions.

Fuel analysis must account for incomplete asset linkage.

Stage 2/3.5 validation identified:

- **3,880 fuel-purchase records (1.98%) missing `truck_id`**;
- approximately **2.03% missing `driver_id`**;
- **8,471 completed trips without a corresponding fuel purchase**.

These limitations mean that total fuel consumption can be used as a validated aggregate KPI while some dimensional fuel analysis requires qualification.

The dashboard must not imply complete truck-level or driver-level fuel attribution where the data does not support it.

#### 3.8.4.8 Fuel Cost Analysis
---

Fuel Cost is a validated P1 KPI with a baseline of:

**95,499,723.14**

The KPI represents fuel-cost exposure based on the validated fuel-purchase population.

Potential analysis includes:

- fuel cost over time;
- fuel cost by supported asset dimensions;
- fuel cost distribution;
- fuel cost contribution by operational segment;
- relationship between fuel cost and operational activity.

Fuel Cost must not automatically be described as:

- total operating cost;
- logistics cost;
- maintenance-inclusive cost;
- cost of every completed trip;
- profit reduction.

The available data validates fuel cost, not necessarily complete operating cost.

#### 3.8.4.9 Average Fuel Efficiency Control
---

Average Fuel Efficiency is a validated P1 KPI but remains **source-defined**.

The dashboard may use the measure for approved analytical comparisons, but it must preserve the limitation that the source methodology was not independently reproduced.

Therefore, the page must not describe the metric as an independently calculated MPG measure unless Stage 5 establishes such reconciliation.

The analytical language should remain:

- “source-defined average fuel efficiency”;
- “observed fuel-efficiency pattern”;
- “difference in source-defined MPG”.

It should not imply methodological certainty beyond the validation completed in Stage 3.5.

#### 3.8.4.10 Fuel-Efficiency Investigation
---

Fuel-efficiency analysis should examine whether meaningful differences exist across:

- time;
- trucks;
- relevant fleet groups;
- operational activity;
- other validated dimensions.

The comparison framework is:

**Overall Efficiency → Segment Difference → Population Check → Distribution → Supporting Evidence → Finding Qualification**

A lower MPG value must not automatically be interpreted as:

- mechanical failure;
- poor driver behavior;
- inefficient route planning;
- maintenance failure;
- excessive idling.

Such explanations require additional evidence.

Where a fuel-efficiency difference is observed, the investigation may examine supporting measures such as:

- fuel consumption;
- mileage;
- idle time;
- utilization;
- maintenance records.

However, association between these measures does not establish causation.

#### 3.8.4.11 Fuel and Operational Activity Relationship
---

Q5 allows investigation of relationships between fuel/cost measures and operational activity.

Potential supporting measures include:

- Completed Loads;
- Completed Trips;
- Total Revenue;
- distance-related measures;
- fleet utilization;
- fuel consumption;
- fuel cost;
- source-defined fuel efficiency.

The analysis may identify associations such as:

**Higher Activity ↔ Higher Fuel Consumption**

or

**Higher Utilization ↔ Different Fuel-Cost Pattern**

However, these are analytical relationships, not causal conclusions.

The page must therefore use language such as:

- associated with;
- observed alongside;
- higher/lower pattern;
- warrants investigation.

It must not automatically use:

- caused by;
- primary driver;
- root cause;
- responsible for.

#### 3.8.4.12 Cross-Grain Control
---

Page 03 contains some of the highest cross-grain risks in the project.

The following controls are mandatory:

**Fleet Utilization**

Must remain at truck-month grain.

**Fuel Consumption**

Must remain based on fuel-purchase transactions.

**Fuel Cost**

Must remain based on fuel-purchase transactions.

**Completed Trips**

Must remain trip grain.

**Completed Loads**

Must remain load grain.

Fuel transactions must not be directly summed after being joined to trip or event records in a way that duplicates transactions.

Similarly, load-level revenue must not be multiplied through trip/event expansion.

Ratios must use compatible numerator and denominator populations.

This control is essential because an apparently reasonable Power BI result can become analytically incorrect if transactional tables are combined without grain awareness.

#### 3.8.4.13 Maintenance Diagnostic Extension
---

Q12 and Q13 may be explored when maintenance data supports a meaningful analytical investigation.

Q12 asks:

**Which maintenance patterns are visible across the fleet?**

Q13 asks:

**Are maintenance patterns associated with differences in fleet performance?**

Maintenance analysis may examine:

- maintenance cost;
- maintenance frequency;
- asset-level maintenance patterns;
- maintenance patterns over time;
- relationship with utilization or efficiency.

However, maintenance cost must not be attributed to trips without a validated asset/time relationship.

A maintenance event occurring on a truck does not automatically establish that it caused a subsequent fuel-efficiency or utilization change.

The maintenance extension should therefore remain evidence-driven and conditional.

#### 3.8.4.14 Visual Role Definition
---

Final visual selection remains dependent on Stage 5 findings.

Potential visual roles include:

**Fleet Position**

Active Fleet Count and supporting fleet-population context.

**Utilization Distribution**

Distribution of truck-month utilization, including visibility of the >100% observations.

**Utilization Trend**

Time-based fleet-utilization pattern where analytically supported.

**Fuel Consumption Trend**

Fuel consumption over the approved analytical period.

**Fuel Cost Trend**

Fuel-cost movement over time.

**Fuel Efficiency Comparison**

Source-defined average fuel efficiency across validated segments.

**Asset Comparison**

Truck-level or fleet-segment comparison where population and grain are sufficient.

**Exception / Investigation Table**

A detailed table for selected utilization, fuel, or efficiency patterns requiring further investigation.

The final page should use only the visuals necessary to answer Q4/Q5 and support validated findings.

#### 3.8.4.15 Executive Attention and Exception Logic
---

The page must distinguish between an exception and a finding.

For Fleet Utilization:

**436 truck-months >100% → Exception**

not automatically:

**436 truck-months >100% → Invalid Data**

For Fuel Linkage:

**1.98% missing truck_id → Data Limitation**

not automatically:

**Fuel KPI Invalid**

For Fuel Efficiency:

**Source-defined MPG → Validated KPI with Methodology Limitation**

not:

**Independently Reproduced MPG**

The controlled interpretation is:

**Observed Result → Comparison → Validation → Evidence → Finding Qualification**

This preserves the governance established in Sections 3.5 and 3.6.

#### 3.8.4.16 Excel Analytical Evidence
---

The detailed analytical evidence for Page 03 should be maintained through the project's Excel business-analysis layer.

Excel analysis may include:

- truck-month PivotTables;
- utilization distributions;
- >100% utilization exception analysis;
- fuel-cost summaries;
- fuel-consumption trends;
- MPG comparisons;
- asset-level comparisons;
- maintenance summaries;
- supporting cross-KPI comparisons;
- reconciliation with Python calculations.

Python should independently calculate and validate the underlying analytical results.

Excel should make the investigation understandable and auditable to a business analyst or reviewer.

Power Query should prepare the controlled model.

Power BI/DAX should implement the approved measures and present the validated analytical results.

The workflow remains:

**Python → Excel → Power Query → Power BI/DAX**

This reinforces the project's intended identity as a Data Analyst project rather than an ETL-engineering project.

#### 3.8.4.17 Navigation and Analytical Handoff
---

The primary navigation into Page 03 is:

**Page 01 — Executive Control Tower**

→ Fleet / Fuel / Cost context

→ **Page 03 — Fleet, Fuel & Cost Intelligence**

→ Utilization / Fuel / Efficiency investigation

→ Validated Pattern

→ **Page 05 — Management Findings & Action**, where appropriate.

Page 03 should also connect to:

- Page 02 when delivery-performance analysis requires fleet-related diagnostic context;
- Page 04 when route/facility comparisons are relevant;
- Page 05 when a validated management finding has been established.

The navigation should follow the analytical logic rather than simply linking pages together.

#### 3.8.4.18 Profitability Boundary
---

The presence of Total Revenue and Fuel Cost does not establish complete profitability.

The validated project currently supports:

**Total Revenue = 262,525,800.29**

and

**Fuel Cost = 95,499,723.14**

but these two measures alone do not provide a defensible profit or margin calculation.

Therefore:

**Revenue − Fuel Cost ≠ Profit**

unless all relevant cost components and compatible populations are established.

Page 03 must not introduce profit or margin as an executive KPI unless Stage 5 establishes sufficient support for such analysis.

Fuel Cost should instead be presented as a validated **fuel-cost exposure** measure.

#### 3.8.4.19 Data-Quality and Interpretation Boundaries
---

The following limitations must remain visible or discoverable:

- 436 truck-month utilization records exceed 100%, maximum 148.40%.
- 1.98% of fuel purchases lack `truck_id`.
- Approximately 2.03% of fuel records lack `driver_id`.
- 8,471 completed trips have no corresponding fuel purchase.
- Average Fuel Efficiency is source-defined.
- Trip-level driver/truck/trailer assignment is incomplete for 5.80% of completed trips.
- Maintenance costs must not be attributed to trips without validated relationships.

These limitations should influence the strength of interpretation.

They should not automatically invalidate aggregate KPIs that were approved during Stage 3.5.

#### 3.8.4.20 Portfolio Differentiation Standard
---

The Fleet, Fuel & Cost page should demonstrate analytical reasoning rather than simply displaying fuel and vehicle charts.

The reviewer should be able to follow:

**Active Fleet → Utilization → Fuel Consumption → Fuel Efficiency → Fuel Cost → Segment Difference → Exception/Data Limitation → Diagnostic Evidence → Management Relevance**

The page should demonstrate that the analyst understands:

- KPI definition;
- grain;
- population;
- data quality;
- cross-table duplication risk;
- association versus causation;
- source-defined methodology;
- business interpretation.

This is a stronger portfolio signal than simply presenting a visually complex fleet dashboard.

#### 3.8.4.21 Stage 3.8.4 Completion Criteria
---

The Fleet, Fuel & Cost Intelligence design will be considered complete when:

1. Q4 and Q5 are explicitly supported.
2. Q10, Q12, and Q13 are defined as conditional analytical extensions.
3. Active Fleet baseline of **92** is preserved.
4. Total Fuel Consumption baseline of **24,493,560.80 gallons** is preserved.
5. Fuel Cost baseline of **95,499,723.14** is preserved.
6. Fleet Utilization remains at truck-month grain.
7. The **436 truck-month records above 100%** and **148.40% maximum** are preserved as validated exceptions.
8. No utilization values are automatically capped or corrected.
9. Fuel transaction grain is preserved.
10. The **1.98% missing `truck_id`** limitation is retained.
11. The approximately **2.03% missing `driver_id`** limitation is retained.
12. The **8,471 trips without corresponding fuel purchases** limitation is retained.
13. Average Fuel Efficiency remains identified as source-defined.
14. Cross-grain duplication controls are preserved.
15. Profit and margin are not introduced without sufficient analytical support.
16. Unsupported causal or root-cause claims are prohibited.
17. Python is used for independent analytical computation and validation.
18. Excel is used for detailed business analysis, comparisons, distributions, and reconciliation.
19. Power Query is used for controlled model preparation.
20. Power BI/DAX is used for approved KPI implementation and interactive presentation.
21. Final visual selection remains dependent on Stage 5 findings.
22. Validated findings can be traced to the underlying analytical evidence.

**Status: 3.8.4 — FLEET, FUEL & COST INTELLIGENCE DESIGN: APPROVED FOR IMPLEMENTATION AFTER ANALYTICAL EXECUTION**

---

### 3.8.5 Route & Facility Intelligence Design
---

The Route & Facility Intelligence page is the fourth analytical layer of the Power BI product. It addresses Q6 — **“Which routes or operational areas demonstrate the strongest and weakest overall performance?”** — and Q7 — **“Are there facilities that require further operational investigation?”**

The page translates the validated operational baseline into route- and facility-level comparison while preserving KPI-specific grain, population, data-quality controls, and the evidence standards established in Sections 3.1–3.7.

The page must identify **where meaningful differences occur**, not predefine which routes or facilities are problematic before Stage 5 analytical execution.

#### 3.8.5.1 Page Objective
---

The primary objective of Page 04 is to determine where operational performance differs meaningfully across routes and facilities and whether those differences warrant further investigation.

The page must answer:

1. Which routes demonstrate materially different operational performance?
2. Which facilities demonstrate materially different operational patterns?
3. How large and operationally relevant are those differences?
4. Are the differences sufficiently supported by the available evidence?
5. Which areas should progress to deeper investigation or management attention?

The analytical progression is:

**Overall Baseline → Route/Facility Comparison → Population Context → Difference Validation → Diagnostic Evidence → Investigation Priority**

The page is therefore a **comparative analytical layer**, not a ranking-only dashboard.

#### 3.8.5.2 Business Question Alignment
---

Page 04 primarily supports the following approved business questions:

| Question | Role |
|---|---|
| Q6 | Primary — route and operational-area performance |
| Q7 | Primary — facilities requiring further investigation |
| Q9 | Supporting — operational volume, cost, and revenue contribution |
| Q3 | Supporting — delivery-performance differences |
| Q8 | Conditional — factors associated with delivery delays |

Q6 requires multi-dimensional route and operational-area comparison.

Q7 requires evidence-based facility investigation.

Q9 provides contribution and operational-scale context.

Q3 and Q8 may connect to this page when route or facility differences are associated with delivery-performance patterns.

The page must not attempt to answer all Q1–Q19 questions simultaneously.

#### 3.8.5.3 Validated Overall Baseline
---

Route and facility comparisons must be anchored to the validated overall KPI baseline established through Stage 3.5.

| KPI | Validated Baseline | Analytical Role |
|---|---:|---|
| Completed Loads | 85,410 | Operational volume |
| Completed Trips | 85,410 | Operational activity |
| Total Revenue | 262,525,800.29 | Revenue context |
| On-Time Delivery % | 44.61% | Delivery reliability |
| Active Fleet Count | 92 | Fleet context |
| Total Fuel Consumption | 24,493,560.80 gallons | Fuel context |
| Fuel Cost | 95,499,723.14 | Cost context |
| Fleet Utilization % | Source-defined | Efficiency context |
| Average Fuel Efficiency | Source-defined | Efficiency context |

These values provide the overall reference point for segment-level comparison.

Stage 3.8 must not redefine any of these KPIs.

The Stage 3.5 KPI definitions, approved grains, populations, limitations, and calculation logic remain authoritative.

#### 3.8.5.4 Route and Facility Comparison Principle
---

Route and facility performance must not be determined by a single ranking or KPI unless the business question explicitly requires that measure.

The preferred comparison structure is:

**Volume → Reliability → Value/Cost → Efficiency → Difference → Validation**

Depending on the question, relevant measures may include:

- Completed Loads;
- Completed Trips;
- On-Time Delivery %;
- Total Revenue;
- Fuel Cost;
- Total Fuel Consumption;
- Average Fuel Efficiency;
- Fleet Utilization where the relationship is analytically supported.

The purpose of multi-KPI comparison is not to create an arbitrary overall score.

It is to understand whether a segment's observed performance difference is isolated or supported across relevant operational dimensions.

#### 3.8.5.5 Route Population and Operational Scale
---

The validated dataset contains:

**85,410 Completed Loads**

and

**85,410 Completed Trips**

These measures establish the overall operational scale.

Route-level analysis must therefore consider population alongside performance.

A route with a low On-Time Delivery percentage but very small activity may require a different interpretation from a high-volume route with a similar percentage.

Likewise, a small percentage difference on a high-volume route may represent more operational exposure.

The dashboard must therefore avoid arbitrary route-volume thresholds unless Stage 5 establishes a defensible basis.

Population sufficiency must be evaluated as part of finding qualification.

#### 3.8.5.6 Facility Population and Operational Scale
---

Stage 1 established a source population of:

**50 Facilities**

This population provides the basis for facility-level investigation, subject to the applicable analytical period, relationships, and KPI populations.

Facility comparison should consider:

- Completed Loads;
- Completed Trips;
- On-Time Delivery %;
- Total Revenue;
- Fuel Cost;
- relevant efficiency measures;
- other validated operational measures where appropriate.

A facility's activity level must be interpreted alongside its performance.

The following assumption is prohibited:

**High Facility Volume → Facility Bottleneck**

High volume indicates operational importance, not poor performance by itself.

#### 3.8.5.7 Route Performance Analytical Framework
---

Route analysis should follow:

**Overall Baseline → Route Segmentation → Population Context → Multi-KPI Comparison → Difference Validation → Diagnostic Investigation**

Potential route-level analysis may include:

- On-Time Delivery comparison;
- Completed Load contribution;
- Completed Trip contribution;
- Revenue contribution;
- Fuel Cost comparison;
- Fuel Consumption comparison;
- source-defined efficiency comparison;
- validated distance-related measures where appropriate.

Each KPI must be calculated from its correct analytical population before being brought into the route comparison.

Route analysis must not rely on a single expanded transactional table where joins could duplicate measures.

#### 3.8.5.8 Facility Performance Analytical Framework
---

Facility analysis should follow:

**Overall Baseline → Facility Segmentation → Population Context → Multi-KPI Comparison → Difference Validation → Investigation**

Potential facility-level measures include:

- Completed Loads;
- Completed Trips;
- On-Time Delivery %;
- Total Revenue;
- Fuel Cost;
- Total Fuel Consumption;
- supporting efficiency measures where the relationship is validated.

The objective is not to produce a permanent “best facility” or “worst facility” ranking.

The objective is to identify **material and evidence-supported differences requiring management attention or further investigation**.

Actual facilities requiring attention must be determined during Stage 5.

#### 3.8.5.9 Delivery Reliability Comparison
---

On-Time Delivery is the primary delivery-performance measure available for route and facility comparison.

The validated overall baseline is:

**44.61%**

The KPI uses the source-defined:

**±120-minute tolerance**

Route and facility analysis should therefore ask:

**“Which routes or facilities demonstrate materially different delivery reliability relative to the validated overall baseline?”**

rather than:

**“Which route or facility has the lowest percentage?”**

Any observed difference should subsequently be evaluated against:

- population size;
- operational volume;
- persistence over time;
- applicable data-quality limitations;
- relevant supporting KPIs.

The source-defined tolerance must not be presented as an independently established company service-level policy.

#### 3.8.5.10 Revenue Contribution Analysis
---

Q9 requires the ability to identify routes or operational areas that contribute materially to operational value.

The validated overall revenue baseline is:

**262,525,800.29**

Route or facility contribution analysis may examine:

- revenue contribution;
- share of total revenue;
- completed-load contribution;
- completed-trip contribution.

Contribution should be interpreted as **scale/value exposure**, not automatically as performance quality.

For example:

**High Revenue Contribution ≠ Strong Operational Performance**

and:

**Low Revenue Contribution ≠ Poor Performance**

Revenue contribution must therefore be interpreted alongside the relevant performance measures.

#### 3.8.5.11 Fuel-Cost Contribution Analysis
---

Fuel Cost is a validated P1 KPI with an overall baseline of:

**95,499,723.14**

Route and facility analysis may examine where fuel-cost exposure is concentrated.

However, fuel-cost contribution must be interpreted alongside operational activity.

A high-volume route may naturally have higher total fuel cost.

Therefore:

**High Fuel Cost Contribution ≠ Inefficiency**

without additional evidence.

Fuel Cost remains a fuel-purchase transaction measure and must retain its validated population and grain.

#### 3.8.5.12 Multi-KPI Segment Assessment
---

Where a route or facility appears materially different, multiple validated measures should be evaluated before the result is classified as a finding.

The analytical structure is:

**Observed Difference**

→ **Population Check**

→ **Performance Comparison**

→ **Supporting KPI Comparison**

→ **Persistence Check**

→ **Data-Quality Review**

→ **Finding Qualification**

For example, a route with lower On-Time Delivery may also be examined for:

- operational volume;
- revenue;
- fuel cost;
- fuel consumption;
- efficiency;
- time-based persistence.

This does not establish causation.

It establishes whether the observed delivery pattern is isolated or supported by additional evidence.

#### 3.8.5.13 Cross-Grain Control
---

Route and facility analysis must preserve the validated KPI grains established in Sections 3.4–3.7.

The following controls are mandatory:

| KPI | Required Analytical Grain |
|---|---|
| Completed Loads | Load |
| Completed Trips | Trip |
| Total Revenue | Approved revenue-bearing operational population |
| On-Time Delivery | Delivery-event logic |
| Fleet Utilization | Truck-month |
| Total Fuel Consumption | Fuel-purchase transaction |
| Average Fuel Efficiency | Source-defined |
| Fuel Cost | Fuel-purchase transaction |

The following practices are prohibited:

- summing load-level revenue after uncontrolled trip/event expansion;
- summing fuel transactions after uncontrolled trip joins;
- treating delivery-event counts as completed-trip counts;
- attributing maintenance cost to routes without validated asset/time relationships;
- creating ratios from incompatible numerator and denominator populations.

The route/facility page must therefore combine KPI results only after each measure has been calculated from its appropriate population.

#### 3.8.5.14 Trip Assignment Limitation
---

The Stage 2 validation identified:

**4,952 completed trips (5.80%) missing at least one driver, truck, or trailer assignment.**

This limitation does not invalidate the total completed-trip KPI.

However, it affects deeper dimensional attribution.

For example, if a route is later investigated by truck or driver, incomplete assignment may affect the completeness of that secondary analysis.

The dashboard must therefore avoid implying complete asset-level attribution where the validated data does not support it.

#### 3.8.5.15 Chronology Limitation
---

The validated data contains:

**486 completed trips (0.569%) with delivery occurring before pickup.**

These records affect chronology-sensitive analysis.

They must not be silently deleted or corrected merely to produce cleaner trends.

If route or facility findings depend on detailed delivery-duration or chronological analysis, the relevant limitation must be considered during Stage 5 validation.

The existence of these records is therefore a **data-quality consideration**, not automatic evidence of operational failure.

#### 3.8.5.16 Fuel Attribution Limitation
---

Fuel-based route or facility analysis must preserve the following validated limitations:

- **3,880 fuel-purchase records (1.98%)** missing `truck_id`;
- approximately **2.03%** missing `driver_id`;
- **8,471 completed trips** without a corresponding fuel purchase.

These limitations mean that aggregate fuel KPIs may remain useful while certain dimensional fuel analyses require qualification.

The dashboard must not imply complete truck-, driver-, route-, or facility-level fuel attribution unless the relevant Stage 5 analysis confirms sufficient linkage.

#### 3.8.5.17 Ranking Control
---

Rankings may be used to help users identify segments for inspection.

They must not automatically be treated as findings.

The following interpretations are prohibited:

**Lowest On-Time Delivery → Worst Route**

**Highest Fuel Cost → Most Inefficient Route**

**Highest Volume → Problem Facility**

**Lowest Revenue → Weak Facility**

**Highest Efficiency → Best Operational Area**

A ranking becomes analytically meaningful only when the ranking basis, population, magnitude, and business relevance are understood.

If a composite score is considered, it must have a documented business rationale, defined components, weighting methodology, and validation.

Absent such validation, transparent multi-KPI comparison is preferred.

#### 3.8.5.18 Route/Facility Finding Qualification
---

The page must follow the Stage 3.6 finding chain:

**KPI Result → Observed Pattern → Validated Pattern → Diagnostic Finding → Business Insight → Decision Relevance**

A route or facility should be classified according to the evidence available:

- No Material Pattern;
- Observation;
- Diagnostic Finding;
- Finding with Limitation;
- Data Limitation;
- Requires Further Investigation.

The dashboard must not force every ranking into a finding.

If evidence is insufficient, the correct analytical output may be:

**Observation — Requires Further Investigation**

rather than an unsupported management conclusion.

#### 3.8.5.19 Diagnostic Extensions
---

Route and facility analysis may trigger deeper investigation into Q3, Q8, Q9, Q10, Q13, Q14, or Q15 where appropriate.

Examples include:

**Delivery Difference**

→ Operations Diagnostics

**Fuel/Efficiency Difference**

→ Fleet, Fuel & Cost Intelligence

**Time-Based Pattern**

→ Operations Diagnostics / Time Analysis

**Asset-Related Pattern**

→ Fleet, Fuel & Cost Intelligence

**Potential Maintenance Association**

→ Conditional maintenance analysis

The page should therefore act as an analytical bridge rather than an isolated ranking page.

#### 3.8.5.20 Visual Role Definition
---

The final visual selection must be determined after Stage 5 analytical execution.

Potential visual roles include:

**Route Comparison**

Compare validated KPIs across routes.

**Facility Comparison**

Compare validated KPIs across facilities.

**Volume vs Performance**

Show the relationship between operational scale and an appropriate performance measure where analytically justified.

**Contribution Analysis**

Show route/facility contribution to loads, trips, revenue, fuel consumption, or fuel cost.

**Multi-KPI Comparison**

Provide a controlled comparison of selected segments across relevant validated measures.

**Investigation Table**

Provide detailed segment-level evidence including population, KPI result, comparison basis, and relevant limitation.

Visual selection should remain focused on the question being answered rather than using chart variety for its own sake. Power BI guidance recommends emphasizing important information, maintaining a clear story, and selecting visuals appropriate to the data and analytical purpose. :contentReference[oaicite:1]{index=1}

#### 3.8.5.21 Excel Analytical Evidence Layer
---

The Route & Facility page must be supported by the project's Excel business-analysis layer.

Excel should contain the detailed evidence required to investigate route and facility differences, including:

- route PivotTables;
- facility PivotTables;
- volume comparisons;
- On-Time Delivery comparisons;
- revenue contribution;
- fuel-cost contribution;
- multi-KPI comparisons;
- population checks;
- exception review;
- supporting calculations;
- reconciliation against Python results.

Python should independently calculate the analytical baselines and validate the comparison outputs.

Excel should provide the business-readable evidence behind the Power BI findings.

Power Query should prepare the controlled analytical model.

Power BI/DAX should implement the approved measures and present the validated analysis interactively.

The workflow remains:

**Python → Excel → Power Query → Power BI/DAX**

This preserves the project's intended identity as an **Excel + Power BI Data Analyst project**, rather than an ETL-heavy engineering project.

#### 3.8.5.22 Navigation and Analytical Handoff
---

The primary navigation path is:

**Page 01 — Executive Control Tower**

→ Route / Facility attention

→ **Page 04 — Route & Facility Intelligence**

→ Segment comparison

→ Validated pattern

→ Deeper diagnostic page or

→ **Page 05 — Management Findings & Action**

Where appropriate:

- delivery-related patterns should connect to Page 02;
- fleet/fuel/cost patterns should connect to Page 03;
- qualified management findings should connect to Page 05.

The page therefore supports the broader product sequence:

**Executive Baseline → Operational Comparison → Diagnostic Evidence → Management Finding**

#### 3.8.5.23 Management Interpretation Standard
---

Every significant route or facility result should be interpretable through the following structure:

**WHAT DIFFERENCE WAS OBSERVED?**

Identify the validated KPI difference.

**WHERE DID IT OCCUR?**

Identify the route or facility segment.

**HOW LARGE IS THE DIFFERENCE?**

Compare it against the appropriate overall or peer population.

**HOW IMPORTANT IS THE POPULATION?**

Consider completed loads, trips, revenue, or another appropriate scale measure.

**IS THE PATTERN PERSISTENT?**

Check whether it continues across relevant periods.

**DO OTHER KPIs SUPPORT THE OBSERVATION?**

Use relevant validated measures without creating unsupported composite scores.

**DO DATA-QUALITY LIMITATIONS AFFECT THE INTERPRETATION?**

Apply the known assignment, chronology, and fuel-linkage limitations.

**WHAT DOES THE EVIDENCE JUSTIFY?**

Classify the result as an observation, diagnostic finding, finding with limitation, data limitation, or further investigation requirement.

This ensures that the dashboard communicates analytical reasoning rather than merely displaying rankings.

#### 3.8.5.24 Prohibited Interpretations
---

The following interpretations are explicitly prohibited unless Stage 5 establishes sufficient evidence:

- “This is the worst route.”
- “This facility is the bottleneck.”
- “This route caused delivery delays.”
- “High fuel cost proves inefficiency.”
- “High volume proves operational weakness.”
- “Low On-Time Delivery proves poor management.”
- “The lowest-ranked facility is the problem.”
- “An outlier is an error.”
- “A utilization value above 100% is invalid.”
- “Fuel cost represents total operating cost.”
- “Revenue minus fuel cost represents profit.”

Preferred language includes:

- “lower/higher observed performance”;
- “material difference relative to baseline”;
- “associated with”;
- “pattern warrants investigation”;
- “finding with limitation”;
- “requires further investigation.”

#### 3.8.5.25 Portfolio Differentiation Standard
---

The Route & Facility Intelligence page should demonstrate the ability to distinguish:

**Scale → Performance → Difference → Evidence → Business Relevance**

A reviewer should be able to understand:

**How Much Activity?**

→ Completed Loads / Trips

**How Is It Performing?**

→ On-Time Delivery / Cost / Efficiency Context

**Where Is the Difference?**

→ Route / Facility

**How Important Is It?**

→ Population / Contribution

**Is the Difference Supported?**

→ Cross-KPI / Time / Data-Quality Validation

**What Should Management Consider?**

→ Investigation or action only after finding qualification

This is the intended analytical value of the page.

#### 3.8.5.26 Stage 3.8.5 Completion Criteria
---

The Route & Facility Intelligence design will be considered complete when:

1. Q6 and Q7 are explicitly supported.
2. Q9 is supported through controlled contribution analysis.
3. Q3 and Q8 can be supported where route/facility delivery patterns require deeper investigation.
4. The validated overall KPI baselines are preserved.
5. The core analytical period remains **2022-01-01 through 2024-12-31**.
6. Completed Loads remain at load grain.
7. Completed Trips remain at trip grain.
8. On-Time Delivery retains delivery-event logic.
9. Fuel Consumption and Fuel Cost retain fuel-purchase transaction grain.
10. Fleet Utilization retains truck-month grain.
11. The **44.61% On-Time Delivery** baseline is preserved.
12. The **85,410 Completed Loads** baseline is preserved.
13. The **85,410 Completed Trips** baseline is preserved.
14. The **262,525,800.29 Total Revenue** baseline is preserved.
15. The **95,499,723.14 Fuel Cost** baseline is preserved.
16. The **4,952-trip / 5.80% assignment limitation** is preserved.
17. The **486-trip / 0.569% chronology limitation** is preserved.
18. The fuel-linkage limitations are preserved.
19. Route and facility rankings are not automatically treated as findings.
20. No arbitrary composite score is introduced.
21. No unsupported root-cause or causal claim is introduced.
22. Profitability claims remain outside scope unless separately validated.
23. Python provides independent analytical calculation and validation.
24. Excel provides detailed business-analysis evidence and reconciliation.
25. Power Query provides controlled model preparation.
26. Power BI/DAX provides approved KPI implementation and interactive presentation.
27. Actual routes and facilities requiring attention are determined only after Stage 5 execution.
28. Findings remain traceable to the underlying analytical evidence.
29. Navigation toward Operations Diagnostics, Fleet/Fuel/Cost Intelligence, and Management Findings is defined.

**Status: 3.8.5 — ROUTE & FACILITY INTELLIGENCE DESIGN: APPROVED FOR IMPLEMENTATION AFTER ANALYTICAL EXECUTION**

---

### 3.8.6 Management Findings & Action Design
---

Management Findings & Action is the primary decision-oriented output of the dashboard architecture. It converts validated analytical findings into a structured management communication layer without overstating evidence, inventing causes, or turning observations into unsupported recommendations.

The page will answer the management question: **“What requires attention, what evidence supports that attention, what limitations apply, and what reasonable action or investigation should follow?”**

#### 3.8.6.1 Purpose and Business Role
---

The Management Findings & Action page supports Q1–Q7 directly and may incorporate validated supporting findings from Q8–Q15 when those investigations materially strengthen the management interpretation.

The page is not intended to reproduce every KPI or analytical detail. Its purpose is to communicate the most decision-relevant validated findings produced by the analytical workflow.

The management communication chain is:

**Business Question → Validated KPI → Analytical Result → Observed Pattern → Validated Finding → Diagnostic Evidence → Data Limitation → Business Impact → Management Action**

The page therefore becomes the final communication layer between the analytical work and management decision-making.

#### 3.8.6.2 Finding Classification Standard
---

Every proposed management finding must be classified before it is presented.

| Classification | Meaning | Management Presentation |
|---|---|---|
| No Material Pattern | Analysis does not identify a meaningful difference or pattern | Do not escalate |
| Observation | A measurable pattern exists but evidence is insufficient for a stronger conclusion | Present as observation only |
| Diagnostic Finding | Evidence supports a meaningful operational pattern within the validated analytical scope | Eligible for management attention |
| Finding with Limitation | Finding is meaningful but materially constrained by a known data-quality or methodology limitation | Present with explicit limitation |
| Data Limitation | Available data prevents reliable interpretation | Present as data limitation / investigation need |
| Requires Further Investigation | Initial evidence indicates potential importance but does not support a validated finding | Present as investigation requirement |

A ranking alone does not qualify as a management finding.

Examples of prohibited escalation:

- Highest volume ≠ operational problem
- Lowest on-time rate ≠ root cause
- Highest fuel cost ≠ inefficiency
- High revenue ≠ profitability
- Correlation ≠ causation
- Outlier ≠ data error
- Utilization >100% ≠ invalid record
- Missing assignment ≠ zero performance
- Source-defined metric ≠ independently validated methodology

#### 3.8.6.3 Required Finding Representation
---

Each management finding must follow a standardized six-part structure.

**FINDING**  
A concise statement describing the validated operational result.

**EVIDENCE**  
The KPI result, comparison, population, period, and analytical evidence supporting the finding.

**DIAGNOSTIC EVIDENCE**  
Additional validated evidence that helps explain the observed pattern without claiming unsupported causality.

**DATA LIMITATION**  
Any Stage 2 or Stage 3 limitation that materially affects interpretation.

**BUSINESS IMPACT**  
Why the finding matters operationally, financially, or from a management-monitoring perspective.

**MANAGEMENT ACTION**  
A reasonable decision, monitoring action, validation activity, or further investigation supported by the evidence.

This structure prevents the dashboard from collapsing the distinction between measurement, interpretation, and action.

#### 3.8.6.4 Real Analytical Baseline for Management Communication
---

All management findings must remain anchored to the approved P1 KPI baseline and core analytical period.

Core analytical period:

**2022-01-01 through 2024-12-31**

Validated baseline:

| KPI | Approved Baseline | Management Use |
|---|---:|---|
| Completed Loads | 85,410 | Operational volume |
| Completed Trips | 85,410 | Operational activity |
| Total Revenue | 262,525,800.29 | Revenue context |
| On-Time Delivery | 44.61% | Delivery reliability |
| Active Fleet | 92 | Fleet availability context |
| Total Fuel Consumption | 24,493,560.80 gallons | Fuel consumption |
| Fuel Cost | 95,499,723.14 | Operating-cost context |
| Fleet Utilization | Source-defined | Fleet productivity |
| Average Fuel Efficiency | Source-defined | Efficiency context |

These values establish the starting point for management communication.

They must not be treated as targets, benchmarks, or performance thresholds unless an independently validated business target is established during later analytical work.

#### 3.8.6.5 Management Attention Logic
---

Management attention must follow an evidence hierarchy rather than a visual ranking.

**KPI Result → Meaningful Comparison → Magnitude → Population Validation → Persistence / Repetition → Diagnostic Evidence → Finding Classification → Business Impact → Action**

A finding becomes management-relevant when the observed pattern is sufficiently meaningful within its validated population and supports a reasonable management interpretation.

The dashboard must therefore avoid automatically highlighting:

- the largest number,
- the smallest percentage,
- the highest-cost category,
- the lowest-performing route,
- the highest-volume facility,
- or the largest outlier.

These may be useful starting points for investigation but are not automatically management findings.

#### 3.8.6.6 Management Finding Categories
---

Management findings should be organized into business-relevant categories.

**Delivery Reliability**

Supports Q2 and Q3.

Primary evidence may include:

- Overall On-Time Delivery = 44.61%
- Time-based differences
- Route differences
- Facility differences
- Validated associated operational factors
- Persistence across appropriate periods

Potential action types:

- investigate materially different delivery segments,
- review operational processes associated with validated differences,
- establish monitoring for recurring delivery-performance gaps.

No root-cause claim should be made unless the analytical evidence supports causality.

**Fleet Utilization**

Supports Q4.

Primary evidence may include:

- Active Fleet = 92
- Source-defined fleet utilization
- Truck-month comparisons
- Distribution and exception analysis

Potential action types:

- investigate materially different utilization patterns,
- review asset deployment,
- validate unusual utilization patterns against operational context.

The 436 truck-month records above 100% utilization, representing 13.16% of truck-month records, must be treated as an analytical limitation/exception rather than automatically corrected or removed.

**Fuel & Cost**

Supports Q5.

Primary evidence may include:

- Total Fuel Consumption = 24,493,560.80 gallons
- Fuel Cost = 95,499,723.14
- Source-defined average fuel efficiency
- Fuel-cost and consumption comparisons
- Validated efficiency differences

Potential action types:

- investigate materially different fuel-performance segments,
- review fuel consumption patterns,
- examine fleet or operational segments associated with validated efficiency differences.

Fuel cost must not be presented as equivalent to profitability.

**Route Performance**

Supports Q6.

Primary evidence may include:

- Route-level delivery reliability
- Route-level operational volume
- Revenue contribution
- Fuel-cost contribution
- Other validated efficiency measures

Potential action types:

- investigate routes with materially different multi-KPI performance,
- review recurring route-level delivery or efficiency differences,
- prioritize further operational investigation.

A route cannot be labelled “worst” or “problematic” from a single KPI ranking.

**Facility Performance**

Supports Q7.

Primary evidence may include:

- Facility-level delivery performance
- Operational volume
- Revenue contribution
- Relevant fleet/fuel indicators
- Persistence of differences

Potential action types:

- investigate facilities demonstrating materially different performance,
- review facility-level operational processes,
- monitor recurring facility-level exceptions.

The analysis must determine the actual facilities; no facility may be pre-labelled as problematic.

#### 3.8.6.7 Data-Quality Transparency in Management Findings
---

Management findings must expose material limitations when they affect interpretation.

Relevant validated limitations include:

- 4,952 trips (5.80%) missing at least one driver, truck, or trailer assignment.
- 486 trips (0.569%) contain delivery-before-pickup timestamp reversals.
- 436 truck-month records (13.16%) have utilization above 100%, with a maximum of 148.40%.
- 3,880 fuel-purchase records (1.98%) are missing truck_id.
- Approximately 2.03% of fuel-purchase records are missing driver_id.
- 8,471 completed trips have no corresponding fuel purchase.
- On-Time Delivery uses a source-defined ±120-minute tolerance whose formal business-policy basis has not been independently established.
- Average Fuel Efficiency is source-defined and its methodology is not independently reproducible from the available documentation.

These limitations must not be hidden in documentation-only material when they materially affect a displayed finding.

The objective is not to make the dashboard appear cleaner; the objective is to make the management interpretation defensible.

#### 3.8.6.8 Management Action Design
---

Management actions must be evidence-linked and proportionate to the strength of the finding.

| Evidence Status | Appropriate Action |
|---|---|
| No Material Pattern | Continue monitoring |
| Observation | Monitor and validate |
| Diagnostic Finding | Operational investigation / targeted review |
| Finding with Limitation | Investigate with limitation explicitly considered |
| Data Limitation | Improve data availability / validate measurement |
| Requires Further Investigation | Conduct targeted diagnostic analysis |

Actions should fall into four broad categories:

1. **Monitor** — continue tracking a validated KPI or pattern.
2. **Investigate** — conduct targeted operational review.
3. **Validate** — confirm data, process, methodology, or business assumptions.
4. **Improve** — consider process or operational intervention only when evidence supports the need.

The dashboard must not prescribe operational optimization, staffing changes, route redesign, maintenance policy changes, or cost-reduction targets unless the completed analysis provides sufficient evidence.

#### 3.8.6.9 Decision-Relevance Standard
---

Every management finding must answer:

**Why should management care?**

Decision relevance should be expressed in terms such as:

- delivery reliability,
- operational consistency,
- fleet utilization,
- fuel efficiency,
- cost exposure,
- route performance,
- facility performance,
- asset monitoring,
- data-quality improvement,
- or further investigation priority.

A finding without meaningful decision relevance should remain in the analytical layer rather than being promoted to the management page.

#### 3.8.6.10 Page-Level Information Architecture
---

The Management Findings & Action page should prioritize findings over decorative dashboard elements.

Recommended structure:

**Top — Management Summary**

- Number of validated findings
- Number of findings requiring further investigation
- Number of material data limitations
- Core-period context

**Middle — Priority Findings**

Each finding should communicate:

**Finding → Evidence → Diagnostic Evidence → Limitation → Business Impact → Action**

**Lower Section — Supporting Evidence**

- compact KPI/context visual,
- relevant comparison,
- supporting trend or distribution,
- link/navigation to detailed analytical pages.

**Navigation**

- Page 01 — Executive Control Tower
- Page 02 — Operations Diagnostics
- Page 03 — Fleet, Fuel & Cost Intelligence
- Page 04 — Route & Facility Intelligence

The page should remain concise enough that management can identify the most important findings without searching through numerous unrelated visuals.

#### 3.8.6.11 Visual Selection Principles
---

Visual selection will be finalized after Stage 5 analytical execution because the actual findings and patterns are not yet known.

The design should therefore define visual roles rather than pre-selecting charts for predetermined conclusions.

Possible visual roles include:

- KPI cards for validated headline metrics
- bar/column charts for category comparison
- line charts for validated time trends
- tables or matrices for finding evidence
- compact variance/comparison visuals
- conditional formatting for validated attention indicators
- narrative text for finding interpretation

Visual complexity must be justified by analytical purpose.

Power BI guidance emphasizes making important information prominent, using appropriate visualizations, and avoiding unnecessary clutter; these principles will govern final implementation. :contentReference[oaicite:1]{index=1}

#### 3.8.6.12 Finding Traceability
---

Every management finding must be traceable back to the underlying analytical evidence.

Minimum traceability chain:

**Finding ID → Business Question → KPI → Analytical Workstream → Python Analysis → Excel Evidence → Power Query / Model Logic → Power BI Visual → Management Interpretation**

Example structure:

`F-Q03-01`

- Question: Q3
- Workstream: W2 Delivery Reliability
- KPI: On-Time Delivery %
- Population: validated delivery-performance population
- Period: 2022-01-01 to 2024-12-31
- Analysis: segment comparison
- Evidence: Python + Excel
- Presentation: Operations Diagnostics / Management Findings
- Status: determined after Stage 5 execution

Finding IDs must not be assigned to unsupported or hypothetical conclusions.

#### 3.8.6.13 Excel Evidence Layer
---

Excel remains a first-class analytical evidence layer.

For management findings, Excel should support:

- detailed segment comparisons,
- PivotTables,
- contribution analysis,
- trend comparisons,
- exception review,
- supporting calculations,
- population checks,
- evidence tables,
- reconciliation against Python results,
- finding qualification.

The management page must therefore be traceable to analytical evidence rather than functioning as an independent interpretation layer.

The governed workflow remains:

**Python → Excel → Power Query → Power BI/DAX**

Python provides independent analytical computation and validation.

Excel provides detailed business analysis and evidence review.

Power Query provides controlled model preparation.

Power BI/DAX provides approved KPI implementation, interactive exploration, and management presentation.

#### 3.8.6.14 Finding Governance and Change Control
---

A management finding cannot be changed solely to improve dashboard appearance.

Any material change must preserve:

- original analytical result,
- finding classification,
- evidence basis,
- data limitation,
- business interpretation,
- decision relevance,
- and source traceability.

If the underlying analysis changes, the management finding must be revalidated.

If a KPI definition changes, the finding must be reassessed against the new KPI definition and the Stage 3.5 change-control process.

DAX must never become the hidden location where a business definition or finding interpretation is changed.

#### 3.8.6.15 Dashboard-to-Decision Boundary
---

The dashboard communicates evidence; management owns the operational decision.

Therefore:

**Dashboard responsibility**

- measure,
- compare,
- qualify,
- explain supported patterns,
- expose limitations,
- communicate decision relevance.

**Management responsibility**

- determine operational response,
- approve investigation,
- allocate resources,
- establish policy,
- define targets,
- implement interventions.

This distinction prevents the portfolio project from presenting unsupported recommendations as if they were established business decisions.

#### 3.8.6.16 Stage 5 Dependency
---

No final management finding will be populated before Stage 5 analytical execution.

The current project contains validated KPI baselines and a complete investigation design, but the actual route, facility, fleet, driver, time, and associated-factor findings must come from executed analysis.

Therefore, this section defines the **presentation and decision framework**, not hypothetical findings.

The following items remain intentionally unresolved until Stage 5:

- actual problem routes,
- actual problem facilities,
- actual delivery-performance segments,
- actual fleet-performance differences,
- actual fuel-efficiency differences,
- actual associated operational factors,
- actual management findings,
- actual recommended actions.

#### 3.8.6.17 Stage 3.8.6 Completion Criteria
---

Management Findings & Action Design is complete when:

- [x] Management findings are defined as a formal dashboard output.
- [x] Finding classification is standardized.
- [x] Finding representation is standardized.
- [x] Real validated KPI baselines are incorporated.
- [x] Known Stage 2/3 limitations are explicitly controlled.
- [x] Management actions are tied to evidence strength.
- [x] Unsupported causal language is prohibited.
- [x] Route/facility/fleet findings are deferred until Stage 5.
- [x] Excel remains the detailed evidence layer.
- [x] Python remains the independent analytical validation layer.
- [x] Power Query remains the controlled preparation layer.
- [x] Power BI/DAX remains the final interactive presentation layer.
- [x] Finding traceability is defined.
- [x] KPI and finding change control is defined.
- [x] Dashboard-to-decision boundaries are defined.
- [x] Stage 5 dependency is explicitly documented.

**STATUS: STAGE 3.8.6 — MANAGEMENT FINDINGS & ACTION DESIGN: APPROVED FOR IMPLEMENTATION AFTER ANALYTICAL EXECUTION**

---

### 3.8.7 Dashboard Interaction, Navigation & Analytical Traceability Design
---

The dashboard must provide controlled navigation and interaction without allowing users to lose analytical context or unintentionally interpret cross-grain results as directly comparable measures.

The interaction architecture will therefore connect management-level views to deeper analytical evidence while preserving KPI definitions, population boundaries, grain awareness, and finding traceability.

#### 3.8.7.1 Interaction Design Objective
---

The dashboard interaction model must help a user move through the analytical story:

**Executive View → Performance Difference → Diagnostic Evidence → Detailed Context → Management Finding**

Interaction is therefore an analytical navigation mechanism rather than a decorative feature.

Every interaction should answer at least one of the following:

- What happened?
- Where did it happen?
- When did it happen?
- How large is the difference?
- What supporting evidence exists?
- What limitation applies?
- What should management investigate next?

Interactions that do not contribute to these objectives should not be implemented merely because Power BI supports them.

#### 3.8.7.2 Approved Dashboard Navigation Architecture
---

The primary report navigation structure is:

**01 — Executive Control Tower**  
↓  
**02 — Operations Diagnostics**  
↓  
**03 — Fleet, Fuel & Cost Intelligence**  
↓  
**04 — Route & Facility Intelligence**  
↓  
**05 — Management Findings & Action**

The user must be able to move between these pages without losing awareness of the analytical context.

Recommended navigation actions:

- Page navigation for primary report movement.
- Back navigation for drillthrough pages.
- Drillthrough for entity or segment-level investigation.
- Bookmarks only where a saved analytical view materially improves usability.
- Slicers for controlled analytical filtering.

Power BI supports page navigation, bookmark navigation, back actions, and drillthrough actions through buttons and navigators. :contentReference[oaicite:1]{index=1}

#### 3.8.7.3 Executive-to-Diagnostic Navigation
---

Page 01 must act as the entry point to deeper analysis.

The Executive Control Tower should provide navigation paths such as:

**Delivery KPI → Page 02 Operations Diagnostics**

**Fleet / Fuel KPI → Page 03 Fleet, Fuel & Cost Intelligence**

**Route / Facility context → Page 04 Route & Facility Intelligence**

**Management attention → Page 05 Management Findings & Action**

Navigation must communicate why the user is being taken to the next page.

Example:

**44.61% On-Time Delivery → Investigate Delivery Performance**

This should not imply that 44.61% is automatically a failure. The next page exists to determine whether meaningful differences or diagnostic evidence exist.

#### 3.8.7.4 Controlled Slicer Architecture
---

Slicers should be limited to dimensions that support meaningful analytical questions.

Primary candidate slicers:

- Date / Year
- Facility
- Route
- Relevant operational category
- Fleet / asset dimension where analytically appropriate
- Customer where Q16 analysis supports it

Slicers must not create misleading comparisons between incompatible populations.

For example:

- A delivery-performance analysis should use the validated delivery-performance population.
- A fleet-utilization analysis should remain at the truck-month grain.
- Fuel analysis should respect fuel-purchase transaction grain.
- Revenue analysis should remain aligned with the validated revenue population.

A slicer must therefore change the analytical population predictably and consistently.

#### 3.8.7.5 Core Period Control
---

The default analytical period must remain:

**2022-01-01 through 2024-12-31**

January 2025 supporting data must not silently become part of the core management period.

If supporting data extending into January 2025 is displayed, the report must make the scope distinction explicit.

The report should therefore provide:

- clear period labeling,
- controlled date filtering,
- consistent default period,
- visible indication when a non-core period is selected.

A user must never be left to infer the analytical period from a chart axis alone.

#### 3.8.7.6 Cross-Filtering and Cross-Highlighting Governance
---

Power BI allows visuals to cross-filter and cross-highlight one another, and these interactions can be customized by the report designer. :contentReference[oaicite:2]{index=2}

For this project, visual interactions must be intentionally configured.

Every page should be tested for:

- expected filtering,
- unexpected filtering,
- unexpected cross-highlighting,
- incompatible grain combinations,
- misleading totals,
- population changes,
- blank-result behavior.

The default interaction should not automatically be accepted.

If an interaction could cause a user to compare measures from different grains without sufficient context, it should be disabled or redesigned.

#### 3.8.7.7 Grain-Aware Interaction Controls
---

The following analytical grains must remain explicit:

| Analytical Measure | Primary Grain |
|---|---|
| Completed Loads | Load |
| Completed Trips | Trip |
| On-Time Delivery | Delivery-event logic |
| Fleet Utilization | Truck-month |
| Fuel Consumption | Fuel-purchase transaction |
| Fuel Cost | Fuel-purchase transaction |
| Average Fuel Efficiency | Source-defined |
| Revenue | Validated revenue population |

Interactions must not create duplicated or artificially expanded populations.

Examples of prohibited behavior:

- Filtering a load-level measure through repeated event rows and interpreting the resulting count as unique loads without validation.
- Expanding fuel-purchase values through trip-level records and summing the duplicated result.
- Treating truck-month utilization as directly additive across arbitrary trip-level selections.
- Combining maintenance costs with trip-level values without a validated asset/time relationship.

The dashboard must preserve the same grain controls established during KPI validation.

#### 3.8.7.8 Drillthrough Design
---

Drillthrough should be used when a summarized result requires focused investigation.

Recommended drillthrough scenarios may include:

- Route detail
- Facility detail
- Truck detail
- Driver detail
- Time-period detail
- Management finding evidence

Actual drillthrough pages should be created only where Stage 5 analysis demonstrates a meaningful need.

The intended interaction is:

**Summary Result → Select Entity/Segment → Drillthrough → Detailed Evidence → Back**

Power BI drillthrough is designed specifically for moving from a summary visual to a detailed page filtered to the selected context. Microsoft recommends providing a clear return path through the back button. :contentReference[oaicite:3]{index=3}

#### 3.8.7.9 Drillthrough Safety Rules
---

Drillthrough must not be used to imply causality.

For example:

**Route → Route Detail**

is acceptable.

**Low On-Time Route → Root Cause**

is not acceptable unless causal evidence has actually been established.

Drillthrough pages should therefore expose:

- selected entity,
- relevant KPI values,
- supporting comparisons,
- trends,
- distributions,
- data-quality indicators,
- relevant evidence.

They should not automatically label the selected entity as:

- root cause,
- bottleneck,
- failure,
- inefficient,
- problematic,

unless the analytical evidence supports that classification.

#### 3.8.7.10 Bookmark Usage
---

Bookmarks should be used selectively.

Potential uses include:

- management summary view,
- evidence view,
- finding view,
- alternate analytical perspective,
- guided presentation sequence.

Bookmarks must not be used to hide limitations or create an artificial story.

If bookmarks are used to switch between visual states, the saved state must be documented and tested so that filters and slicers do not unexpectedly reset or persist.

Power BI bookmarks can preserve page state, filters, slicers, visual selections, sorting, drill location, and visibility settings, making them useful for controlled report storytelling. :contentReference[oaicite:4]{index=4}

#### 3.8.7.11 Reset and Clear-Context Controls
---

Every page with meaningful filtering should provide a clear method to return to the intended default analytical state.

Recommended controls:

- Clear Filters
- Reset View
- Back
- Home / Executive

The default state should represent the approved core analytical period and intended management population.

This prevents a user from interpreting a heavily filtered page as if it represented the overall operation.

#### 3.8.7.12 Navigation Labels and User Guidance
---

Navigation labels should describe the analytical purpose of the destination.

Preferred:

- **Operations Diagnostics**
- **Fleet & Fuel Intelligence**
- **Route & Facility Intelligence**
- **Management Findings**

Avoid ambiguous labels such as:

- Analysis
- Data
- Details
- Dashboard 2
- More
- Other

Where a drillthrough or interaction is not obvious, a concise tooltip or instruction should explain the available action.

#### 3.8.7.13 Analytical Traceability Model
---

Every major dashboard result must remain traceable through the analytical workflow.

Required traceability:

**Business Question → KPI → Analytical Workstream → Python Analysis → Excel Evidence → Power Query / Model → DAX → Visual → Finding → Management Action**

For example:

**Q3 → On-Time Delivery → W2 Delivery Reliability → Python segment analysis → Excel comparison → Power Query model → approved DAX KPI → Operations Diagnostics → validated finding → management investigation**

This ensures the dashboard remains the final presentation layer rather than the source of the analytical conclusion.

#### 3.8.7.14 Interaction-to-Evidence Traceability
---

A user should be able to move from a management-level result toward its evidence.

Example flow:

**Page 01**

On-Time Delivery = 44.61%

↓

**Page 02**

Compare delivery performance by validated dimensions.

↓

**Stage 5 analytical evidence**

Identify whether meaningful differences exist.

↓

**Drillthrough / detailed analysis**

Review selected route, facility, period, or segment.

↓

**Page 05**

Present the validated finding, limitation, business impact, and management action.

This structure prevents the dashboard from jumping directly from a headline KPI to a recommendation.

#### 3.8.7.15 Management Finding Navigation
---

Page 05 findings should provide a clear route back to supporting evidence.

Recommended relationship:

**Management Finding → Evidence Page → Supporting Analysis**

For example:

**Finding: Delivery-performance difference identified**

→ Operations Diagnostics

→ Selected segment / route / facility

→ Supporting evidence

→ Data limitation

→ Management action

The reverse navigation should also be available where useful:

**Diagnostic Page → Management Findings**

This creates a closed analytical loop rather than a one-directional presentation.

#### 3.8.7.16 Interaction Testing Requirements
---

Before final dashboard approval, every interactive element must be tested.

Minimum testing categories:

**Navigation Testing**

- Page buttons navigate correctly.
- Back buttons return to the correct source.
- Home navigation returns to Page 01.
- No dead-end navigation exists.

**Filter Testing**

- Date filters affect intended visuals.
- Dimension filters propagate correctly.
- Clear-filter controls restore the expected state.
- January 2025 does not silently enter the core period.

**Interaction Testing**

- Cross-filtering behaves as intended.
- Cross-highlighting does not create misleading interpretations.
- Disabled interactions remain disabled.
- Drill behavior does not alter unrelated analytical populations.

**Drillthrough Testing**

- Correct entity context is passed.
- Relevant filters are applied.
- Back navigation works.
- No blank or misleading visuals appear under valid drillthrough contexts.

**Finding Testing**

- Finding evidence matches the underlying analytical result.
- Finding classification remains unchanged.
- Limitations remain visible.
- Navigation to supporting evidence works.

#### 3.8.7.17 Performance and Usability Boundary
---

Interactivity must improve analytical usability rather than create unnecessary complexity.

The report should avoid:

- excessive slicers,
- unnecessary bookmarks,
- redundant navigation,
- overloaded pages,
- excessive drillthrough destinations,
- interactions that are difficult to understand,
- visuals that change in unexpected ways.

A management user should be able to understand:

1. where they are,
2. what is being measured,
3. what filters are active,
4. what changed,
5. where to investigate next.

#### 3.8.7.18 Interaction Governance
---

Interaction design must follow the same governance principles as KPI and analytical design.

**Business-first**

Every interaction must support a business question or analytical purpose.

**Evidence-first**

Navigation must lead toward validated evidence, not predetermined conclusions.

**Grain-aware**

Interactions must not create misleading cross-grain calculations.

**Period-controlled**

Core-period analysis must remain distinguishable from supporting data.

**Limitation-aware**

Known limitations must remain visible when they materially affect interpretation.

**Traceable**

Major findings must be traceable back to the analytical evidence layer.

**Reproducible**

A reviewer should be able to reproduce the analytical context represented by the dashboard.

#### 3.8.7.19 Implementation Workflow
---

The implementation workflow remains:

**Python → Excel → Power Query → Power BI/DAX**

**Python**

- independent analytical calculations,
- segment comparisons,
- exception analysis,
- validation.

**Excel**

- PivotTables,
- evidence tables,
- detailed comparisons,
- finding validation,
- management evidence preparation.

**Power Query**

- controlled transformation,
- standardized fields,
- model preparation,
- validated dimensional structures.

**Power BI/DAX**

- approved KPI implementation,
- visual interaction,
- filtering,
- navigation,
- drillthrough,
- management presentation.

The dashboard must not become the first place where an analytical conclusion is discovered and declared.

#### 3.8.7.20 Stage 3.8.7 Completion Criteria
---

Dashboard Interaction, Navigation & Analytical Traceability Design is complete when:

- [x] Primary report navigation is defined.
- [x] Executive-to-diagnostic navigation is defined.
- [x] Slicer governance is defined.
- [x] Core analytical period control is defined.
- [x] Cross-filtering and cross-highlighting governance is defined.
- [x] Grain-aware interaction controls are defined.
- [x] Drillthrough use cases and restrictions are defined.
- [x] Bookmark usage rules are defined.
- [x] Reset and clear-context behavior is defined.
- [x] Navigation labeling standards are defined.
- [x] Analytical traceability is defined.
- [x] Finding-to-evidence navigation is defined.
- [x] Interaction testing requirements are defined.
- [x] Performance and usability boundaries are defined.
- [x] Python → Excel → Power Query → Power BI/DAX workflow remains explicit.
- [x] Dashboard remains the presentation layer rather than the source of analytical conclusions.

**STATUS: STAGE 3.8.7 — DASHBOARD INTERACTION, NAVIGATION & ANALYTICAL TRACEABILITY DESIGN: APPROVED FOR IMPLEMENTATION AFTER ANALYTICAL EXECUTION**

---

### 3.8.8 Dashboard Visual Design & KPI Presentation Standards
---

Dashboard visuals must communicate validated analytical results clearly without introducing unsupported interpretations, misleading comparisons, or unnecessary visual complexity.

The visual design will therefore follow the analytical hierarchy established in Stage 3.5–3.7 and the dashboard architecture established in Stage 3.8. Visual selection will support the business question first; aesthetics and visual variety are secondary.

#### 3.8.8.1 Visual Design Objective
---

The dashboard should allow management to understand:

1. What is happening?
2. How significant is the result?
3. Where is the difference occurring?
4. What evidence supports the difference?
5. What limitation applies?
6. What should be investigated or monitored?

The visual hierarchy must therefore follow:

**Business Question → KPI → Comparison → Pattern → Evidence → Finding → Action**

The dashboard must not reverse this process by selecting visually attractive charts first and searching for a business interpretation afterward.

#### 3.8.8.2 KPI Presentation Hierarchy
---

The approved P1 KPI portfolio must be presented according to management importance.

**Tier 1 — Core Operational Performance**

- Completed Loads
- Completed Trips
- On-Time Delivery %

**Tier 2 — Financial / Consumption Context**

- Total Revenue
- Total Fuel Consumption
- Fuel Cost

**Tier 3 — Fleet Context**

- Active Fleet Count
- Fleet Utilization %
- Average Fuel Efficiency

Validated baseline values:

| KPI | Baseline |
|---|---:|
| Completed Loads | 85,410 |
| Completed Trips | 85,410 |
| Total Revenue | 262,525,800.29 |
| On-Time Delivery | 44.61% |
| Active Fleet | 92 |
| Total Fuel Consumption | 24,493,560.80 gallons |
| Fuel Cost | 95,499,723.14 |
| Fleet Utilization | Source-defined |
| Average Fuel Efficiency | Source-defined |

These values are the approved baseline context and must not be represented as targets unless a separate validated target exists.

#### 3.8.8.3 KPI Card Standards
---

KPI cards should be used for validated headline measures that management needs to understand immediately.

A KPI card should communicate:

- KPI name,
- current selected-period value,
- appropriate unit,
- relevant comparison where validated,
- optional concise contextual label.

Examples:

**Completed Loads**  
85,410

**On-Time Delivery**  
44.61%

**Fuel Cost**  
95,499,723.14

KPI cards must not display invented:

- targets,
- thresholds,
- traffic-light states,
- performance grades,
- benchmark comparisons.

Where no validated target exists, the KPI should remain a measured result rather than being classified automatically as good or bad.

#### 3.8.8.4 Comparison Standards
---

Comparison is required before a visual result is promoted into a management interpretation.

Appropriate comparisons may include:

- time period vs prior period,
- route vs route,
- facility vs facility,
- fleet segment vs fleet segment,
- asset vs asset,
- category vs category,
- selected population vs overall population.

The comparison population must remain explicit.

A difference should not be described as material solely because it is numerically large.

The analytical execution must establish whether the magnitude is meaningful within the relevant population.

#### 3.8.8.5 Visual Selection by Analytical Question
---

Visual type must follow analytical purpose.

| Analytical Purpose | Preferred Visual Role |
|---|---|
| Headline KPI | KPI Card |
| Category Comparison | Bar / Column Chart |
| Time Trend | Line Chart |
| Contribution | Bar / Column / Contribution View |
| Distribution | Histogram / Distribution Visual |
| Ranking | Sorted Bar Chart |
| Detailed Evidence | Table / Matrix |
| Relationship | Scatter Plot where analytically justified |
| Geographic Pattern | Map only when geography adds genuine analytical value |
| Finding Communication | Narrative + supporting visual |

Visual selection remains conditional on Stage 5 analytical results.

A chart must not be selected merely because it is visually impressive.

#### 3.8.8.6 Bar and Column Chart Standard
---

Bar and column charts should be the default comparison visual where categories must be compared.

They are particularly appropriate for:

- route comparisons,
- facility comparisons,
- fleet comparisons,
- time-period comparisons,
- contribution analysis.

Sorting should reflect the analytical purpose.

However, sorted results must not automatically be labelled:

- best,
- worst,
- problem,
- bottleneck,
- leader,

unless the analytical evidence supports the classification.

#### 3.8.8.7 Trend Visual Standard
---

Line charts should be used when the analytical question concerns change over time.

Potential applications include:

- On-Time Delivery over time,
- revenue trend,
- fuel consumption trend,
- fuel cost trend,
- fleet activity,
- validated utilization trend.

Time trends must use a consistent temporal grain appropriate to the question.

The visual must not imply seasonality, deterioration, improvement, or recurring patterns unless Stage 5 analysis validates that interpretation.

#### 3.8.8.8 Contribution Analysis Standard
---

Contribution visuals should communicate how much a category contributes to an overall measure.

Potential applications include:

- route revenue contribution,
- route fuel-cost contribution,
- facility volume contribution,
- fuel consumption contribution.

Contribution must remain distinct from performance.

For example:

**High fuel-cost contribution ≠ inefficient route**

**High revenue contribution ≠ profitable route**

**High volume contribution ≠ operational problem**

Contribution visuals must therefore be accompanied by the relevant performance measure when management interpretation requires it.

#### 3.8.8.9 Distribution and Outlier Visuals
---

Distribution analysis may be used when averages or rankings could hide meaningful variation.

Potential applications include:

- delivery-time performance,
- fuel efficiency,
- utilization,
- route-level performance,
- asset-level performance.

Outliers must not automatically be removed, corrected, or labelled as errors.

The Stage 2 finding of 436 truck-month records with utilization above 100%, including a maximum of 148.40%, is a specific example where exception visibility is preferable to artificial correction.

#### 3.8.8.10 Multi-KPI Comparison Standard
---

Operational performance should generally be evaluated using multiple relevant measures rather than a single ranking.

For route and facility analysis, relevant measures may include:

- operational volume,
- On-Time Delivery,
- revenue contribution,
- fuel consumption,
- fuel cost,
- validated efficiency measures.

No arbitrary composite score should be introduced merely to simplify the dashboard.

If multiple KPIs point in different directions, the dashboard should expose that trade-off rather than forcing the result into a single score.

#### 3.8.8.11 Conditional Formatting Standard
---

Conditional formatting may be used to improve identification of meaningful differences.

However, conditional formatting must not create artificial performance thresholds.

Approved uses may include:

- visually emphasizing validated differences,
- identifying selected values,
- highlighting exception categories,
- improving table readability.

Unapproved uses include:

- red = failure without validated threshold,
- green = success without validated target,
- arbitrary percentile cutoffs presented as business standards,
- automatic “good/bad” classifications.

If a business threshold is later validated, it must be documented separately from the visual formatting rule.

#### 3.8.8.12 Color and Visual Encoding Governance
---

Color must communicate meaning consistently.

Where semantic colors are used, they should have stable meanings throughout the report.

Examples:

- positive/negative variance,
- selected vs unselected,
- attention-required status,
- data limitation,
- neutral context.

Color must not be the only mechanism for communicating meaning.

Important distinctions should remain understandable through:

- labels,
- text,
- position,
- symbols,
- or numerical values.

This improves accessibility and prevents interpretation from depending entirely on color.

#### 3.8.8.13 Data Labels and Units
---

Every numerical visual must make the unit understandable.

Examples:

- %
- gallons
- dollars
- miles
- hours
- trips
- loads

Currency values should use an appropriate readable format while preserving analytical precision in detailed evidence.

Large numbers may be abbreviated for executive presentation, but the underlying value must remain accessible through tooltip or detailed evidence.

For example:

**$95.5M**

may be appropriate for an executive visual while the detailed analytical layer retains:

**95,499,723.14**

#### 3.8.8.14 Percentage Presentation Standards
---

Percentages must always be accompanied by sufficient context.

For example:

**44.61% On-Time Delivery**

is preferable to displaying only:

**44.61%**

where the metric's meaning is not otherwise obvious.

Percentage values must not be presented as performance against a target unless the target is validated.

Source-defined percentages must retain their methodological limitation where relevant.

The On-Time Delivery KPI specifically uses a source-defined ±120-minute tolerance whose formal business-policy basis has not been independently established.

#### 3.8.8.15 Tooltip Standards
---

Tooltips should provide additional analytical context without becoming a second dashboard.

Where appropriate, tooltips may contain:

- KPI definition,
- selected population,
- comparison value,
- variance,
- supporting metric,
- relevant data-quality indicator.

Tooltips must not hide material limitations that are necessary to correctly interpret the result.

Tooltips should also respect the same grain and population rules as the main visual.

#### 3.8.8.16 Table and Matrix Standards
---

Tables and matrices should be used when exact values, evidence review, or detailed comparison is more useful than visual summarization.

Appropriate uses include:

- management finding evidence,
- route comparison,
- facility comparison,
- exception review,
- supporting KPI detail,
- data-quality indicators.

Tables should avoid excessive columns.

The most decision-relevant fields should appear first.

Where a table contains a ranking, the ranking must not automatically imply business quality.

#### 3.8.8.17 Executive Page Visual Density
---

Page 01 — Executive Control Tower must remain visually restrained.

Its purpose is to establish the operational baseline and direct management toward areas requiring deeper investigation.

The page should prioritize:

- validated P1 KPIs,
- meaningful comparisons,
- concise operational context,
- navigation to diagnostic pages,
- material data-quality visibility.

Detailed route, facility, asset, driver, maintenance, and customer analysis belongs on deeper analytical pages.

The Executive page should not attempt to contain every available KPI.

#### 3.8.8.18 Operations Diagnostics Visual Standards
---

Page 02 should emphasize comparison and diagnostic evidence.

Potential visual roles include:

- On-Time Delivery KPI,
- time comparison,
- route/facility comparison,
- distribution,
- supporting diagnostic evidence,
- detailed evidence table.

Actual dimensions and visual selection will be determined from Stage 5 findings.

The page must preserve the distinction between:

**Observed Difference**

and

**Validated Diagnostic Finding**

A visual can demonstrate the former without automatically proving the latter.

#### 3.8.8.19 Fleet, Fuel & Cost Visual Standards
---

Page 03 should communicate fleet and fuel performance without implying unsupported profitability.

Potential visual roles include:

- active fleet KPI,
- fuel consumption KPI,
- fuel cost KPI,
- utilization comparison,
- fuel-efficiency comparison,
- trend analysis,
- exception/distribution analysis.

The page must explicitly preserve:

- source-defined utilization methodology,
- source-defined average fuel efficiency,
- utilization >100% exceptions,
- missing fuel identifiers,
- trips without linked fuel purchases.

Fuel cost must not be described as profit impact.

#### 3.8.8.20 Route & Facility Visual Standards
---

Page 04 should support Q6 and Q7 using multi-dimensional comparison.

Potential visual roles include:

- route performance comparison,
- facility performance comparison,
- volume context,
- revenue contribution,
- fuel-cost contribution,
- delivery reliability,
- detailed evidence table.

Actual route and facility findings will be populated only after Stage 5 execution.

No visual title should pre-label a route or facility as:

- worst,
- problematic,
- bottleneck,
- inefficient,

before the analytical evidence establishes the classification.

#### 3.8.8.21 Management Findings Visual Standards
---

Page 05 should prioritize finding communication over KPI volume.

Each management finding should follow:

**FINDING → EVIDENCE → DIAGNOSTIC EVIDENCE → LIMITATION → BUSINESS IMPACT → MANAGEMENT ACTION**

The visual layer may use:

- concise finding cards,
- supporting comparison visuals,
- evidence tables,
- trend/distribution visuals,
- action-status indicators.

The finding narrative remains the primary communication element.

The supporting visual exists to demonstrate evidence rather than decorate the finding.

#### 3.8.8.22 Visual Titles and Analytical Language
---

Visual titles should communicate the analytical subject clearly.

Preferred:

- **On-Time Delivery by Facility**
- **Fuel Cost by Route**
- **Monthly On-Time Delivery Trend**
- **Fleet Utilization by Truck**

Avoid unsupported interpretive titles such as:

- **Worst Facilities**
- **Problem Routes**
- **Root Causes of Delay**
- **Inefficient Trucks**

unless the analytical evidence and finding classification genuinely support those statements.

Analytical language should distinguish:

- measured result,
- observed difference,
- diagnostic finding,
- limitation,
- recommendation.

#### 3.8.8.23 Visual-Level Data-Quality Disclosure
---

Material limitations should be visible close to the affected analysis.

Examples:

**On-Time Delivery**

Source-defined ±120-minute tolerance; formal policy basis not independently established.

**Fleet Utilization**

436 truck-month records exceed 100%; maximum 148.40%. Values are retained without artificial capping.

**Fuel Analysis**

1.98% of fuel purchases lack truck_id and 8,471 completed trips have no corresponding fuel purchase.

**Trip Attribution**

5.80% of trips are missing at least one driver/truck/trailer assignment.

These disclosures should be concise but discoverable.

#### 3.8.8.24 Visual Consistency Standards
---

The report must use consistent conventions for:

- KPI naming,
- units,
- decimal precision,
- date formats,
- percentage formatting,
- axis labels,
- sorting,
- tooltip structure,
- page titles,
- navigation,
- filter placement.

Consistency should reduce cognitive load and make differences easier to interpret.

A visual should not use a different definition, scale, or unit merely because it looks better.

#### 3.8.8.25 Accessibility Standards
---

Visual design should remain understandable to users with different accessibility needs.

The report should avoid relying solely on color.

Important information should be supported through:

- text,
- labels,
- meaningful titles,
- sufficient contrast,
- logical reading order,
- accessible alternative descriptions where appropriate.

Accessibility should be treated as part of analytical usability rather than as a final cosmetic check.

#### 3.8.8.26 Visual Integrity Controls
---

Before a visual is approved, validate:

- correct KPI definition,
- correct measure,
- correct population,
- correct grain,
- correct period,
- correct filter behavior,
- correct aggregation,
- correct units,
- correct comparison,
- correct sorting,
- correct interpretation,
- correct limitation disclosure.

A visually attractive chart with an incorrect aggregation is a failed analytical visual.

A visually simple chart with correct evidence is preferred.

#### 3.8.8.27 Python → Excel → Power Query → Power BI/DAX Alignment
---

Visual design must remain downstream of analytical evidence.

**Python**

- calculates and validates analytical results,
- identifies distributions, differences, and exceptions.

**Excel**

- provides detailed comparisons,
- supports PivotTables,
- validates contributions and trends,
- prepares evidence for management findings.

**Power Query**

- prepares the validated analytical model,
- applies controlled transformations.

**Power BI/DAX**

- implements approved KPI logic,
- creates interactive visuals,
- provides filtering and navigation,
- communicates validated findings.

The visual must not become the place where business logic is silently invented.

#### 3.8.8.28 Stage 5 Dependency for Final Visual Selection
---

The final visual configuration remains intentionally open until Stage 5 analytical execution.

Stage 5 must determine:

- which dimensions contain meaningful differences,
- which trends are material,
- which distributions require presentation,
- which findings deserve management emphasis,
- which supporting visuals are necessary,
- which comparisons are decision-relevant.

Therefore, Stage 3.8.8 defines visual standards and roles rather than inventing final findings.

This protects the dashboard from confirmation bias and prevents the design from forcing the analysis to match a predetermined story.

#### 3.8.8.29 Visual QA Requirements
---

Before dashboard release, visual QA must verify:

**Numerical Accuracy**

- KPI values reconcile with approved baselines.
- Aggregations are correct.
- Percentages use the correct denominator.
- Currency and unit conversions are correct.

**Analytical Accuracy**

- Grain is correct.
- Population is correct.
- Time period is correct.
- Comparisons are valid.
- Findings match analytical evidence.

**Interaction Accuracy**

- Slicers behave correctly.
- Cross-filtering is intentional.
- Drillthrough preserves context.
- Reset controls work.

**Presentation Accuracy**

- Titles are accurate.
- Units are visible.
- Labels are readable.
- No misleading colors or thresholds exist.
- Limitations are discoverable.

#### 3.8.8.30 Stage 3.8.8 Completion Criteria
---

Dashboard Visual Design & KPI Presentation Standards is complete when:

- [x] KPI presentation hierarchy is defined.
- [x] Validated P1 baseline values are incorporated.
- [x] KPI card standards are defined.
- [x] Comparison standards are defined.
- [x] Visual selection is linked to analytical purpose.
- [x] Contribution and performance are explicitly separated.
- [x] Distribution and outlier handling rules are defined.
- [x] Multi-KPI comparison is preferred where appropriate.
- [x] Conditional formatting governance is defined.
- [x] Color and accessibility standards are defined.
- [x] Tooltip and table standards are defined.
- [x] Page-specific visual roles are defined.
- [x] Management Findings visual standards are defined.
- [x] Visual title and analytical-language standards are defined.
- [x] Data-quality disclosure requirements are defined.
- [x] Visual integrity controls are defined.
- [x] Python → Excel → Power Query → Power BI/DAX alignment is preserved.
- [x] Final visual selection remains dependent on Stage 5 analytical evidence.
- [x] Visual QA requirements are defined.

**STATUS: STAGE 3.8.8 — DASHBOARD VISUAL DESIGN & KPI PRESENTATION STANDARDS: APPROVED FOR IMPLEMENTATION AFTER ANALYTICAL EXECUTION**

---

### 3.8.9 Dashboard Data-Quality, Limitation & Governance Design
---

The dashboard must make analytical reliability visible without overwhelming the management user. Data-quality information should explain where interpretation requires caution, while governance controls ensure that KPI definitions, analytical populations, limitations, and findings remain consistent from source analysis through final presentation.

The objective is not to make the dashboard appear perfect; it is to make the dashboard **trustworthy, transparent, and defensible**.

#### 3.8.9.1 Data-Quality Governance Objective
---

Dashboard governance must preserve the distinction between:

**Data Quality Issue → Analytical Limitation → Interpretation Constraint → Management Implication**

A data-quality issue should not automatically invalidate the entire dataset or KPI.

Likewise, a validated KPI should not be presented without its material limitations when those limitations can affect interpretation.

The dashboard must therefore communicate data quality proportionately.

#### 3.8.9.2 Approved Data-Quality Baseline
---

The dashboard governance layer must retain the following validated Stage 1 and Stage 2 findings:

| Data-Quality Finding | Validated Result | Analytical Implication |
|---|---:|---|
| Trips missing driver/truck/trailer assignment | 4,952 trips / 5.80% | Limits dimensional attribution |
| Delivery before pickup | 486 trips / 0.569% | Limits chronology interpretation |
| Truck-month utilization >100% | 436 records / 13.16% | Requires exception-aware interpretation |
| Maximum utilization | 148.40% | Do not automatically correct or cap |
| Fuel purchases missing truck_id | 3,880 / 1.98% | Limits truck-level fuel attribution |
| Fuel purchases missing driver_id | ~2.03% | Limits driver-level fuel attribution |
| Completed trips without linked fuel purchase | 8,471 | Limits trip-level fuel linkage |
| On-Time Delivery methodology | ±120-minute source-defined tolerance | Formal business-policy basis not independently established |
| Average Fuel Efficiency | Source-defined | Methodology not independently reproducible |

These values are governance evidence and must remain consistent with the Stage 2 and Stage 3 documentation.

#### 3.8.9.3 Data-Quality Severity Model
---

Data-quality issues should be classified according to their effect on analytical interpretation rather than their raw percentage alone.

Recommended classifications:

**Informational**

The issue is documented but does not materially affect the current analysis.

**Interpretation Limitation**

The KPI remains usable, but a specific dimension or interpretation is constrained.

**Material Analytical Limitation**

The issue can materially affect a finding or comparison and must be disclosed with the affected analysis.

**Data Sufficiency Limitation**

Available data does not adequately support the requested analysis.

**Requires Investigation**

The issue is sufficiently important to require targeted validation before stronger conclusions are made.

This classification prevents every data-quality finding from appearing as an emergency.

#### 3.8.9.4 KPI-Specific Limitation Disclosure
---

Limitations must be attached to the KPI or analysis they affect.

**Completed Trips**

5.80% of trips are missing at least one driver, truck, or trailer assignment.

Implication:

Trip totals remain usable, but dimensional attribution should be interpreted carefully.

**On-Time Delivery**

The approved KPI is 44.61% using the source-defined ±120-minute tolerance.

Implication:

The KPI is approved for use, but the formal business-policy basis of the tolerance has not been independently established.

**Fleet Utilization**

436 truck-month records exceed 100%, representing 13.16% of truck-month records, with a maximum of 148.40%.

Implication:

Values are retained as observed. They must not be artificially capped or corrected without evidence.

**Fuel Consumption / Fuel Cost**

1.98% of fuel purchases lack truck_id and approximately 2.03% lack driver_id. Additionally, 8,471 completed trips have no corresponding fuel purchase.

Implication:

Aggregate fuel analysis is usable within the approved scope, but asset-level and trip-level attribution requires caution.

**Average Fuel Efficiency**

The metric is source-defined.

Implication:

It can be used as an approved KPI with limitation, but the methodology should not be represented as independently reproduced.

#### 3.8.9.5 Data-Quality Visibility Standard
---

Material limitations should be discoverable from the dashboard without forcing the user to search through external documentation.

Visibility should follow three levels.

**Level 1 — Executive Visibility**

Only material limitations that affect management interpretation should be surfaced.

Examples:

- On-Time Delivery methodology limitation
- Trip assignment limitation
- Fleet utilization exception
- Fuel attribution limitation

**Level 2 — Analytical Page Visibility**

More detailed limitations should appear on the relevant page.

Examples:

- missing fuel identifiers,
- missing asset assignments,
- chronology reversals,
- population differences.

**Level 3 — Detailed Documentation**

Complete validation evidence, counts, methodology, and investigation records remain available in the project documentation and analytical evidence layer.

This prevents the Executive page from becoming a data-quality report while maintaining transparency.

#### 3.8.9.6 Limitation Disclosure Pattern
---

The preferred presentation pattern is:

**Metric → Limitation → Interpretation**

Example:

**On-Time Delivery: 44.61%**

*Source-defined ±120-minute tolerance; formal business-policy basis not independently established.*

**Interpretation:**  
Use for comparative operational analysis, but do not present the value as compliance with an independently validated service-level target.

Another example:

**Fleet Utilization**

*436 truck-month records exceed 100%; values retained without artificial capping.*

**Interpretation:**  
Investigate materially different utilization patterns rather than treating values above 100% as automatically invalid.

#### 3.8.9.7 Data-Quality Indicators
---

Where appropriate, the dashboard may use compact indicators for:

- assignment completeness,
- fuel linkage completeness,
- chronology exceptions,
- utilization exceptions,
- methodology limitations.

Indicators should communicate the existence and relevance of a limitation.

They should not create arbitrary quality scores unless a formally validated scoring methodology is established.

Avoid:

**Data Quality = 82/100**

unless the project has a defensible methodology for producing that score.

The project currently does not require such a composite score.

#### 3.8.9.8 Missing-Value Interpretation Rules
---

Missing values must not automatically be interpreted as:

- zero,
- failure,
- poor performance,
- inactive,
- unavailable,
- or negative business outcome.

The interpretation must follow the semantic meaning established during Stage 2 validation.

Examples:

**Missing driver_id**

does not mean the driver performed at zero.

**Missing truck_id**

does not mean fuel consumption was zero.

**Missing fuel purchase**

does not automatically mean the trip consumed no fuel.

**Missing termination_date**

does not automatically mean the employee was terminated.

Missingness is therefore treated as a data-state requiring appropriate interpretation rather than an artificial business value.

#### 3.8.9.9 Exception Handling Standard
---

Validated exceptions must remain visible unless a documented analytical rule explicitly excludes them.

The following exceptions must not be silently removed:

- 486 delivery-before-pickup trips,
- 436 truck-month utilization >100% records,
- trips with missing asset assignments,
- fuel transactions with missing identifiers.

If an analytical population excludes an exception, the analysis must document:

- exclusion rule,
- reason,
- affected population,
- analytical impact,
- comparison with the inclusive population where necessary.

#### 3.8.9.10 No Artificial Data Correction in Presentation
---

The dashboard must not silently correct source data for visual convenience.

Prohibited examples:

- capping utilization at 100%,
- replacing missing identifiers with invented categories,
- changing source-defined MPG,
- modifying delivery timestamps,
- deleting chronology exceptions,
- replacing missing fuel records with zero,
- manually changing KPI values to improve visual presentation.

If a transformation is required for a specific analytical purpose, it must be implemented in the controlled transformation layer and documented.

#### 3.8.9.11 Source-to-Dashboard Governance
---

The analytical chain must remain traceable:

**Raw Source → Stage 1 Audit → Stage 2 Validation → Stage 3 Business Design → Python Analysis → Excel Evidence → Power Query → DAX → Power BI Visual**

The raw source remains immutable.

Stage 1 and Stage 2 findings remain the foundation for interpreting downstream analysis.

The dashboard must never silently overwrite validated source characteristics.

#### 3.8.9.12 KPI Definition Governance
---

Every production KPI must have an approved definition before dashboard implementation.

The approved P1 KPI set is:

1. Completed Loads
2. Completed Trips
3. Total Revenue
4. On-Time Delivery %
5. Fleet Utilization %
6. Active Fleet Count
7. Total Fuel Consumption
8. Average Fuel Efficiency
9. Fuel Cost

No production KPI should be introduced solely because a visual appears to require it.

Supporting KPIs may be implemented when they directly support an approved analytical question and pass the same validation discipline.

#### 3.8.9.13 KPI Change Control
---

Any KPI definition change must document:

- previous definition,
- new definition,
- reason for change,
- affected population,
- business impact,
- affected calculations,
- affected visuals,
- validation impact,
- approval status.

DAX must never become the hidden location for a business-definition change.

If the KPI definition changes, the affected analytical evidence and dashboard findings must be reassessed.

#### 3.8.9.14 Analytical Period Governance
---

The approved core analytical period is:

**2022-01-01 through 2024-12-31**

Supporting fuel and delivery data may extend into January 2025.

January 2025 must therefore not silently enter executive KPI calculations or trend analysis intended to represent the core period.

Any extension of the period must be:

- intentional,
- visible,
- documented,
- analytically justified.

This control prevents inconsistent period definitions across dashboard pages.

#### 3.8.9.15 Population Governance
---

Every dashboard analysis must have a defined population.

Population hierarchy:

**Core Period → Question-Specific Population → KPI Population → Validated Grain → Segmentation → Comparison Population**

For example:

**On-Time Delivery**

must use the approved delivery-performance population and its validated timing logic.

**Fleet Utilization**

must use truck-month records.

**Fuel Cost**

must use the validated fuel-purchase population.

**Revenue**

must remain aligned with the approved revenue population.

Population changes caused by filtering or relationships must be tested before the visual is approved.

#### 3.8.9.16 Cross-Grain Governance
---

The dashboard must preserve the cross-grain controls established in Stage 3.4 and Stage 3.5.

Key controls:

- Load-level values must not be multiplied by repeated trip/event records.
- Fuel-purchase values must not be summed after uncontrolled trip-level expansion.
- Truck-month utilization must not be treated as directly additive across incompatible grains.
- Maintenance cost must not be attributed to trips without a validated asset/time relationship.
- Ratios must use compatible numerator and denominator populations.

Any visual violating these principles is analytically invalid even if Power BI renders it correctly.

#### 3.8.9.17 Limitation-to-Finding Governance
---

A data limitation must be evaluated before a result is promoted to a management finding.

Decision sequence:

**Observed Result → Limitation Check → Evidence Strength → Finding Classification**

Possible outcomes:

**Finding**

Evidence remains sufficiently strong.

**Finding with Limitation**

Evidence supports the finding but a known limitation materially constrains interpretation.

**Observation**

Pattern exists but evidence is insufficient for a stronger conclusion.

**Requires Further Investigation**

Additional validation is required before management interpretation.

**Data Limitation**

The available data does not support the requested conclusion.

This prevents data quality from being treated as either invisible or automatically fatal.

#### 3.8.9.18 Governance of Management Actions
---

Management recommendations must reflect the strength of evidence.

| Evidence Status | Appropriate Management Response |
|---|---|
| No Material Pattern | Continue monitoring |
| Observation | Monitor / validate |
| Diagnostic Finding | Investigate |
| Finding with Limitation | Investigate with limitation |
| Data Limitation | Improve data / validate measurement |
| Requires Further Investigation | Targeted diagnostic analysis |

The dashboard must not convert a weak analytical signal into a strong operational directive.

Examples of unsupported actions include:

- redesigning routes solely from a ranking,
- changing staffing solely from utilization,
- replacing assets solely from fuel cost,
- changing maintenance policy without validated maintenance analysis,
- setting cost-reduction targets without a validated business target.

#### 3.8.9.19 Data Governance and Documentation
---

Governance evidence must be maintained outside the dashboard as well.

Required documentation should include:

- KPI dictionary,
- KPI validation record,
- analytical population definitions,
- known data-quality limitations,
- investigation records,
- finding records,
- change history,
- analytical evidence,
- dashboard QA results.

The dashboard communicates the relevant subset of this information.

The full evidence remains in the project analytical and documentation layers.

#### 3.8.9.20 Excel Governance Role
---

Excel remains a controlled evidence layer rather than an informal scratchpad.

Excel outputs should support:

- detailed validation,
- comparison,
- PivotTables,
- evidence tables,
- exception analysis,
- reconciliation,
- finding qualification.

Where an Excel result supports a management finding, the evidence should be traceable to the corresponding analytical question and finding ID.

Excel must not become a second uncontrolled definition layer.

#### 3.8.9.21 Python Governance Role
---

Python provides independent analytical validation and reproducibility.

Python should be used to:

- calculate baselines,
- validate segment populations,
- identify exceptions,
- compare analytical results,
- investigate patterns,
- reconcile results,
- preserve execution evidence.

Python results should be reproducible from controlled inputs and documented analytical logic.

#### 3.8.9.22 Power Query Governance Role
---

Power Query should be responsible for controlled transformation and model preparation.

Transformations must be:

- intentional,
- documented,
- reproducible,
- consistent with validated analytical requirements.

Power Query should not silently redefine business KPIs.

Where a transformation changes analytical meaning, it must be documented and validated.

#### 3.8.9.23 Power BI / DAX Governance Role
---

Power BI/DAX is the final implementation and presentation layer.

DAX must implement approved KPI definitions rather than independently redefining them.

Power BI must communicate:

- validated results,
- analytical context,
- relevant comparisons,
- limitations,
- findings,
- management actions.

The dashboard must not become the first location where a KPI is calculated, interpreted, and declared valid.

#### 3.8.9.24 Governance of Data Refresh and Reproducibility
---

The project is based on a fixed validated dataset and controlled analytical period.

Therefore, dashboard results must remain reproducible against the approved project dataset.

If the source data is replaced or refreshed with a materially different version, the project must not assume that existing findings remain valid.

A material source change requires reassessment of:

- data validation,
- KPI baselines,
- analytical results,
- findings,
- dashboard outputs.

The immutable raw dataset remains the reference point for the current project version.

#### 3.8.9.25 Governance of Report Validation
---

Before final dashboard approval, the report must be validated against the documented business requirements and analytical evidence.

Validation must confirm:

- required business questions are represented,
- approved KPIs are implemented correctly,
- visuals answer the intended questions,
- filtering works correctly,
- narrow populations behave correctly,
- limitations are visible,
- findings match analytical evidence,
- pages are understandable without excessive visual clutter.

Microsoft's Power BI guidance similarly recommends validating reports before deployment, including business requirements, visual appropriateness, filtering behavior, and report clarity. :contentReference[oaicite:0]{index=0}

#### 3.8.9.26 Governance of Analytical Claims
---

The dashboard must distinguish clearly between:

**Fact**

A validated measurement.

**Observation**

A measured pattern requiring interpretation.

**Finding**

A sufficiently validated analytical conclusion.

**Limitation**

A constraint on interpretation.

**Recommendation**

A management action supported by the evidence.

The following escalation remains prohibited:

**KPI → Finding**

**Ranking → Bottleneck**

**Correlation → Causation**

**High Volume → Poor Performance**

**Low Percentage → Failure**

**Outlier → Error**

**>100% Utilization → Invalid Data**

**Missing Assignment → Zero Performance**

**Source-Defined Metric → Independently Validated Methodology**

**Observation → Recommendation**

#### 3.8.9.27 Governance of Dashboard Claims
---

Every major dashboard statement should be traceable to evidence.

For example:

**“On-Time Delivery is 44.61%”**

requires KPI validation.

**“Facility A has materially lower delivery performance”**

requires Stage 5 comparative analysis.

**“Facility A is causing delivery delays”**

would require causal evidence and is therefore not automatically permitted.

**“Facility A requires further investigation”**

may be appropriate when the comparative evidence and finding classification support that action.

The wording must therefore match the evidence strength.

#### 3.8.9.28 Governance of Supporting Metrics
---

Supporting metrics must not silently become executive KPIs.

A supporting metric may be promoted only when:

- it directly supports an approved business question,
- the definition is validated,
- the source is reliable for the intended use,
- the grain is appropriate,
- the calculation is reproducible,
- the interpretation is understood,
- the management use case is clear.

This preserves the discipline established in the KPI dictionary and validation framework.

#### 3.8.9.29 Governance of Dashboard Scope
---

The dashboard must remain within the approved analytical scope.

Out-of-scope claims include:

- predictive modelling,
- machine learning,
- forecasting,
- optimization,
- unsupported causal inference,
- unsupported profitability or margin analysis,
- artificial KPI correction,
- arbitrary threshold creation,
- unsupported root-cause claims.

Profitability or margin should not be presented as an established analytical conclusion unless Stage 5 confirms sufficient supporting data.

#### 3.8.9.30 Data-Quality and Governance Presentation Layer
---

The final dashboard should contain a concise governance or methodology access point.

Possible content:

**Data & Methodology**

- Core period: 2022–2024
- KPI definitions: approved Stage 3.5
- Major limitations: summarized
- Source-defined metrics: identified
- Analytical scope: documented
- Finding methodology: documented

The detailed governance material should remain in project documentation rather than consuming executive dashboard space.

#### 3.8.9.31 Stage 3.8.9 Completion Criteria
---

Dashboard Data-Quality, Limitation & Governance Design is complete when:

- [x] Validated data-quality findings are incorporated.
- [x] KPI-specific limitations are defined.
- [x] Data-quality severity classification is defined.
- [x] Missing-value interpretation rules are defined.
- [x] Exception-handling rules are defined.
- [x] Artificial data correction is prohibited.
- [x] Source-to-dashboard traceability is defined.
- [x] KPI change control is defined.
- [x] Analytical-period governance is defined.
- [x] Population and cross-grain governance are defined.
- [x] Limitation-to-finding escalation rules are defined.
- [x] Management-action governance is defined.
- [x] Python, Excel, Power Query, and Power BI/DAX responsibilities are defined.
- [x] Reproducibility and source-change controls are defined.
- [x] Dashboard validation requirements are defined.
- [x] Analytical-claim governance is defined.
- [x] Supporting-KPI promotion rules are defined.
- [x] Dashboard scope boundaries are defined.
- [x] Data-quality and methodology presentation requirements are defined.

**STATUS: STAGE 3.8.9 — DASHBOARD DATA-QUALITY, LIMITATION & GOVERNANCE DESIGN: APPROVED FOR IMPLEMENTATION AFTER ANALYTICAL EXECUTION**

---### 3.8.10 Dashboard Implementation Readiness & Stage 3.8 Completion Gate
---

This section establishes the final readiness criteria for converting the approved Stage 3.8 dashboard architecture into the BI Engineering workflow.

Stage 3.8 is considered design-complete only when the dashboard structure, KPI hierarchy, interaction model, visual standards, data-quality governance, analytical traceability, and implementation boundaries are sufficiently defined to support controlled implementation without inventing analytical findings.

#### 3.8.10.1 Purpose of the Completion Gate

The Stage 3.8 completion gate establishes whether the approved business-design framework has been successfully translated into the implemented dashboard architecture and remains consistent with the validated analytical foundation.

The original gate was defined as a **design-readiness gate** for transition into BI Engineering. Following implementation, this section is retained as the controlled record of that design baseline and is updated to reflect the implemented solution.

The completed Stage 3.8 state therefore validates:

* business-question coverage;
* approved KPI definitions and validation status;
* analytical scope and population controls;
* dashboard page architecture;
* interaction and navigation design;
* visual presentation standards;
* data-quality and metric-grain limitations;
* management finding presentation;
* analytical traceability; and
* controlled handoff between business design and BI engineering.

The implementation does not replace the original business-design rationale. Instead, the implemented dashboard provides the realized presentation layer for the approved business and analytical design.

Therefore, the project lifecycle represented by this document is:

**Validated Business Design → Analytical Execution → BI Implementation → Dashboard QA → Management Presentation**

Stage 3.8 should consequently be interpreted as the **approved business and dashboard design baseline**, with the final implementation state reconciled against that baseline.


#### 3.8.10.2 Stage 3.8 Design Baseline
---

The dashboard design is based on the approved business and analytical foundation established through Stage 3.

Validated baseline context includes:

- Completed Loads: 85,410
- Completed Trips: 85,410
- Total Revenue: 262,525,800.29
- On-Time Delivery: 44.61%
- Active Fleet: 92
- Total Fuel Consumption: 24,493,560.80 gallons
- Fuel Cost: 95,499,723.14
- Fleet Utilization: Source-defined
- Average Fuel Efficiency: Source-defined

Core analytical period:

**2022-01-01 through 2024-12-31**

These values provide the approved management baseline for dashboard design.

They do not constitute performance targets or business thresholds.

#### 3.8.10.3 Approved Dashboard Architecture
---

The approved dashboard architecture consists of five primary pages.

**01 — Executive Control Tower**

Primary question: Q1

Purpose:

Provide management with the overall operational baseline and navigation toward deeper analysis.

**02 — Operations Diagnostics**

Primary questions: Q2, Q3

Supporting questions where appropriate: Q8, Q14, Q15

Purpose:

Investigate delivery reliability and meaningful operational differences.

**03 — Fleet, Fuel & Cost Intelligence**

Primary questions: Q4, Q5

Supporting questions where appropriate: Q10, Q12, Q13

Purpose:

Evaluate fleet utilization, fuel consumption, fuel cost, and efficiency patterns.

**04 — Route & Facility Intelligence**

Primary questions: Q6, Q7

Supporting questions where appropriate: Q3, Q8, Q9

Purpose:

Compare route and facility performance using multiple validated measures.

**05 — Management Findings & Action**

Primary questions: Q1–Q7

Supporting evidence: Q8–Q15 where validated

Purpose:

Communicate validated findings, evidence, limitations, business impact, and management action.

#### 3.8.10.4 Business Question Coverage Gate
---

The dashboard architecture must provide a clear presentation path for the prioritized business questions.

**Core Management Questions**

- Q1 — Overall operational performance
- Q2 — Delivery reliability
- Q3 — Delivery-performance differences
- Q4 — Fleet utilization
- Q5 — Operating cost and fuel efficiency
- Q6 — Route performance
- Q7 — Facility investigation

These questions form the primary management scope.

**Supporting Diagnostic Questions**

Q8–Q15 may support deeper investigation where Stage 5 analysis establishes relevance.

**Exploratory Questions**

Q16–Q19 remain secondary and must not displace the core management questions.

The dashboard must therefore remain focused on the approved business priorities rather than attempting to visualize every available dataset field.

#### 3.8.10.5 KPI Readiness Gate
---

All nine P1 KPIs have completed Stage 3.5 validation and received approval status.

Approved P1 portfolio:

1. Completed Loads
2. Completed Trips
3. Total Revenue
4. On-Time Delivery %
5. Fleet Utilization %
6. Active Fleet Count
7. Total Fuel Consumption
8. Average Fuel Efficiency
9. Fuel Cost

The dashboard may therefore proceed to KPI implementation planning.

However, approved does not mean limitation-free.

The following approved-with-limitation controls remain applicable:

- Completed Trips — 5.80% missing at least one driver/truck/trailer assignment.
- On-Time Delivery — source-defined ±120-minute tolerance.
- Fleet Utilization — 436 truck-month records above 100%.
- Fuel measures — incomplete identifier and trip linkage.
- Average Fuel Efficiency — source-defined methodology.

#### 3.8.10.6 Analytical Scope Readiness
---

The dashboard design follows the approved analytical scope.

Core period:

**2022-01-01 → 2024-12-31**

Primary analytical dimensions:

- Time
- Route
- Facility
- Driver
- Truck
- Trailer
- Customer
- Relevant operational categories

The actual dimensions that demonstrate meaningful differences remain dependent on Stage 5 execution.

No route, facility, driver, truck, or customer should be pre-classified as high-performing, low-performing, problematic, or priority based only on design assumptions.

#### 3.8.10.7 Data-Quality Readiness Gate
---

The dashboard design incorporates the validated limitations identified during Stage 1 and Stage 2.

Required governance controls include:

- 4,952 trips (5.80%) missing at least one driver/truck/trailer assignment.
- 486 trips (0.569%) with delivery-before-pickup timestamps.
- 436 truck-month records (13.16%) with utilization above 100%.
- Maximum observed utilization of 148.40%.
- 3,880 fuel purchases (1.98%) missing truck_id.
- Approximately 2.03% of fuel purchases missing driver_id.
- 8,471 completed trips without a corresponding fuel purchase.
- Source-defined On-Time Delivery tolerance.
- Source-defined Average Fuel Efficiency methodology.

These findings must not be silently removed or corrected during implementation.

#### 3.8.10.8 Grain Readiness Gate
---

The dashboard implementation must preserve the validated analytical grain.

| Measure | Required Analytical Grain |
|---|---|
| Completed Loads | Load |
| Completed Trips | Trip |
| On-Time Delivery | Delivery-event logic |
| Fleet Utilization | Truck-month |
| Fuel Consumption | Fuel-purchase transaction |
| Fuel Cost | Fuel-purchase transaction |
| Average Fuel Efficiency | Source-defined |
| Revenue | Validated revenue population |

The implementation must prevent transaction multiplication and inappropriate aggregation across related tables.

A visual that produces a technically valid Power BI result but violates the intended analytical grain must not be approved.

#### 3.8.10.9 Interaction Readiness Gate
---

The dashboard interaction architecture is approved for implementation.

Required capabilities include:

- controlled page navigation,
- appropriate slicers,
- controlled cross-filtering,
- intentional cross-highlighting,
- drillthrough where analytically justified,
- back navigation,
- reset/clear-context controls,
- controlled bookmarks where useful.

All interactions must preserve:

- analytical period,
- population,
- grain,
- KPI definition,
- finding context.

Interaction behavior must be validated during BI Engineering and Dashboard QA.

#### 3.8.10.10 Visual Design Readiness Gate
---

The visual design standards established in Section 3.8.8 are approved.

Implementation must preserve:

- KPI hierarchy,
- appropriate visual selection,
- readable units,
- meaningful comparisons,
- consistent formatting,
- accessibility,
- controlled conditional formatting,
- appropriate visual density,
- analytical language discipline.

Visual selection must remain dependent on the actual analytical results.

The dashboard must not be designed around hypothetical findings merely to complete a page layout.

#### 3.8.10.11 Management Findings Readiness Gate
---

The management findings layer has progressed from a structural readiness state to an implemented, evidence-based presentation layer.

Page 05 is designed to consolidate validated operational signals into a management-oriented view rather than introduce new KPI definitions or unsupported conclusions.

The approved finding framework remains:

**FINDING → EVIDENCE → DIAGNOSTIC EVIDENCE → DATA LIMITATION → BUSINESS IMPACT → MANAGEMENT ACTION**

The implemented management findings are derived from the validated analytical and KPI foundation and are presented with appropriate distinction between:

* directly measured operational results;
* diagnostic observations;
* documented data-quality exceptions;
* metric-grain or filter-responsiveness limitations; and
* management actions that logically follow from the available evidence.

The management findings layer must not introduce unsupported claims about:

* problem routes;
* problem facilities;
* root causes;
* inefficient assets;
* underperforming drivers;
* recurring seasonal patterns; or
* management recommendations

unless the relevant conclusion is supported by the executed analytical evidence.

Where the available data does not support a definitive causal conclusion, the dashboard must present the observed signal together with the applicable limitation rather than infer causation.

Accordingly, Page 05 serves as the final management interpretation layer of the implemented dashboard while remaining governed by the same evidence, KPI definitions, scope controls, and limitations established throughout the business-design process.


#### 3.8.10.12 Analytical Traceability
---

Every major dashboard output must remain traceable to its originating business requirement, approved metric definition, analytical scope, and supporting evidence.

The implemented traceability framework is:

**Business Question → KPI / Analytical Measure → Analytical Workstream → Evidence / Validation → Power Query / Model → DAX / Measure Implementation → Visual → Finding → Management Action**

Where Python or Excel analysis is used for independent validation, diagnostic investigation, reconciliation, segmentation, or evidence development, those outputs form part of the supporting analytical evidence rather than replacing the governed BI implementation.

This traceability model provides an audit path from the original business requirement through analytical execution and dashboard presentation.

Traceability must preserve:

* the approved business question;
* the approved KPI definition;
* the applicable analytical population;
* the metric grain;
* relevant data-quality limitations;
* supporting analytical evidence;
* the implemented dashboard measure or output;
* the visual interpretation; and
* the resulting management implication where one is supported by the evidence.

The dashboard must not become the sole repository of analytical reasoning.

Where a dashboard metric has a documented grain, population, or filter-responsiveness limitation, that limitation remains part of the metric's interpretation and must not be removed merely to produce more responsive visuals.

The final management layer must therefore remain downstream of validated evidence and must distinguish measured results from diagnostic interpretation and management action.


#### 3.8.10.13 Toolchain Governance and Implementation
---

The project is governed by the following analytical and BI toolchain:

**Python → Excel → Power Query → Power BI/DAX**

The tools have distinct responsibilities and are not interchangeable.

**Python**

Used where applicable for:

* independent calculation;
* analytical validation;
* segmentation;
* exception analysis; and
* reconciliation.

Python outputs are treated as supporting analytical evidence and validation artifacts rather than as the final dashboard implementation layer.

**Excel**

Used where applicable for:

* PivotTables;
* detailed business analysis;
* comparisons;
* contribution analysis;
* evidence tables; and
* finding validation.

Excel provides a practical analytical and evidence-review layer between raw analytical investigation and BI presentation where required.

**Power Query**

Responsible for:

* controlled transformation;
* data preparation; and
* model preparation.

**Power BI/DAX**

Responsible for:

* approved KPI implementation;
* interactive analysis;
* dashboard presentation;
* navigation;
* management-oriented finding communication; and
* controlled presentation of validated analytical outputs.

SQL remains a supporting analytical capability and must not displace the governed analyst workflow established for this project.

The toolchain should therefore be interpreted as a controlled division of responsibilities rather than a requirement that every tool be used for every analytical task.

The final dashboard remains governed by the approved business definitions, analytical scope, validation evidence, metric-grain rules, and documented limitations established earlier in this business-design document.


#### 3.8.10.14 BI Engineering Handoff Requirements
---

The Stage 3.8 design baseline established the requirements to be implemented during BI Engineering.

The required implementation inputs were:

* approved business questions;
* approved KPI dictionary;
* KPI validation and approval record;
* analytical scope;
* diagnostic investigation framework;
* final analytical plan;
* dashboard architecture;
* interaction design;
* visual standards;
* data-quality governance;
* management finding framework; and
* analytical traceability model.

These artifacts form the business-design specification against which the implemented BI solution is reconciled.

The completed BI implementation must preserve the approved:

* business questions;
* KPI definitions;
* analytical populations;
* metric grains;
* interpretation rules;
* data-quality controls;
* dashboard architecture; and
* management finding principles.

Where implementation required a presentation-level adjustment, the change must not silently redefine the underlying business requirement or KPI meaning.

Any material deviation from the approved business definition must be documented through the project's change-control process and reconciled against the implemented BI solution.

The handoff requirement is therefore treated as a completed design-to-implementation contract rather than an outstanding Stage 3.8 dependency.


#### 3.8.10.15 Change-Control Gate
---

Any material change after Stage 3.8 closure must be classified.

**Minor Implementation Change**

Does not alter:

- KPI definition,
- analytical population,
- business question,
- grain,
- interpretation.

May proceed through implementation documentation.

**Material Analytical Change**

Changes:

- KPI definition,
- population,
- grain,
- business question,
- analytical interpretation,
- finding classification.

Requires documented review and revalidation.

**Scope Change**

Introduces a new business objective, major KPI, analytical domain, or management decision requirement.

Requires formal scope review before implementation.

No material change should be introduced simply because it is convenient during Power BI development.

Following implementation, the same change-control principle continues to apply to dashboard refinements, KPI revisions, analytical-scope changes, and management-finding changes.

Implementation feedback may result in presentation or usability adjustments, but such adjustments must not silently change an approved business definition, metric grain, analytical population, or management interpretation.

Where an implementation change affects the meaning or interpretation of an approved output, the relevant business-design and BI-engineering documentation must be reconciled before the change is treated as final.

#### 3.8.10.16 Stage 3.8 Completion Validation
---

Stage 3.8 completion is validated by reconciling the approved business-design baseline against the implemented dashboard and the executed analytical workflow.

**Business Alignment**

* Does the implemented dashboard answer the prioritized business questions?
* Is management value clear from the final five-page architecture?
* Are management findings presented downstream of the approved analytical framework?

**KPI Alignment**

* Are the approved production KPIs implemented?
* Are KPI definitions consistent with the approved KPI dictionary?
* Are documented metric limitations and analytical grains preserved?
* Are supporting KPIs used consistently with their approved business purpose?

**Analytical Alignment**

* Is the dashboard downstream of the executed analytical workflow?
* Are findings supported by the available analytical evidence?
* Are descriptive results distinguished from diagnostic interpretation and management action?
* Are unsupported causal conclusions avoided?

**Data Alignment**

* Are known data-quality findings incorporated into the interpretation of the dashboard?
* Is raw source data still treated as immutable?
* Are documented scope and population controls preserved?

**Grain Alignment**

* Are measures interpreted according to their approved analytical grains?
* Are cross-grain aggregation risks documented where relevant?
* Are fleet-level metrics distinguished from load-level or trip-level measures where the underlying source grain differs?

**Interaction Alignment**

* Do implemented filters and navigation preserve the intended analytical context?
* Are documented filter-responsiveness limitations understood and preserved?
* Can users return to the intended default dashboard state?

**Visual Alignment**

* Does each implemented visual have a defined business or diagnostic purpose?
* Are visual titles, labels, and comparisons evidence-appropriate?
* Does the visual design remain consistent with the approved dashboard architecture?

**Governance Alignment**

* Is source-to-dashboard traceability preserved?
* Are implementation changes controlled?
* Are metric definitions protected from presentation-driven changes?
* Are known limitations documented rather than concealed through implementation adjustments?

**Completion Status**

Stage 3.8 is considered complete when the implemented dashboard remains materially consistent with the approved business-design baseline, validated analytical evidence, KPI governance, and documented limitations.

The completion gate therefore represents **post-implementation reconciliation**, not an outstanding readiness requirement for dashboard construction.


#### 3.8.10.17 Stage 3.8 Final Readiness Checklist
---

**Business Design**

- [x] Business context established.
- [x] Business objectives established.
- [x] Prioritized business questions established.
- [x] KPI dictionary established.
- [x] KPI validation completed.
- [x] Diagnostic investigation design completed.
- [x] Final analytical plan completed.

**Dashboard Design**

- [x] Dashboard architecture established.
- [x] Executive Control Tower defined.
- [x] Operations Diagnostics defined.
- [x] Fleet, Fuel & Cost Intelligence defined.
- [x] Route & Facility Intelligence defined.
- [x] Management Findings & Action defined.

**Interaction**

- [x] Navigation architecture defined.
- [x] Slicer governance defined.
- [x] Cross-filtering governance defined.
- [x] Drillthrough standards defined.
- [x] Reset/context controls defined.

**Visual Design**

- [x] KPI hierarchy defined.
- [x] Visual-selection standards defined.
- [x] Comparison standards defined.
- [x] Contribution standards defined.
- [x] Accessibility standards defined.
- [x] Visual QA standards defined.

**Governance**

- [x] Data-quality limitations defined.
- [x] Grain controls defined.
- [x] Population controls defined.
- [x] KPI change control defined.
- [x] Finding governance defined.
- [x] Analytical traceability defined.
- [x] Toolchain responsibilities defined.

#### 3.8.10.18 Items Intentionally Deferred to Later Stages
---

The following items were intentionally deferred from the original Stage 3.8
design gate because they required execution against the validated data,
analytical populations, semantic model, and implemented BI environment rather
than specification alone:

* actual route findings,
* actual facility findings,
* actual fleet-performance findings,
* actual fuel-efficiency findings,
* actual driver/asset findings,
* actual time-based findings,
* actual diagnostic factors,
* final management findings,
* final recommendations,
* final visual selection based on discovered patterns,
* final DAX implementation,
* final Power BI formatting,
* final dashboard QA results.

These items required execution rather than design.

This distinction was appropriate at the original Stage 3.8 gate because the
business-design document defined the required analytical and visualization
framework without prematurely treating hypothetical findings as established
evidence.

The deferred work was subsequently taken into analytical and BI execution.
The implemented solution now contains the approved KPI portfolio, the
five-page dashboard architecture, production Power BI measures, documented
filter and grain behavior, validated metric outputs, analytical findings,
and documented data-quality limitations.

The KPI implementation was reconciled against the approved business
definitions and validation baselines. Key reconciled results include:

* **Completed Loads: 85,410**
* **Completed Trips: 85,410**
* **Total Revenue: 262,525,800.29**
* **On-Time Delivery: 44.61%**
* **Fleet Utilization: 83.04%**
* **Average Trip Duration: 25.01 hours**
* **Fuel Cost per Gallon: 6.50**
* **Trips per Active Truck: 7.01**
* **Cost per Load: approximately $1.12K**

In particular, **Total Revenue of 262,525,800.29 reconciles to the approved
business-design baseline and the implemented `P1 Total Revenue` measure with
a reconciliation difference of 0**. This establishes the production measure
as consistent with the approved KPI definition rather than treating the
dashboard output as an independent or newly defined business metric.

The downstream execution also confirmed analytical limitations that must
remain visible in interpretation:

* **4,952 completed trips / 5.80%** lack at least one driver, truck, or
  trailer assignment;
* **486 completed trips / 0.569%** contain pickup/delivery timestamp
  reversals;
* fleet-level measures operate at different analytical grain from the
  load/trip KPI population;
* source-defined fleet utilization and fuel-efficiency measures retain
  their documented source limitations; and
* source-defined on-time classification remains governed by the validated
  observed rule and its documented business-policy limitation.

Accordingly, this section remains a record of the **original Stage 3.8
design boundary**, rather than a statement that these activities are still
outstanding.

The original deferrals have therefore transitioned from **design-stage
dependencies** to **downstream execution evidence**. Their final treatment
belongs to the corresponding BI engineering, analytical validation,
dashboard QA, and management-presentation documentation rather than being
reintroduced as unresolved Stage 3.8 requirements.


#### 3.8.10.19 Stage 3.8 Completion Decision
---

The Stage 3.8 design gate is considered **passed and closed** because the
required business-design, analytical-scope, visualization, interaction,
governance, and handoff controls were established before downstream BI
implementation.

The completion decision is supported by the following controls:

1. Business questions are defined and prioritized.
2. KPI definitions are approved and governed by the validated KPI portfolio.
3. Analytical scope and reporting period are controlled.
4. Diagnostic and investigation requirements are established.
5. The dashboard architecture is defined and subsequently implemented as a
   **five-page Power BI solution**.
6. Interaction behavior and known filter limitations are documented and
   tested during implementation.
7. Visual standards and dashboard design rules are defined and applied.
8. Data-quality limitations are incorporated into KPI interpretation and
   downstream analysis.
9. Cross-grain risks are controlled through explicit fact/dimension grain,
   relationship, and KPI-population decisions.
10. Management-finding presentation requirements are defined and carried into
    the implemented management-oriented dashboard structure.
11. Analytical traceability is maintained from business question through KPI,
    analysis, implementation, and validation.
12. Tool responsibilities across **Python → Excel → Power Query → Power
    BI/DAX** are explicit.
13. Stage 5 analytical interpretation remains distinct from the original
    Stage 3 design specification, while completed analytical evidence is
    documented in the appropriate downstream project artifacts.
14. BI Engineering handoff requirements were established and subsequently
    used as implementation controls.
15. Material changes remain subject to controlled review and documentation.

The subsequent implementation and reconciliation work provides evidence that
the Stage 3.8 design was sufficiently specific to support production BI
execution.

The validated implementation includes, among other measures:

* **Completed Loads: 85,410**
* **Completed Trips: 85,410**
* **Total Revenue: 262,525,800.29**
* **On-Time Delivery: 44.61%**
* **Fleet Utilization: 83.04%**
* **Average Trip Duration: 25.01 hours**
* **Fuel Cost per Gallon: 6.50**
* **Trips per Active Truck: 7.01**
* **Cost per Load: approximately $1.12K**

The most material revenue reconciliation is explicit:

> **Total Revenue = 262,525,800.29; reconciliation difference = 0.**

This confirms that the implemented `P1 Total Revenue` measure is consistent
with the approved business definition and validated baseline rather than
representing a newly introduced dashboard interpretation.

The completion decision therefore distinguishes two states:

**Design completion:**
Stage 3.8 established the required business and visualization specification
and passed its design gate before downstream implementation.

**Execution evidence:**
The subsequent BI and analytical workflow demonstrated that the specification
could be implemented, reconciled, and governed using the validated data model
and KPI definitions.

Accordingly, Stage 3.8 is not reopened merely because implementation later
produced additional evidence. Any post-implementation refinement is governed
through change control and belongs to the relevant downstream BI, analytical,
QA, or documentation stage.

**DECISION: STAGE 3.8 — COMPLETE / GATED / PASSED**

**Downstream state: BI implementation and reconciliation completed against
the Stage 3 business-design contract.**


#### 3.8.10.20 Final Stage 3.8 Status

---

Stage 3.8 established and gated the complete dashboard and presentation
design framework grounded in the validated business requirements, approved
KPI portfolio, analytical scope, data-quality findings, grain controls,
interaction requirements, visual standards, and governance controls
established through Stage 3.

The Stage 3.8 design was subsequently used as the control specification for
downstream BI implementation.

The implemented solution now contains:

* a **five-page Power BI dashboard architecture**;
* the approved KPI layer and supporting analytical measures;
* the governed semantic model and relationship structure;
* documented KPI grain and population controls;
* validated production KPI outputs;
* documented data-quality limitations;
* tested dashboard interaction and filter behavior;
* management-oriented diagnostic and decision-support views; and
* post-implementation reconciliation evidence.

The implementation also confirmed that the business-design KPI definitions
remain traceable to the production measures. For example, **Total Revenue
reconciled to 262,525,800.29 with a reconciliation difference of 0**, while
the approved completed-load population remained **85,410**.

Therefore, Stage 3.8 should no longer be described as merely preparing the
project for BI Engineering. Its design gate was completed before
implementation, and its requirements have subsequently been carried into
the implemented BI solution.

The controlled project sequence is now:

**Validated Business Design → BI Engineering → KPI Implementation →
Reconciliation & QA → Analytical Interpretation → Final Management
Presentation**

Any further refinement to the Stage 3.8 design is now treated as a
controlled downstream change rather than an outstanding Stage 3.8
requirement.

**STATUS: STAGE 3.8 — COMPLETE / GATED / IMPLEMENTED THROUGH DOWNSTREAM BI EXECUTION**

---


