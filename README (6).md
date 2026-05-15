# 🚀 ApoloGALAXY — Gaming Product Sales Analysis 2024

![Python](https://img.shields.io/badge/Python-3.10-blue?logo=python&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-8.0-orange?logo=mysql&logoColor=white)
![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-F37626?logo=jupyter&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

---

## 👾 Why this project?

Honestly? Curiosity.

I spend most of my day analyzing sales data in fashion and tech e-commerce, so when it came to building a personal portfolio project, I wanted to explore a different industry — one I hadn't worked with before. Gaming felt like the right call: high ticket products, strong brand loyalty, clear seasonality patterns, and a really interesting mix between consoles and accessories.

So I built **ApoloGALAXY** — a fictional gaming store — from scratch, designed the database, generated realistic sales data, and ran the full analysis end to end.

---

## 📋 What is this project about?

A full sales analysis for **ApoloGALAXY**, a fictional gaming store, covering **January through December 2024**.

The project combines **SQL** to build and query the database, and **Python** to explore, visualize, and extract insights from the data.

The goal was simple: understand what's selling, what isn't, when demand peaks, which brands lead revenue, and where there are opportunities to improve.

---

## 🎯 Key questions this analysis answers

- Which products generate the most revenue?
- Which brands lead in units sold vs. revenue?
- How do sales behave throughout the year — are there seasonality patterns?
- How do Consoles and Accessories compare in performance?
- Which products have the highest return rate?
- What's the real impact of discounts on revenue?
- Are there products with critically low stock?

---

## 🛠️ Tech stack

| Tool | Purpose |
|------|---------|
| **MySQL** | Data modeling, insertion, and analytical queries |
| **Python 3.10** | Exploratory data analysis and visualization |
| **Pandas** | Data manipulation and transformation |
| **Matplotlib** | Charts and visual storytelling |
| **Seaborn** | Visual styling |
| **Jupyter Notebook** | Interactive analysis environment |

---

## 📁 Project structure

```
apolo-galaxy-analysis/
│
├── ecommerce_analysis.sql       # Full database: schema + data + SQL queries
├── ecommerce_analysis.ipynb     # Python notebook with visualizations & insights
└── README.md                    # You're reading it
```

---

## 🗄️ Database design

The database was built from scratch with 4 tables:

```
categorias → productos ← marcas
                ↓
             ventas
```

- **categorias** — product categories (Consoles, Accessories)
- **marcas** — brands (Microsoft, HyperX, Nintendo, Sony, Razer)
- **productos** — 19 products with price and stock
- **ventas** — 120 sales records across the full year, including discounts, quantities, and return flags

---

## 📊 SQL analysis included

| Query | Description |
|-------|-------------|
| Revenue by product | Total revenue and units sold per product |
| Top 5 products | Best sellers ranked by units |
| Revenue by category | Consoles vs Accessories comparison |
| Revenue by brand | Which brand leads in $$ |
| Monthly trend | Seasonality throughout the year |
| Return rate | Products with the highest return % |
| Discount impact | How much revenue is lost to discounts |
| Critical stock | Products running low on inventory |

---

## 📈 Python analysis included

- **General KPIs** — total revenue, units sold, average ticket, return rate
- **Monthly trend chart** — dual-axis bar + line showing revenue and units over time
- **Category breakdown** — bar chart + pie chart comparing Consoles vs Accessories
- **Top 5 products** — horizontal bar chart with revenue labels, color-coded by brand
- **Revenue by brand** — horizontal bar chart with brand identity colors
- **Key conclusions** — auto-generated insights printed at the end of the notebook

---

## 🏷️ Brands analyzed

| Brand | Category |
|-------|----------|
| Sony | Consoles + Accessories |
| Microsoft | Consoles + Accessories |
| Nintendo | Consoles + Accessories |
| HyperX | Accessories |
| Razer | Accessories |

---

## 💡 Key insights

- **Accessories outperform consoles** in units sold — lower price point drives volume
- **July and December** are the peak months — winter holidays and Christmas effect
- **Sony leads** in console revenue; **HyperX leads** in accessories
- **Black Friday (November)** generates a significant spike — discounts up to 15%
- **Return rate is low** across the board, suggesting good product-market fit
- A few products show **critically low stock** — flagged in the SQL analysis

---

## 🚀 How to run this project

### SQL
```sql
-- Open MySQL Workbench and run:
source ecommerce_analysis.sql
```

### Python
```bash
# Install dependencies
pip install pandas matplotlib seaborn jupyter

# Launch the notebook
jupyter notebook ecommerce_analysis.ipynb
```

---

## 🔭 What's next

This project is part of my ongoing learning path. Up next:

- **Data cleaning & ETL** — building proper pipelines to process raw, messy data
- **Power BI dashboards** — connecting this same dataset to an interactive dashboard
- **Predictive analysis** — forecasting demand based on historical seasonality

---

## 👩‍💻 About me

**Sofía** — Data Analyst with experience in fashion and tech e-commerce.

I like understanding what's behind the numbers and how data can improve the way we work, sell, and make decisions. I work with Python, SQL, Power BI, Excel, and Shopify to analyze data, spot opportunities, and help projects grow. I also have a background in marketing, which helps me connect data with commercial strategy in a more complete way.

Always learning, always looking for spaces where analytics meets digital strategy.

This is one of my first public portfolio projects — built to practice end-to-end analysis and share what I know.

---

<div align="center">

**Data Analyst | E-commerce | Power BI | Python | SQL**

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Sophie%20T-blue?logo=linkedin&logoColor=white)](https://www.linkedin.com/in/sophie-t-878488249/)

*The store and all data in this project are fictional — created to practice and showcase analytical skills.*

</div>
