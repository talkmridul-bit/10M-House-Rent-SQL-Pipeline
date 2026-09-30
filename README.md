# 10M-House-Rent-SQL-Pipeline
"Extreme Local Engineering: Processing 10M urban housing records (195.36B INR rent volume across 40 Indian cities) locally on a Core i3, 4GB RAM machine using memory-efficient SQL CTEs and TRY_CAST data pipelines with zero cloud infrastructure."

         An enterprise-grade, high-performance data engineering project demonstrating Extreme Local Engineering: processing 10,000,000 property records (representing 195.36B INR in total rent volume across 40 major Indian cities) entirely on a budget Core i3 1.2GHz machine with 4GB of RAM (equivalent to a smartphone memory footprint, leaving ~2GB workable memory after Windows OS overhead) with zero cloud clusters.


         💻 Hardware & Environmental Specifications :
         
               Executing high-memory workflows under tight local hardware bounds required strict compute strategies:Machine 
               
               Processor: Core i3 1.2GHz processor executing local SQL workflows.  
               
               Memory Constraints: Strict 4GB RAM local machine with Windows OS overhead and zero cloud clusters used. 
               
               
              Compute Strategy:Optimized aggregations and TRY_CAST safety checks implemented to prevent out-of-memory crashes during standalone local execution.  
               
        
        📊 Project Scope & DetailsTotal Records:
       
        10.00M property records.   
        Total Rent Volume: 195.36B INR.   
        Geographic Coverage: Top 40 Indian urban centers covered (including Mumbai, Delhi, Bangalore, Kolkata, Amritsar, Mysore, Bhopal, Ranchi, Thane, Kanpur, Jaipur, Indore, Gwalior, Patna, Pune, Noida, Agra, Chennai, Jodhpur, Nagpur, Lucknow, Rajkot, Faridabad, etc.).   
        
        🏗️️ Data Pipeline Architecture
        
             The processing architecture relies on memory-efficient disk-based stream processing and defensive SQL programming to prevent Out-Of-Memory (OOM) crashes under severe hardware constraints.   [ Raw Dataset: 10M Records ] 
       │
       ▼
[ Common Table Expression (CTE) & TRY_CAST Validation ] ──► (Filters out dirty text, zero-rent, & zero-bathroom anomalies safely)
       │
       ▼
[ Disk-Based Stream Aggregations ] ──► (Paging engine groups metrics by Year, City, Area Type, & Furnishing Status without OOM crashes)
       │
       ▼
[ Final BI Dashboard Output ] ──► (Visualizing 195.36B INR volume across 40 urban centers)


## 💡 Actionable Business Insights

* **Yield Optimization:**
   Unfurnished properties generate rental volumes equivalent to furnished assets (~65B INR each), offering high ROI potential for low-capex landlords.
* **Area Type Parity:**
  Carpet area, built area, plot area, and super area each account for uniform segments of ~48.8B INR in total rent and ~2.5M properties, validating flexible architectural planning for developers.
* **Local Scalability Proof:**
    Demonstrates that massive 10M-row datasets can be thoroughly audited and aggregated locally on budget hardware using robust SQL CTE design patterns.
