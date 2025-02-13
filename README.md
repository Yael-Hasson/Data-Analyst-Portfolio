# Yael Hasson - Business Intelligence Engineer

## About


<!--
**Yael-Hasson/Yael-Hasson** is a ✨ _special_ ✨ repository because its `README.md` (this file) appears on your GitHub profile. -->

Hi, I'm Yael! Dynamic and results-oriented BI Engineer with extensive experience in data analysis, business insights, and leveraging cutting-edge tools to drive decision-making. Proven ability to design scalable ETL pipelines, build impactful dashboards, and deliver actionable insights that optimize business performance. Skilled in collaborating across teams to address complex business challenges and enhance customer experiences through innovative, data-driven frameworks. Excels at empowering stakeholders with tailored analytics and clear communication, driving informed decision-making at all organizational levels.

This is a repository to showcase skills, share projects and track my progress in Data Analytics.

## Portfolio Projects

### 📊 Impact Analysis of Targeted Promotions on Kindle Sales in France (Prime Day 2024)
**Code:**
[SQL Query](https://github.com/Yael-Hasson/Portfolio-Projects/blob/main/Targeted%20Promotions%20Incrementality%20Analysis.sql)

**Problem:**
With Prime Day 2024 approaching, we need to ensure that our targeted promotions effectively drive incremental sales and maximize ROI. Offering discounts without evaluating their impact could lead to wasted marketing spend or inefficient targeting.

Key questions this analysis aims to answer:
	•	Does targeted promotion significantly increase Kindle sales compared to a holdout group?
	•	Which Kindle models benefit the most from promotions?
	•	Should we adjust our promotional strategy before Prime Day?
 
**Goal:**
To evaluate the impact of Targeted Promotions on Kindle sales in France during a Deals Event in May 2024. The objective is to test our targeting strategy ahead of Prime Day in July to ensure we reach the right customers and optimize conversion rates.

**Description:**
This A/B test compares sales data between two groups:
	1.	Targeted Group (Received Promotion): Customers who received a promotional offer for Kindle devices.
	2.	Holdout Group (No Promotion): Customers who were eligible but did not receive any promotion.

A campaign will be considered effective if the increase in sales is greater than 20%. By analyzing the effectiveness of this promotion, we can fine-tune our Prime Day marketing strategy to maximize impact and profitability.

**Skills:**
SQL (JOINs, CTEs, aggregations), Redshift, A/B Testing, Data Analysis.

**Results:**
|Device Model       |Targeted Group Sales |Holdout Group Sales |Difference |% Increase |Efffective? |
|-------------------|---------------------|--------------------|-----------|-----------|------------|
|D2024010           |1400                 |1100                |300        |27%        |Yes         |
|D2024011           |2200                 |1400                |800        |57%        |Yes         |
|D2024012           |1700                 |1200                |500        |42%        |Yes         |

- ✅ All Kindle models showed an increase above 20%, meaning the promotion was effective across all tested devices.
- ✅ Kindle D2024011 showed the highest growth (+800 units, +57%), indicating a strong response to the promotion. This model should be prioritized in future campaigns.
- ✅ Kindle D2024010 had the lowest increase (+300 units, +27%), suggesting that the promotion was less effective for this device compared to others. Additional adjustments (e.g., price, messaging, bundling) should be tested.
- ✅ Kindle D2024012 saw a moderate impact (+500 units, +42%), meaning the promotion worked but may need refinement to maximize sales potential.

📌 Data-Driven Decisions:
- Given the strong performance of Kindle D2024011, future Prime Day promotions should prioritize this model.
- Instead of using a one-size-fits-all discount, test different incentives (e.g., higher discount for D2024012, bundle deals for D2024010) to better align with customer demand.
- The +27% sales increase suggests possible price sensitivity, market saturation, or customer interest issues.

### 📊 Impact Analysis of Targeted Promotions on Subscriptions in Germany (Q1 2024)
**Code:**
[SQL Query](https://github.com/Yael-Hasson/Portfolio-Projects/blob/main/Subscriptions_targeted_promotions.sql)

**Problem:**
The marketing team lacked a structured approach to identify device owners who had not subscribed to relevant services, such as Kids Plus or Audible. Without proper segmentation, campaigns were not effectively targeting users who would benefit most from these subscriptions. As a result, marketing efforts were inefficient, and potential subscription revenue was lost due to untailored outreach.

Additionally, with new device launches planned for Q2 2024, it was critical to validate whether this targeted strategy would be profitable and scalable. We needed to ensure that customers who owned a relevant device but had not subscribed could be effectively converted.

**Goal:**
To identify and target Germany customers who own a specific device but have not yet subscribed to a relevant service, such as Kids Plus for child-friendly devices or Audible for audiobook-compatible devices. By segmenting these users, we aimed to test personalized promotions across multiple marketing channels to drive higher subscription conversion rates.

To determine whether this strategy is effective, we will apply two key performance criteria:
1. Minumim CTR of 5% --> If a channel has a CTR below this threshold, it indicates that the ads are not generating enough engagement to justify further investment.
2. Minimum Subscription Rate of 30% --> At least 3 out of 10 customers who click on the ad should convert into subscribers for the strategy to be considered viable

By applyig these thresholds, we can ensure that only the most effective channels are included in our final campaign rollour, maximizing profitability ad engagement.

**Description:**
This project focused on analyzing customer data to create two key customer cohorts:

	1.	Cohort 1: EU5 customers who own a device suitable for Kids Plus but do not yet have a Kids Plus subscription.
	2.	Cohort 2: EU5 customers who own a device compatible with Audible but do not have an active Audible subscription.

For each cohort, targeted marketing messages were tested in three different channels:
- Gateway (GW): Displayed personalized subscription offers, measuring effectiveness through Click-Through Rate (CTR) and subscription conversion rate.
- Email Campaigns: Sent tailored promotional emails, tracking CTR, and subscription sign-ups.
- Display Ads (DP): Showed device-relevant subscription ads, evaluating performance based on CTR and conversion rates.

By aligning the device ownership with the missing subscription, we aimed to increase the relevance of promotions, optimize marketing spend, and drive higher subscription adoption rates.

**Skills:**
SQL (JOINs, CTEs, aggregations), Redshift, S3 (AWS).

**Results:**
The test campaign was highly successful, confirming that this data-driven targeting approach was profitable and scalable for the Q2 2024 global device launch.

|Cohort             |Impressions |clicks |CTR   |Subscriptions |Subscription Rate |Effective? |
|-------------------|------------|-------|------|--------------|------------------|-----------|
|GW - Kids Plus     |500000      |22500  |4.5%  |6900          |30.7%             |No         |
|Email - Kids Plus  |200000      |17000  |8.5%  |5200          |30.6%             |Yes        |
|DP - Kids Plus     |300000      |16500  |5.5%  |4700          |28.5%             |No         |
|GW - Audible       |600000      |31500  |5.3%  |9450          |30%               |Yes        |
|Email - Audible    |250000      |21500  |8.6%  |6450          |30%               |Yes        |
|DP - Audible       |350000      |19800  |5.7%  |5900          |29.8%             |No         |

- ✅ Email campaigns and Gateway (Audible) meet both thresholds, making them the best-performing channels

📌 Data-Driven Decisions:
- Improve CTR on Gateway (Kids Plus) by refining ad creatives and targeting. If it does not reach 5% CTR, this channel should not be included in the final marketing campaign.
- Scale Email and Gateway (Audible) globally, as they meet both thresholds and have strong conversion potential.

With this approach we ensure that our strategy is both engaging and profitable before scaling globally.

### 📊 Sales & Customer Analysis Report

**Problem:**
Sales and customer tracking was inefficient due to manual data extraction from multiple sources, leading to errors and delays in reporting. Without a centralized system, stakeholders struggled to monitor revenue trends, customer segmentation, and product performance in real time, limiting their ability to make strategic decisions.

**Goal:**
Develop a comprehensive sales and customer analysis dashboard to provide real-time insights into order trends, revenue growth, customer distribution, and product performance across different regions. The solution needed to replace manual reporting, enhance decision-making, and optimize sales strategies.

**Description:**
The sales and customer tracking process previously required manual data extraction from multiple sources, making it inefficient and prone to errors. The General Analysis Monthly Report dashboard was designed to:

- Monitor sales performance (YoY growth, order trends, revenue tracking).
- Identify key customer segments (new vs. returning, regional distribution).
- Analyze product category sales and shifts in market demand.
- Track cross-sell and multi-division orders to optimize sales strategies.
- Improve forecasting through trend analysis and historical comparisons.

This automated dashboard consolidates data from different sources into a single view, allowing stakeholders to track business performance in real time and make data-driven strategic decisions.

**Steps:**
- 1️⃣ Data Consolidation & Integration
	•	Connected to multiple sales, finance, and customer databases.
	•	Standardized order data, customer records, and revenue metrics.
	•	Integrated real-time sales tracking to monitor growth.
- 2️⃣ Automating Sales & Customer Analytics
	•	Created a dashboard tracking orders, revenue, and YoY trends.
	•	Segmented customers by region, industry, and order frequency.
	•	Implemented cross-sell tracking to measure multi-division orders.
- 3️⃣ Building Key Performance Metrics (KPIs)
	•	Developed visuals for revenue, customer growth, and product performance.
	•	Built comparative YoY and month-over-month (MoM) trend analysis.
	•	Enabled order breakdowns by country, product category, and division.
- 4️⃣ Enhancing Forecasting & Strategic Insights
	•	Created trend models to forecast sales based on historical data.
	•	Identified high-growth customer segments for targeted strategies.
	•	Provided actionable insights into regional market demand shifts.

**Results:**
[Dashboard](https://github.com/Yael-Hasson/Portfolio-Projects/blob/main/Sales_%26%20_Customers_MBR.pdf)

- ✅ Real-time visibility into sales and customer data, eliminating manual reporting and reducing data retrieval time by 40%.
- ✅ Enhanced forecasting capabilities, allowing proactive sales planning.
- ✅ Optimized cross-sell strategies, improving revenue from multi-division orders.
- ✅ Identified high-growth regions & product categories, supporting data-driven market expansion.
- ✅ Improved decision-making, empowering sales and finance teams with accurate insights.

This dashboard transformed sales reporting from a manual, time-consuming process into an automated, strategic decision-making tool, providing valuable insights across products, customers, and regions.

### 📊 Fire TV Sales Dashboard Automation

**Problem:**
The Fire TV Sales team relied on a manual Excel-based tracker that was time-consuming, error-prone, and lacked scalability. As the business expanded across multiple regions and sales channels, tracking performance metrics like sales, Share of Business (SOB), Week over Week (WoW) and Quarterly Guidance (QG) became increasingly difficult, delaying critical decision-making.

**Goal:**
Automate the Fire TV Sales reporting process by replacing the manual Excel-based tracker with a scalable BI dashboard that integrates online and offline sales data, improves accuracy, and enables real-time tracking of key metrics like sales performance, Return on Equity (ROE), and Quarterly Guidance (QG) forecasts.

**Description:**
The legacy Excel-based reporting system was time-consuming, prone to errors, and unable to track new programs, countries, and sales channels. With multiple launches on the horizon, the Fire TV Sales team needed an automated, scalable solution to track sales performance effectively.

This project focused on eliminating manual data entry, integrating multiple data sources, and ensuring accurate sales tracking across different brands and regions. The dashboard has now been successfully expanded to India, the US, and Japan, proving its scalability and effectiveness.

**Skills:**
SQL (JOINs, CTEs, aggregations), Redshift, S3 (AWS), Datanet, Quicksight.

**Steps:**
- 1️⃣ Analyzing the Challenges
   - Identified limitations of the Excel report (manual data entry, formula errors, lack of scalability).
   - Defined key sales metrics and requirements for the new dashboard.

- 2️⃣ Automating Data Inputs
   - Replaced manual Excel data entry with Structured Input Templates (SITs), eliminating the need for manual calculations (e.g., OP2 numbers).
   - Allowed easy expansion to new brands, countries, and TV sizes.

- 3️⃣ Data Integration
   - Merged online and offline sales data by integrating backend databases with SITs.
   - Ensured real-time sales tracking across different sales channels.

- 4️⃣ Enhancing Forecasting & Scalability
   - Implemented Quarterly Guidance (Q2G, Q3G, Q4G) tracking for better forecasting.
   - The dashboard has already been expanded globally, covering India, the US, and Japan.

- 5️⃣ Prioritization & Stakeholder Collaboration
   - Focused only on critical features to meet the immediate deadline.
   - Worked closely with stakeholders to align expectations and provide regular progress updates.

 **Results:**
[Dashboard](https://github.com/Yael-Hasson/Portfolio-Projects/blob/main/Sales_Report_WBR.pdf)

- ✅ 400-500 hours saved annually by eliminating manual data entry.
- ✅ Improved accuracy by removing formula errors and manual reporting inconsistencies.
- ✅ Integrated online and offline sales data, enabling more comprehensive performance tracking.
- ✅ Added forecast tracking, helping the team align sales with strategic goals.
- ✅ Global scalability: Successfully expanded to India, the US, and Japan, demonstrating its adaptability.
- ✅ Faster decision-making: The Fire TV Sales team can now make data-driven decisions in real-time instead of relying on outdated reports.

### 📊 Marketing Finance Dashboard Automation

**Problem:**
Budget tracking for the Marketing Finance team was inefficient due to reliance on manual Excel reports, leading to human errors and misalignment between planned and actual spending. The lack of real-time financial insights made it difficult to optimize marketing budgets and ensure accurate reporting across multiple teams and currencies.

**Goal:**
Automate budget tracking for the Marketing Finance team by integrating financial data from multiple sources into a centralized dashboard. The solution needed to eliminate manual Excel reporting, reduce errors, and provide real-time insights into spending and remaining budgets.

**Description:**
The Marketing Finance team in EMEA previously relied on manual Excel tracking to consolidate:
- Purchase Order (PO) reports from Finance
- Marketing campaign expenses from the Traffic team
- Planned budgets in both local and USD currencies

This process was time-consuming (3-4 hours per month per person for nine employees) and prone to errors, requiring constant coordination between teams. The goal was to develop an automated QuickSight dashboard that would:
- Synchronize financial data across multiple teams
- Track actual spending vs. planned budgets in real time
- Reduce errors and improve reporting accuracy
- Enhance financial decision-making through deeper insights

The final solution replaced Excel with an automated and scalable dashboard, streamlining financial tracking and improving strategic planning.

**Skills:**
SQL (JOINs, CTEs, aggregations), Redshift, S3 (AWS), Datanet, Quicksight.

**Steps:**
- 1️⃣ Understanding Data Challenges & Gathering Requirements
   - Connected with Finance and Traffic teams to understand data structures and integration points.
   - Identified inconsistencies in how POs and marketing spend were tracked.
   - Ensured alignment between multiple currencies, tax rates, and planned vs. actual budgets.

- 2️⃣ Building a Structured Data Storage System
   - Created Custom Data Tables (CDTs) to store manually provided planned budget data and tax rates.
   - Designed a standardized framework to ensure accurate comparisons between actual and planned spending.

- 3️⃣ Automating Data Extraction & Processing
   - Developed an ETL pipeline to extract spend data automatically from Finance and Traffic databases.
   - Merged and standardized data into a unified dataset to cross-check planned budgets with actual expenses.

- 4️⃣ Developing the Dashboard
   - Designed a QuickSight dashboard featuring:
   - Real-time tracking of budget usage and remaining funds.
   - Side-by-side comparisons of planned vs. actual spending.
   - Aggregated insights for higher-level financial reporting.

- 5️⃣ Stakeholder Collaboration & Iterative Improvements
   - Worked closely with Finance and Marketing leaders to refine key reporting metrics.
   - Iterated based on feedback to enhance usability, visualizations, and filters.
 
**Results:**
[Dashboard](https://github.com/Yael-Hasson/Portfolio-Projects/blob/main/Marketing_Finance_Dashboard.pdf)

- ✅ 432 hours saved per year by eliminating manual tracking.
- ✅ Eliminated errors caused by manual data entry and Excel formulas.
- ✅ Improved financial visibility with real-time budget tracking.
- ✅ Strengthened collaboration between Finance and Marketing teams.
- ✅ Enabled data-driven decision-making, allowing the team to optimize spending more strategically.
- ✅ Long-term value & adoption: The dashboard became a core financial tool, reducing inefficiencies and increasing operational efficiency.

By replacing an outdated manual process with a fully automated dashboard, this project empowered the Marketing Finance team to focus on high-impact strategic planning rather than time-consuming data consolidation.

## Contact:

 - LinkedIn: [yael-hasson-tapiero](https://www.linkedin.com/in/yael-hasson-tapiero/)
 - Email: yael.hassontapiero@gmail.com

## Experience:

- Business Intelligence Engineer at Amazon - Mar2022-present
- Junior Data Analyst at EY - Nov2021-Feb2022
- Market Intelligence Analyst - Feb2021-Oct2021

## Education:

- Master in Big Data & Analytics 2020-2021 - Polytechnic University of Catalonia
- Bachelor Degree in Economics 2015-2020 - University of Malaga
- Bachelor Degree in Business Administration and Management 2015-2020 - University of Malaga
