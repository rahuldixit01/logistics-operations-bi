# KPI Analysis

## 1. Analytical KPI Baseline

### 1.1 Purpose

The KPI layer establishes the quantitative baseline for evaluating logistics operations performance during the **2022–2024** analysis period.

The KPIs are not treated as isolated scorecard values. They provide the starting point for identifying operational variation, efficiency signals, cost exposure, and areas requiring diagnostic analysis.

The analysis uses three KPI groups:

* **Production KPIs** — primary measures of operating activity and performance.
* **Baseline/Foundation KPIs** — measures that establish the overall operating scale.
* **Supporting KPIs** — diagnostic measures used to explain or contextualize the primary KPIs.

---

### 1.2 Primary Operating Baseline

| KPI                     |  Observed Value | Analytical Role                                                              |
| ----------------------- | --------------: | ---------------------------------------------------------------------------- |
| Completed Loads         |           85.4K | Establishes completed shipment volume during the analysis period.            |
| Completed Trips         |           85.4K | Establishes completed transportation activity.                               |
| Total Revenue           |         174.81M | Establishes the commercial scale of the analyzed operation.                  |
| On-Time Delivery        |          44.61% | Measures the proportion of deliveries classified as on time.                 |
| Fleet Utilization       |          83.04% | Indicates the utilization level represented by the fleet-utilization metric. |
| Total Fuel Consumption  | Dataset measure | Establishes fuel consumption for the operating period.                       |
| Average Fuel Efficiency |        6.50 MPG | Provides a fleet-level fuel-efficiency reference point.                      |
| Total Fuel Cost         | Dataset measure | Establishes fuel expenditure during the operating period.                    |

> **Analytical note:** The KPI values above describe the observed dataset baseline. They are not interpreted against external industry benchmarks unless an appropriate external benchmark is separately established.

---

### 1.3 Supporting Diagnostic Baseline

| KPI                        |  Observed Value | Analytical Use                                                                       |
| -------------------------- | --------------: | ------------------------------------------------------------------------------------ |
| Average Delivery Delay     |      240.66 min | Quantifies the average delivery delay and supports delivery-performance diagnostics. |
| Late Delivery Rate         |          55.39% | Provides the complementary view to the on-time delivery measure.                     |
| Average Trip Distance      |        1.43K mi | Establishes the typical trip-distance scale.                                         |
| Average Trip Duration      |        25.01 hr | Establishes the typical trip-duration scale.                                         |
| Average Load Weight        |      27.48K lbs | Provides context for shipment characteristics.                                       |
| Average Idle Time per Trip |         7.01 hr | Provides an operational-efficiency signal for trip execution.                        |
| Revenue per Load           | Dataset measure | Supports commercial productivity analysis at load level.                             |
| Revenue per Mile           |         2.15/mi | Provides a route/network revenue-efficiency measure.                                 |
| Revenue per Trip           |   3,073.71/trip | Provides a trip-level commercial productivity measure.                               |
| Fuel Cost per Gallon       |        6.50/gal | Provides fuel-price context for fuel-cost analysis.                                  |
| Fuel Cost per Mile         |         0.78/mi | Provides a distance-normalized fuel-cost measure.                                    |
| Fuel Cost per Load         |      1.12K/load | Provides a load-level fuel-cost measure.                                             |
| Total Maintenance Cost     |           5.73M | Establishes the maintenance-cost baseline.                                           |

---

### 1.4 Initial Analytical Signals

The KPI baseline identifies several areas that warrant deeper analysis rather than immediate causal conclusions:

1. **Delivery performance requires diagnostic attention.**
   On-time delivery is measured at 44.61%, while the complementary late-delivery rate is 55.39%. The scale of late deliveries makes destination-level and delay-level analysis relevant.

2. **Delivery delay is material enough to investigate operational variation.**
   The observed average delivery delay is approximately 240.66 minutes. Further analysis is therefore focused on how delay varies across destinations and other operational dimensions.

3. **Fuel and operating efficiency require joint analysis.**
   Fuel consumption, fuel cost, fuel cost per mile, fuel efficiency, and idle time provide multiple perspectives on fleet operating performance. These measures should be interpreted together rather than independently.

4. **Commercial productivity can be examined at multiple grains.**
   Revenue per load, revenue per trip, and revenue per mile provide complementary measures for investigating route and network economics.

5. **Maintenance represents a material cost category.**
   The observed maintenance-cost baseline provides a basis for examining the composition of operating costs and the relationship between fleet activity and maintenance expenditure.

These signals are **analytical starting points, not causal conclusions**. Subsequent analysis determines whether the observed patterns vary materially across time, destination, route, facility, or fleet dimensions.

---

## 2. KPI Interpretation Framework

The KPI baseline is interpreted through three complementary lenses: **scale, performance, and efficiency**.

### 2.1 Scale

The operation processed approximately **85.4K completed loads and 85.4K completed trips**, generating approximately **174.81M in revenue** over the 2022–2024 period.

These measures establish the scale of the operating dataset and provide context for interpreting normalized metrics such as revenue per load, revenue per mile, and fuel cost per load.

### 2.2 Service Performance

The primary service-performance measures indicate:

* **44.61% on-time delivery**
* **55.39% late delivery rate**
* **240.66 minutes average delivery delay**

The relationship between these measures is analytically important. The on-time percentage establishes the service-performance outcome, while late-delivery rate and average delay quantify the extent of the observed service-performance issue.

The appropriate next analytical question is therefore not simply whether delivery performance is low or high, but **where the variation occurs and which operational dimensions are associated with that variation**.

This leads to destination-level delivery analysis and delay diagnostics documented separately in the operational findings.

### 2.3 Operating Efficiency

The efficiency baseline includes:

* **83.04% fleet utilization**
* **6.50 MPG average fuel efficiency**
* **7.01 hours average idle time per trip**
* **0.78 fuel cost per mile**
* **1.12K fuel cost per load**

These measures describe different aspects of resource utilization and should not be interpreted as interchangeable.

For example, fuel efficiency measures fuel consumed relative to distance, while idle time represents time spent in an idle state and may provide a separate operational-efficiency signal.

The analysis therefore examines these measures jointly where the available data supports comparison.

### 2.4 Commercial Productivity

Revenue is examined at multiple operating grains:

* **Revenue per load**
* **Revenue per trip**
* **Revenue per mile**

This allows the analysis to distinguish overall revenue scale from normalized commercial productivity.

Revenue concentration is subsequently examined across destinations and routes to determine whether the aggregate revenue figure is broadly distributed or materially concentrated within particular parts of the network.

### 2.5 Cost Exposure

The cost baseline includes:

* Fuel cost
* Maintenance cost
* Accessorial charges
* Additional charges
* Fuel surcharge

The analysis treats these as separate cost components because each represents a different operational or commercial mechanism.

The operating-cost analysis therefore focuses on **cost composition and relative contribution**, rather than assuming that a larger cost category is inherently inefficient.

### 2.6 Analytical Interpretation Rule

A KPI value by itself does not establish a cause.

For example:

> A low on-time delivery rate establishes a service-performance outcome, but does not by itself establish why deliveries were late.

Similarly:

> A higher fuel cost per mile establishes a cost-efficiency observation, but does not by itself prove that idle time, vehicle condition, route characteristics, or another factor caused the difference.

Consequently, subsequent findings are based on **dimensional comparison, observed relationships, and validated data-quality evidence** wherever those are available.

This approach keeps the analysis descriptive and diagnostic while avoiding unsupported causal claims.

---