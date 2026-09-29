# Operational Findings

## 1. Delivery Performance

### 1.1 Overall Delivery Performance

The 2022–2024 dataset records **44.61% on-time delivery**, with a corresponding **55.39% late-delivery rate**.

The average delivery delay is **240.66 minutes**, equivalent to approximately four hours.

### 1.2 Finding

The aggregate delivery-performance baseline indicates that late deliveries represent a substantial share of observed delivery events, while the average delay provides evidence that the issue is not limited to isolated late records.

The combination of:

* 44.61% on-time delivery
* 55.39% late delivery
* 240.66-minute average delivery delay

establishes **delivery execution as a material operational area for diagnostic analysis**.

### 1.3 Diagnostic Direction

The aggregate KPI does not identify where the performance variation occurs. Therefore, the analysis moves from the overall baseline to dimensional diagnostics, particularly:

* destination-state delivery performance
* destination-state late-delivery rate
* average delivery delay by destination
* relationship between delivery delay and trip distance
* monthly movement in loads and delivery performance

This allows the analysis to distinguish between an overall network-level condition and variation concentrated within particular operating segments.

### 1.4 Business Interpretation

The observed delivery-performance level indicates that management review should focus on **where delivery performance differs across the network and how large those differences are**, rather than relying solely on the aggregate on-time percentage.

Destination-level analysis is particularly relevant because the dataset contains route and destination information that can be used to investigate geographic variation.

However, the available aggregate KPI does **not establish the underlying cause of late delivery**. Potential explanations such as route characteristics, distance, facility conditions, scheduling, or other operational factors require separate evidence.

### 1.5 Analytical Limitation

The dataset supports identification of delivery-performance outcomes and their variation across available dimensions. It does not, by itself, establish a causal explanation for late deliveries.

Accordingly, this analysis treats late delivery as an **observed operational condition requiring diagnosis**, rather than attributing it to a specific operational cause without supporting evidence.

---

## 2. Delivery Event Integrity

### 2.1 Evidence

The delivery-event validation identified:

* **170,820 delivery-event records**
* **486 pickup → delivery sequence reversals**
* **0 dispatch-before-load exceptions**

The pickup-to-delivery reversal rate is approximately **0.57% of delivery-event sequences**.

### 2.2 Finding

The validation indicates that the delivery-event data is **not completely sequence-consistent**.

The 486 pickup → delivery reversals represent a relatively small proportion of the observed delivery-event population, but they are material from a data-control perspective because event ordering is relevant when interpreting operational execution.

At the same time, the validation identified **no dispatch-before-load exceptions**, providing evidence that this specific sequencing condition was not observed in the validated dataset.

### 2.3 Business Interpretation

The reversal records should be treated as a **data-quality exception rather than automatically as an operational failure**.

A reversed event sequence may reflect an issue in event recording, timestamp sequencing, source-system behavior, or another data-generation condition. The available validation establishes that the sequence is inconsistent; it does not establish why the inconsistency occurred.

For portfolio analysis purposes, this distinction is important because operational conclusions should not be based on an assumption that every anomalous record represents an actual field-level event.

### 2.4 Analytical Implication

Delivery-performance analysis should therefore be interpreted alongside the validated event-quality condition.

The presence of 486 sequence reversals does not invalidate the overall delivery-performance analysis, but it represents a documented control exception that should remain visible to a management or data-quality reviewer.

### 2.5 Evidence Boundary

The analysis confirms:

**Observed:** 486 pickup → delivery reversals.

It does not claim:

**Unproven:** that these reversals caused late deliveries, increased delivery delay, or represent actual operational sequence failures.

Any such conclusion would require additional record-level investigation.

---

## 3. Resource Assignment Completeness

### 3.1 Evidence

The trip-level validation identified **4,952 trips** with at least one missing driver, truck, or trailer assignment.

Against the **85,410 trips** in the analysis population, this represents approximately **5.80%** of trips.

The missing assignments are distributed across the three resource fields as follows:

| Assignment Field                           | Missing Records |
| ------------------------------------------ | --------------: |
| Driver                                     |           1,714 |
| Truck                                      |           1,672 |
| Trailer                                    |           1,680 |
| Trips with at least one missing assignment |           4,952 |

These figures represent different validation views of the same trip population; the three field-level counts should therefore not be summed to estimate the number of affected trips.

### 3.2 Finding

Approximately **5.8% of trips do not have a complete driver/truck/trailer assignment**.

This creates a measurable limitation for analyses that depend on complete resource attribution, particularly driver-, truck-, or trailer-level operational analysis.

### 3.3 Business Interpretation

The missing assignments reduce the ability to consistently attribute operational activity to specific resources.

For example, analyses involving:

* truck productivity
* driver productivity
* trailer utilization
* resource-level fuel or operating performance

may have incomplete coverage where the corresponding assignment is missing.

The finding does **not** establish that the affected trips represent operational execution failures. It establishes that the available data does not contain complete resource attribution for those records.

### 3.4 Analytical Implication

Aggregate load and trip measures can still be analyzed across the full validated population, but resource-level findings should be interpreted with awareness of assignment completeness.

This distinction is particularly important when moving from network-level KPIs to truck- or driver-level diagnostics.

### 3.5 Evidence Boundary

The analysis confirms the presence and magnitude of missing resource assignments.

It does not establish:

* why the assignments are missing
* whether the underlying resources actually existed
* whether missing assignments affected operational performance
* whether the records represent source-system, process, or data-entry issues

Those would require additional source-system or record-level investigation.

---

## 4. Delivery Delay and Trip Distance

### 4.1 Analytical Question

Does delivery delay vary with trip distance across the operating network?

The purpose of this diagnostic is to examine whether longer trips are associated with different delivery-delay patterns, without assuming that distance is the cause of delay.

### 4.2 Evidence

The overall operating baseline shows:

* **Average trip distance:** approximately 1.43K miles
* **Average delivery delay:** approximately 240.66 minutes

The analysis also examines destination-state observations using trip distance and delivery-delay measures, with completed-load volume used as contextual scale.

### 4.3 Finding

The relationship between trip distance and delivery delay is **not treated as a causal relationship from the aggregate KPI values alone**.

The scatter analysis provides a diagnostic view of how destination-level observations differ across the two measures. This allows higher-delay and lower-delay operating segments to be identified while retaining trip-distance context.

The analysis therefore uses the relationship as an **investigative signal**, rather than concluding that longer distance causes delivery delay.

### 4.4 Business Interpretation

Trip distance is a relevant operational dimension because longer transportation movements may involve different operating conditions, but the available analysis does not isolate distance from other factors.

Differences in observed delivery delay may also reflect other dimensions available in the dataset, including destination, route, facility, scheduling, and shipment characteristics.

Consequently, distance should be considered **one diagnostic dimension among several**, rather than a standalone explanation for delivery performance.

### 4.5 Analytical Implication

The distance-delay relationship is useful for identifying operating segments that warrant further investigation.

A segment exhibiting both relatively high trip distance and relatively high delivery delay may deserve additional diagnostic review, but such a pattern should not be interpreted as proof of a distance-driven service problem.

### 4.6 Evidence Boundary

The analysis establishes the observed values and their dimensional relationship.

It does not establish:

> Longer trips cause higher delivery delays.

Establishing causality would require additional controls and analysis beyond the available descriptive and diagnostic evidence.

---

## 5. Monthly Operating Performance

### 5.1 Analytical Question

How does operating volume and delivery performance evolve over the 2022–2024 analysis period?

The purpose is to distinguish the overall three-year baseline from changes observed across individual months.

### 5.2 Analytical Measures

The monthly analysis combines:

* Completed load volume
* On-time delivery percentage
* Calendar month

Using both volume and service performance prevents a change in delivery performance from being interpreted without understanding the operating volume during the same period.

### 5.3 Finding

Monthly analysis provides a time-based diagnostic of how operating volume and delivery performance move throughout the analysis period.

The aggregate 2022–2024 values should therefore be treated as a **summary baseline**, while monthly observations provide the appropriate evidence for identifying periods of relative change or operational variation.

### 5.4 Business Interpretation

A change in the overall delivery-performance KPI can result from variation across individual months. Examining the monthly series helps identify whether performance is relatively stable or whether material fluctuations occur during specific periods.

Load volume is retained alongside on-time delivery because service performance should be interpreted in the context of the amount of operational activity being handled.

### 5.5 Analytical Implication

Monthly patterns can be used to identify periods that warrant deeper investigation into:

* destination-level performance
* delivery delay
* route activity
* operating volume
* other dimensions available in the dataset

This creates a progression from **time-based signal → dimensional diagnosis**, rather than treating a monthly movement as an explanation by itself.

### 5.6 Evidence Boundary

The monthly analysis identifies changes and patterns in the observed data.

It does not establish that a particular month was affected by a specific external event, staffing condition, weather event, policy, customer behavior, or other cause because such explanatory variables are not established in the available dataset.

---

## 6. Fleet, Fuel & Operating Efficiency

### 6.1 Analytical Question

How do fleet utilization, fuel efficiency, fuel cost, and idle time characterize the operating-efficiency profile of the fleet?

The objective is to examine the measures together because no single efficiency KPI fully describes fleet performance.

### 6.2 Evidence

The validated KPI baseline includes:

| Measure                    | Observed Value |
| -------------------------- | -------------: |
| Fleet Utilization          |         83.04% |
| Average Fuel Efficiency    |       6.50 MPG |
| Average Idle Time per Trip |        7.01 hr |
| Fuel Cost per Mile         |           0.78 |
| Fuel Cost per Load         |          1.12K |
| Total Maintenance Cost     |          5.73M |

Fuel purchases also provide transaction-level fuel-cost and consumption information for the operating period.

### 6.3 Finding

The dataset provides a sufficiently broad efficiency profile to examine **utilization, fuel consumption, fuel cost, and idle time as related but distinct operating measures**.

The presence of both distance-normalized and load-normalized fuel-cost measures allows fuel exposure to be evaluated from more than one operational perspective.

### 6.4 Idle Time Diagnostic

Average idle time is approximately **7.01 hours per trip**.

Idle time is therefore a relevant diagnostic measure when evaluating fuel-cost efficiency, particularly when comparing truck-level observations.

The fleet analysis uses the relationship between idle time and fuel cost per mile to identify differences between truck-level observations.

However, an observed relationship does not establish that idle time caused a particular fuel-cost outcome.

### 6.5 Fuel Efficiency Diagnostic

Average fuel efficiency is approximately **6.50 MPG**.

This measure provides a fleet-level reference point for examining variation across truck observations.

Truck-level comparison is more informative than treating the fleet average as evidence of uniform performance, because the average can conceal differences between individual operating units.

### 6.6 Cost Interpretation

Fuel cost per mile of approximately **0.78** and fuel cost per load of approximately **1.12K** provide two different normalization perspectives:

* **Fuel cost per mile** relates cost to transportation distance.
* **Fuel cost per load** relates cost to shipment activity.

Neither measure should be interpreted as a direct measure of profitability because revenue, route characteristics, load characteristics, and other operating costs also influence commercial performance.

### 6.7 Maintenance Context

Total maintenance cost is approximately **5.73M**.

Maintenance cost is analyzed as a separate operating-cost component rather than being automatically classified as inefficiency.

The appropriate analytical question is how maintenance expenditure is distributed across maintenance types and fleet activity, rather than whether the absolute expenditure is inherently excessive.

### 6.8 Evidence Boundary

The available data supports descriptive and diagnostic analysis of fleet utilization, fuel efficiency, idle time, fuel cost, and maintenance expenditure.

It does not independently establish:

* that idle time causes higher fuel costs
* that lower MPG is caused by vehicle condition
* that maintenance expenditure is excessive
* that a particular truck is operationally inefficient without appropriate comparative context

Such conclusions would require additional evidence or controlled analysis.

---

## 7. Route Economics & Commercial Efficiency

### 7.1 Analytical Question

How does commercial performance vary across routes when revenue is considered alongside transportation activity?

The objective is to distinguish **revenue concentration** from **revenue efficiency**.

### 7.2 Evidence

The validated commercial baseline includes:

* **Total Revenue:** approximately 174.81M
* **Revenue per Load:** approximately 2.05K
* **Revenue per Trip:** approximately 3,073.71
* **Revenue per Mile:** approximately 2.15 per mile
* **58 routes** in the route dimension

These measures provide complementary views of network economics.

### 7.3 Finding

The route analysis demonstrates that overall revenue should not be interpreted as a standalone measure of route performance.

A route can contribute substantial total revenue because of its operating volume, while another route may generate stronger normalized revenue relative to transportation distance or activity.

For this reason, the analysis considers:

* route revenue contribution
* completed-load volume
* average trip distance
* revenue per mile
* revenue per trip

together when examining route-level variation.

### 7.4 Revenue Contribution

Destination-state and route-level analysis provides a way to examine how the approximately **174.81M** aggregate revenue figure is distributed across the network.

The analysis therefore focuses on **revenue concentration and contribution**, rather than assuming that the highest-revenue destination or route is automatically the most efficient.

High revenue contribution may reflect higher shipment volume, stronger route activity, or other operating characteristics.

### 7.5 Route Efficiency Diagnostic

Revenue per mile provides a distance-normalized commercial measure.

The route diagnostic compares average trip distance with revenue per mile to identify differences in commercial performance across the 58-route network.

This distinction is important:

> **Revenue contribution measures scale; revenue per mile measures normalized commercial yield.**

A route should therefore not be characterized solely by its total revenue contribution.

### 7.6 Business Interpretation

The route analysis provides management with two complementary questions:

1. **Where is revenue being generated?**
2. **How efficiently is transportation distance being converted into revenue?**

Examining both questions provides a stronger commercial view than relying on aggregate revenue alone.

### 7.7 Evidence Boundary

The available data supports route-level descriptive and diagnostic comparisons.

It does not establish that a route with higher or lower revenue per mile is inherently more or less profitable because the available measure does not fully capture all route-specific operating costs, pricing strategy, customer mix, capacity constraints, or other commercial considerations.

---

## 8. Facility Operations

### 8.1 Analytical Question

How does operational activity vary across facilities in the network?

The objective is to examine facility-level differences in the volume and commercial activity associated with delivery events.

### 8.2 Evidence

The dataset contains **50 facilities** and **170,820 delivery-event records**.

Facility analysis uses delivery-event activity as the operational link to transportation activity and evaluates facility-associated:

* revenue
* loads
* pieces
* shipment weight

### 8.3 Finding

Facility-level activity is not directly represented through a simple facility-to-load relationship in the analytical model.

Facility analysis therefore requires the operational path:

**Facility → Delivery Event → Trip → Load**

This allows facility-associated loads and commercial measures to be evaluated without creating an unsupported direct facility-to-load relationship.

### 8.4 Facility Activity

Facility-level analysis provides a view of how operational volume and commercial activity are distributed across the network.

The measures considered include:

* Facility Revenue
* Facility Loads
* Facility Pieces
* Facility Weight

These measures provide complementary perspectives because a facility handling more loads does not necessarily handle the same shipment weight or revenue profile as another facility.

### 8.5 Business Interpretation

Facility analysis is primarily a **network-operations diagnostic**.

Differences in facility revenue, load volume, pieces, or weight can identify facilities that warrant further operational review.

However, higher activity should not automatically be interpreted as better or worse facility performance. Activity levels may reflect the role, location, throughput requirements, or shipment mix of each facility.

### 8.6 Analytical Implication

The facility diagnostic can support management investigation into:

* concentration of operational volume
* high-throughput facilities
* differences between shipment volume and handled weight
* differences between operational activity and associated revenue

These signals are intended to identify areas for further investigation rather than establish facility-level causality or efficiency without additional operational benchmarks.

### 8.7 Evidence Boundary

Facility-level revenue and activity measures are derived through the validated delivery-event → trip → load analytical path.

The analysis does not claim that a facility directly owns or generates all revenue associated with a linked load, nor does it establish facility profitability.

Facility-level differences should therefore be interpreted as **associated operational activity**, not as standalone measures of facility financial performance.

---

## 9. Operating Cost Structure

### 9.1 Analytical Question

What are the major components of the operating-cost profile, and how should their relative contribution be interpreted?

The objective is to understand **cost composition**, rather than label individual cost categories as inefficient solely because of their size.

### 9.2 Analytical Components

The operating-cost analysis separates five components:

* Fuel Cost
* Maintenance Cost
* Accessorial Charges
* Additional Charges
* Fuel Surcharge

This decomposition allows management to distinguish direct operating expenditure from other cost-related components represented in the dataset.

### 9.3 Finding

The cost structure is analyzed as a **composition problem** rather than through a single aggregate cost figure.

The relative contribution of each component provides a basis for identifying which categories account for a larger share of the observed operating-cost profile.

The analysis therefore uses the cost-component breakdown to determine **where cost exposure is concentrated**, while avoiding the assumption that concentration itself represents inefficiency.

### 9.4 Fuel Cost

Fuel cost is analyzed alongside:

* total fuel consumption
* fuel cost per gallon
* fuel cost per mile
* fuel cost per load
* average fuel efficiency
* idle time

This provides both absolute and normalized views of fuel exposure.

A high absolute fuel cost can result from greater operating volume, while normalized measures provide additional context about transportation efficiency.

### 9.5 Maintenance Cost

Total maintenance cost is approximately **5.73M**.

Maintenance expenditure is further examined by maintenance type to identify how the observed maintenance-cost total is distributed.

The analysis does not classify maintenance spending as excessive or inefficient without an appropriate operational or financial benchmark.

### 9.6 Additional Cost Components

Accessorial charges, additional charges, and fuel surcharge are retained as separate analytical components.

Their presence in the cost structure provides information about the composition of the operation beyond basic fuel and maintenance expenditure.

These categories should not automatically be interpreted as avoidable costs because the dataset does not establish the contractual, customer, or operational circumstances behind each charge.

### 9.7 Business Interpretation

The cost decomposition enables management to answer:

> **Which cost components account for the observed cost exposure?**

It does not, by itself, answer:

> **Which costs should be reduced?**

The second question requires additional context such as contractual terms, operational drivers, service requirements, and profitability information.

### 9.8 Evidence Boundary

The analysis establishes the observed composition of the available cost measures.

It does not establish:

* cost inefficiency
* avoidability
* profitability impact
* contractual responsibility
* optimal cost levels

without additional supporting evidence.

---

## 10. Fleet-Level Benchmark Limitation

### 10.1 Evidence

The fleet-utilization dataset contains **3,312 truck-month records**, representing **120 trucks across 36 monthly periods**.

The validated fleet-level measures include:

* Fleet Utilization: **83.04%**
* Average Fuel Efficiency: **6.50 MPG**
* Active Fleet Count: **120 active trucks**

These measures are derived from fleet-level operational data rather than directly from the load-level transaction population.

### 10.2 Finding

The fleet-level measures provide useful operating benchmarks, but their analytical behavior differs from transaction-level load and trip KPIs.

In particular, the fleet-level benchmark measures are not treated as if they can always be recalculated correctly under every transaction-level slicer context.

### 10.3 Business Interpretation

This distinction is important when interpreting the dashboard.

A fleet-level benchmark represents the operating population captured by the fleet-utilization data. It should not automatically be presented as a dynamically filtered fleet population merely because a user applies a load, shipment, route, or date filter.

Doing so could create a misleading impression of precision that the underlying data model does not support.

### 10.4 Analytical Treatment

The dashboard therefore treats these measures as **fleet-level reference benchmarks** rather than forcing unsupported slicer behavior.

Where a comparison to a filtered transaction population is not analytically valid, the dashboard uses the designated static/reference presentation rather than manufacturing a dynamically responsive result.

### 10.5 Evidence Boundary

The available fleet-utilization data supports fleet-level descriptive analysis.

It does not establish that the fleet-level benchmark should change proportionally with every load-level filter, route filter, or shipment-type selection.

This limitation is an example of an analytical-model constraint that should be disclosed rather than hidden through additional calculations.

---

## 11. Operational Findings Synthesis

The analysis establishes several interconnected operational signals across the 2022–2024 dataset.

### 11.1 Service Performance

Delivery performance is a material area for further investigation, with **44.61% on-time delivery**, **55.39% late delivery**, and approximately **240.66 minutes average delivery delay**.

The analysis moves beyond the aggregate KPI by examining destination-level variation and the relationship between delay and transportation distance.

### 11.2 Data Completeness

The trip population contains **4,952 records with at least one missing driver, truck, or trailer assignment**, representing approximately **5.8% of trips**.

This does not invalidate aggregate operational analysis, but it creates an important limitation for resource-level attribution and diagnostics.

### 11.3 Event Integrity

The delivery-event validation identified **486 pickup → delivery sequence reversals**, while no dispatch-before-load exceptions were identified.

These records are treated as data-quality exceptions rather than assumed operational failures.

### 11.4 Efficiency

Fleet and fuel measures provide multiple efficiency perspectives, including utilization, MPG, idle time, and normalized fuel cost.

The analysis uses these measures jointly to identify diagnostic signals while avoiding unsupported claims about the causes of efficiency differences.

### 11.5 Commercial and Network Performance

Route and destination analysis provides two complementary views of the network:

* **revenue contribution**, which reflects commercial scale
* **normalized revenue measures**, which provide additional context for transportation efficiency

Facility analysis similarly distinguishes operational activity from financial interpretation.

### 11.6 Analytical Conclusion

The analysis indicates that the dataset is suitable for **descriptive and diagnostic logistics analysis**, while several findings require careful interpretation because of data-quality conditions and the absence of explanatory variables.

The principal analytical themes carried forward into management review are:

1. Delivery-performance variation
2. Delivery-delay diagnostics
3. Resource-assignment completeness
4. Fleet and fuel-efficiency signals
5. Route and revenue concentration
6. Facility-level operational variation
7. Operating-cost composition
8. Data-quality exceptions affecting interpretation

These themes form the evidence base for the subsequent management findings. They do not, by themselves, establish root causes or prescribe specific operational actions.

---

