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
📦 ENIAC-Magist-Analysis
 ├── 📂 data
 │    └── olist_dataset.csv
 ├── 📂 dashboard
 │    └── Tableau_Dashboard.twbx
 ├── 📂 sql
 │    └── SQL_queries.sql
 ├── 📂 presentation
 │    └── project_presentation.pptx
 ├── 📜 README.md
```

## 📉 Visualisations

### Product Performance Dashboard

Shows Tech vs Non-Tech sales comparison.

![Product Performance](images/product_performance.png)

### Delivery and Customer Review Analysis Dashboard
Displays delivery performance and customer satisfaction.

![Delivery and Customer Review Analysis](images/delivery_analysis.png)

## 📈 Business Conclusion

### Is Magist a Suitable Partner for  ENIAC?

#### Strengths

✅ Reliable delivery performance
✅ Strong logistics capability
✅ Large customer reach in Brazil
✅ Positive customer satisfaction trends

#### Concerns

⚠️ Lower demand for Tech products
⚠️ Limited Tech-product seller ecosystem
⚠️ Revenue concentrated in a few regions

### Final Evaluation

Magist demonstrates strong operational and logistics performance. However, the marketplace currently favours Non-Tech products more than ENIAC's Tech-focused business model.

The partnership could still be beneficial if ENIAC:

- Expands Tech seller partnerships
- Improve Tech product visibility
- Target high-performing regions strategically

## 🔗 How to Use This Project

## 1. Dataset
The dataset used for this analysis is available in the `/data` folder.

## 2. SQL Analysis
Run the SQL queries available in:

`/sql/SQL_queries.sql`

## 3. Tableau Dashboard
Open the Tableau dashboard file in Tableau Desktop or Tableau Public:

`/dashboard/Tableau_Dashboard.twbx`

## 4. Presentation
The business presentation and final insights are available in:

`/presentation/project_presentation.pptx`


