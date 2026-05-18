# Hotel Booking Business Analysis

## Project Overview

This project analyzes hotel booking transactions to uncover customer booking behavior, cancellation trends, profitability drivers, and seasonal demand patterns using SQL and Power BI.

The analysis focuses on identifying business insights and generating strategic recommendations to improve profitability, reduce cancellations, and optimize booking performance.

---

## Objectives

- Analyze booking trends across channels, room types, and star ratings
- Study cancellation behavior and lead-time impact
- Identify profitability drivers across cities and hotel categories
- Understand seasonal booking and revenue trends
- Generate actionable business recommendations

---

## Tools & Technologies

- MySQL Workbench
- SQL
- Power BI
- DAX
- Power Query

---

## Dataset Information

### Dataset Type
Hotel Booking Transactions

### Key Columns
- booking_channel
- room_type
- star_rating
- city
- booking_status
- booking_value
- selling_price
- costprice
- booking_date
- check_in_date
- check_out_date

---

## Data Preparation

### Calculated Columns
- Profit
- Stay Duration
- Lead Time
- Lead Time Bins

### Measures Created
- Booking Count
- Cancellation Rate
- Revenue
- Total Profit
- Cancellation Count
- Average Stay Duration

---

## Key Business Insights

### Booking Trends
- Web channel generated the highest booking volume and revenue
- 4-star hotels recorded maximum customer demand
- Standard rooms contributed the highest booking volume

### Cancellation Analysis
- Travel Agent bookings had the highest cancellation rate (27.93%)
- Bookings with lead time above 90 days showed extremely high cancellations
- Premium hotels experienced slightly higher cancellation volatility

### Profitability Analysis
- Leisure travelers generated higher profits than business travelers
- Major metropolitan cities contributed stable profitability
- Mid-range hotel segments balanced affordability and profitability effectively

### Seasonal Trends
- April recorded peak booking volume and highest revenue
- Mid-year recovery trend observed during July and August
- Remaining months maintained stable booking activity

---

## SQL Analysis Performed

### Booking Analysis
- Booking trends by channel
- Room-type performance
- Star-rating analysis

### Cancellation Analysis
- Cancellation rate by booking channel
- Cancellation rate by lead time
- Cancellation rate by star rating

### Revenue & Profitability
- Profitability by city
- Revenue trend analysis
- Stay-duration analysis

---

## Power BI Dashboard Features

- Monthly booking and revenue trends
- Cancellation heatmaps
- Profitability analysis by city
- Lead-time vs cancellation analysis
- Channel performance comparison
- Stay-duration distribution analysis

---

## Business Recommendations

### Reduce Cancellations
- Implement tiered cancellation policies
- Promote prepaid and direct bookings
- Use predictive cancellation monitoring

### Improve Profitability
- Focus on high-performing segments
- Launch customer loyalty programs
- Increase upselling and bundled offers

### Optimize Pricing & Channels
- Apply dynamic seasonal pricing
- Prioritize direct web bookings
- Create segment-based promotional campaigns

---

## Project Structure

```text
Hotel-Booking-Business-Analysis/
│
├── dataset/
├── sql_queries/
├── powerbi_dashboard/
├── screenshots/
├── presentation/
└── README.md
