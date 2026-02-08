# medicare-reimbursement-analysis
SQL and Tableau analysis of Medicare provider reimbursement data

# Medicare Provider Reimbursement Analysis (SQL + Tableau)

## Overview
This project analyzes Medicare Part B provider reimbursement patterns using publicly available CMS data.
The goal is to simulate real-world reimbursement analytics work, including:
- payment normalization
- provider-level comparisons
- service utilization analysis
- identifying potential cost drivers

This mirrors common responsibilities of a Provider Reimbursement Analyst in a payer environment.

## Data Source
- CMS: Medicare Physician & Other Practitioners by Provider (2023)
- Public dataset from data.cms.gov
- Unit of analysis: Provider (NPI)

## Tools Used
- PostgreSQL (data ingestion, cleaning, analysis)
- SQL (aggregations, derived metrics)
- Tableau Public (visual analytics & dashboards)
- GitHub (version control & portfolio presentation)

## Key Metrics Created
- Total Services
- Total Beneficiaries
- Total Submitted Charges
- Total Allowed Amount
- Total Medicare Payment
- **Average Payment per Service**
- Provider Type
- Provider State

---

## Analysis & Visualizations

### Chart 1 — Total Medicare Payments by Provider Type
**Question:** Which provider types account for the highest overall Medicare payments?

**Insight:**
Certain provider types drive disproportionately high total spend, indicating key areas for reimbursement strategy and contract review.

---

### Chart 2 — Average Payment per Service by Provider Type
**Question:** How does reimbursement efficiency differ across specialties?

**Insight:**
Some specialties show lower average payment per service due to high-volume, low-margin procedures, while others reflect higher complexity care.

---

### Chart 3 — Services vs Average Payment (Volume vs Cost)
**Question:** Are high-cost services also high-volume?

**Insight:**
Most provider types exhibit an inverse relationship between service volume and per-service payment, a common dynamic in fee-for-service reimbursement models.

---

### Chart 4 — Geographic Variation in Medicare Payments
**Question:** How do reimbursement patterns vary by state?

**Insight:**
State-level variation reflects differences in provider mix, patient demographics, and Medicare geographic adjustments.

---

## Why This Matters for Payers
This analysis demonstrates skills directly applicable to payer-side reimbursement work:
- analyzing fee-for-service payment behavior
- identifying cost drivers
- supporting reimbursement policy decisions
- translating raw claims-style data into insights

## Files
- `/SQL` → table creation, cleaning, analysis queries
- `/Tableau` → dashboards and visualizations
- `/docs` → charts exported for portfolio use

## Author
Harley Emmons
