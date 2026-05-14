# Evaluation of Magist for ENIAC Partnership

## 🎯 Project Overview
This project evaluates whether Magist is a suitable marketplace and logistics partner for ENIAC,focusing on product performance, seller availability, delivery reliability, geographical sales distribution, and customer satisfaction.
The analysis compares Tech products and Non-Tech products to understand market demand,operational efficiency, and customer experience. Using SQL analysis and interactive Tableau dashboards, the project identifies whether Magist can effectively support ENIAC's business expansion in Brazil.

## 📊 Dataset & Sources

Source: Magist E-commerce Dataset (Brazil)

Dataset Details:

- Multi-table relational e-commerce dataset
- Includes:
  - Oders
  - Products
  - Sellers
  - Customers
  - Reviews
  - Payments
  - Geolocation information
- Cover three years of transaction data

Key Features:

- Order purchase & delivery dates
- Product categories (Tech vs Non-Tech)
- Seller locations
- Customer locations
- Delivery information
- Customer Reviews

Data Preparation:

- Joined multiple tables using SQL
- Products grouped into Tech and Non-Tech categories for comparison.
- Missing delivery dates handled as "Unknown".
- Geographoc data used for state-level analysis.

## 🚀 Key Findings & Results

### Analyze product performance 
- Non-Tech products dominate total sales and revenue.
- Tech products show significantly lower market demand.
- Indicates weaker performance for ENIAC's core product category.
  
### Evaluate seller strength
- Fewer sellers in Tech category.
- Limited seller diversity may affect scalability.
- High dependency on few sellers.
  
### Geographical sales performance by region(Brazil)
- Highest sales concentration observed in:
  - Sao Paulo
  - Rio de Janeiro
  - Minas Gerais
- Southern and Southeastern Brazil generate the majority of revenue.
- Sales distribution is regionally concentrated.
  
### Assess delivery reliability
- Majority of orders delivered om time.
- Some delays and unknown statuses observed.
- Suggests strong logistics and operational reliability from Magist.
  
### Analyze Customer satisfaction
- Majority of customer reviews were positive.
- Non-Tech products rceived substantially more reviews and purchases.
- Tech products showed lower customer engagement.

## 🛠️ Technologies Used

### Tools:

- SQL (data quering and analysis)
- Tableau (data visualisation & dashboards)

### Environment:

- Tableau Public
- GitHub

## 📂 Project Structure

```text
# 📦 ENIAC-Magist-Analysis

## 📁 Project Structure

├── 📂 Tableau_workbook
│   └── MagistEval.twbx

├── 📂 presentation
│   └── MagistEval.pptx

├── 📂 querydata
│   ├── magist_queries.sql
│   └── magist_queries1.sql

├── 📂 screenshot
│   ├── dashboard1.png
│   └── dashboard2.png

└── 📜 README.md

```
# 📸 Dashboard Visualizations

## Sales & Revenue Dashboard
![Dashboard 1](./screenshot/dashboard1.png)

## Customer & Delivery Analysis
![Dashboard 2](./screenshot/dashboard2.png)

---
## 📈 Business Conclusion

### Is Magist a Suitable Partner for  ENIAC?

#### ✅ Strengths

- ✅ Reliable delivery performance
- ✅ Strong logistics capability
- ✅ Large customer reach in Brazil
- ✅ Positive customer satisfaction trends

---

#### ⚠️ Concerns

- ⚠️ Lower demand for Tech products
- ⚠️ Limited Tech-product seller ecosystem
- ⚠️ Revenue concentrated in a few regions
### Final Evaluation

Magist demonstrates strong operational and logistics performance. However, the marketplace currently favours Non-Tech products more than ENIAC's Tech-focused business model.

The partnership could still be beneficial if ENIAC:

- Expands Tech seller partnerships
- Improve Tech product visibility
- Target high-performing regions strategically

---
## 🚀 How to Use This Project

1. Clone the repository

```bash
git clone <your-repository-link>
```

2. Open the SQL files inside the `querydata` folder to explore the analysis queries.

3. Open `MagistEval.twbx` in Tableau Desktop to interact with the dashboards.

4. View the project presentation:
   - `presentation/MagistEval.pptx`

5. Dashboard screenshots are available in the `screenshot` folder.

---

## 🔗 Project Files


- [📊 Tableau Workbook](./Tableau_workbook/MagistEval.twbx)
- [🖥️ Presentation](./presentation/MagistEval.pptx)
- [🗄️ SQL Queries](./querydata/magist_queries.sql)
---

