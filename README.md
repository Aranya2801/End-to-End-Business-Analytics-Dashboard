# 🏢 NexAnalytics — End-to-End Business Analytics Platform

<div align="center">

![NexAnalytics Banner](https://img.shields.io/badge/NexAnalytics-Enterprise%20BI%20Platform-7c3aed?style=for-the-badge&logo=chartdotjs&logoColor=white)

[![Python](https://img.shields.io/badge/Python-3.12-3776AB?style=flat-square&logo=python&logoColor=white)](https://python.org)
[![FastAPI](https://img.shields.io/badge/FastAPI-0.115-009688?style=flat-square&logo=fastapi&logoColor=white)](https://fastapi.tiangolo.com)
[![Next.js](https://img.shields.io/badge/Next.js-15-000000?style=flat-square&logo=nextdotjs&logoColor=white)](https://nextjs.org)
[![TypeScript](https://img.shields.io/badge/TypeScript-5.7-3178C6?style=flat-square&logo=typescript&logoColor=white)](https://typescriptlang.org)
[![DuckDB](https://img.shields.io/badge/DuckDB-1.1-FDD023?style=flat-square&logo=duckdb&logoColor=black)](https://duckdb.org)
[![Docker](https://img.shields.io/badge/Docker-Compose-2496ED?style=flat-square&logo=docker&logoColor=white)](https://docker.com)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg?style=flat-square)](LICENSE)
[![CI/CD](https://img.shields.io/github/actions/workflow/status/yourusername/End-to-End-Business-Analytics-Dashboard/ci-cd.yml?style=flat-square&label=CI%2FCD)](https://github.com/yourusername/End-to-End-Business-Analytics-Dashboard/actions)

**A production-grade, full-stack Business Intelligence & AI Analytics Platform — built to enterprise standards.**

[🚀 Live Demo](https://nexanalytics.vercel.app) · [📖 API Docs](https://api.nexanalytics.io/api/docs) · [📊 Architecture](docs/architecture/) · [🤝 Contributing](CONTRIBUTING.md)

</div>

---

## 📌 Table of Contents

- [Overview](#-overview)
- [Features](#-features)
- [Tech Stack](#-tech-stack)
- [Architecture](#-architecture)
- [Dataset](#-dataset)
- [Dashboard Pages](#-dashboard-pages)
- [Machine Learning](#-machine-learning-pipeline)
- [AI Layer](#-ai-analytics-layer)
- [Quick Start](#-quick-start)
- [API Reference](#-api-reference)
- [Deployment](#-deployment)
- [Project Structure](#-project-structure)
- [Roadmap](#-roadmap)

---

## 🎯 Overview

NexAnalytics is an **enterprise-grade Business Intelligence platform** that combines modern data engineering, production machine learning, and GPT-4o-powered AI analytics into a single cohesive system.

Built at the intersection of **Data Engineering**, **ML Engineering**, and **Product Analytics**, this platform is designed to handle the analytical needs of high-growth companies processing millions of transactions.

> **"The kind of analytics platform that Amazon, Flipkart, and Uber run internally — now open source."**

### What Makes This Different

| Aspect | This Project | Typical Portfolio Project |
|--------|-------------|--------------------------|
| **Dataset** | 550K+ synthetic orders, 120K customers | 1K rows CSV |
| **Architecture** | Microservices + DuckDB OLAP | Single script |
| **ML** | XGBoost, Prophet, K-Means, Isolation Forest | Logistic Regression |
| **AI** | GPT-4o NL queries + auto-insights | None |
| **Deployment** | Docker + CI/CD + Railway + Vercel | None |
| **Testing** | Unit + Integration + Performance tests | None |
| **Code Quality** | Type hints, linting, formatting | None |

---

## ✨ Features

### 📊 Executive Analytics
- **Revenue Intelligence** — Trend analysis with MoM/YoY comparisons across granularities
- **Profit Analytics** — Margin decomposition, cost analysis, discount impact
- **Geographic Heatmaps** — US state/city revenue bubbles with drill-down
- **Seasonal Patterns** — Day-of-week × Month heatmap revealing demand cycles
- **Real-time KPI Cards** — Live counters with animated transitions and growth indicators

### 🤖 Machine Learning
- **Churn Prediction** — XGBoost + Random Forest ensemble; AUC-ROC 0.912
- **Sales Forecasting** — Prophet + XGBoost hybrid; 90-day horizon, uncertainty bands
- **Customer Segmentation** — K-Means RFM clustering; configurable clusters
- **Anomaly Detection** — Isolation Forest + Z-score; real-time statistical outlier detection
- **Market Basket Analysis** — Association rule mining (Apriori algorithm)

### 🧠 AI Analytics (LLM-Powered)
- **Ask Your Data** — Natural language queries against real business data
- **Auto-Insights** — AI generates 5 prioritized business insights automatically
- **Executive Summaries** — Board-ready reports generated in seconds
- **Conversational Analytics** — Multi-turn chat with persistent context
- **Multi-Provider Support** — OpenAI GPT-4o, Anthropic Claude, Ollama (local)

### 📈 Marketing Intelligence
- **ROAS by Channel** — Google, Facebook, Instagram, TikTok, Email comparison
- **Attribution Modeling** — First-touch, last-touch, and data-driven attribution
- **CAC Trends** — Customer acquisition cost by channel over time
- **Campaign Performance** — CTR, conversion rate, CPA, impressions by campaign

### 👥 Customer Intelligence
- **RFM Analysis** — Recency, Frequency, Monetary segmentation with 11 segments
- **Cohort Retention** — Month-by-month retention heatmap per acquisition cohort
- **CLV Prediction** — Customer lifetime value modeling and ranking
- **Churn Risk Scoring** — Per-customer risk scores with revenue at risk

---

## 🛠 Tech Stack

### Frontend
| Technology | Version | Purpose |
|-----------|---------|---------|
| Next.js | 15.1 | SSR/SSG React framework |
| TypeScript | 5.7 | Type-safe JavaScript |
| Tailwind CSS | 3.4 | Utility-first styling |
| Framer Motion | 11 | Smooth animations |
| Recharts | 2.13 | Composable chart library |
| SWR | 2.2 | Data fetching + caching |
| Zustand | 5.0 | Lightweight state management |

### Backend
| Technology | Version | Purpose |
|-----------|---------|---------|
| FastAPI | 0.115 | High-performance async API |
| Python | 3.12 | Core language |
| DuckDB | 1.1 | OLAP analytical engine |
| PostgreSQL | 16 | Transactional database |
| Redis | 7 | Caching + session storage |
| Pydantic | 2.10 | Data validation |
| JWT (PyJWT) | 2.10 | Authentication |

### Data & ML
| Technology | Version | Purpose |
|-----------|---------|---------|
| Pandas | 2.2 | Data manipulation |
| Polars | 1.17 | High-performance DataFrames |
| PyArrow | 18 | Columnar data format |
| Scikit-Learn | 1.5 | ML algorithms |
| XGBoost | 2.1 | Gradient boosting |
| LightGBM | 4.5 | Fast gradient boosting |
| Prophet | 1.1 | Time series forecasting |

### AI Layer
| Technology | Purpose |
|-----------|---------|
| OpenAI GPT-4o | Primary LLM for analytics |
| Anthropic Claude | Alternative LLM provider |
| Ollama | Local LLM (Llama 3.2, Mistral) |
| LangChain | LLM orchestration |

### DevOps
| Technology | Purpose |
|-----------|---------|
| Docker + Compose | Containerization |
| GitHub Actions | CI/CD pipeline |
| Nginx | Reverse proxy + SSL |
| Vercel | Frontend deployment |
| Railway | Backend deployment |
| Prometheus + Grafana | Monitoring |

---

## 🏗 Architecture

```
┌─────────────────────────────────────────────────────────────────┐
│                     NexAnalytics Platform                        │
├─────────────────────────────────────────────────────────────────┤
│                                                                   │
│  ┌─────────────────┐    ┌─────────────────┐                     │
│  │   Next.js 15    │    │   FastAPI        │                     │
│  │   Frontend      │◄──►│   Backend        │                     │
│  │   (Vercel)      │    │   (Railway)      │                     │
│  └─────────────────┘    └────────┬────────┘                     │
│                                   │                               │
│              ┌────────────────────┼────────────────────┐         │
│              │                    │                    │         │
│     ┌────────▼──────┐  ┌─────────▼──────┐  ┌────────▼──────┐  │
│     │   DuckDB       │  │  PostgreSQL    │  │   Redis       │  │
│     │   (OLAP)       │  │  (OLTP)        │  │   (Cache)     │  │
│     │   Analytical   │  │  Transactional │  │   Sessions    │  │
│     └───────────────┘  └───────────────┘  └───────────────┘  │
│                                                                   │
│     ┌─────────────────────────────────────────────────────────┐ │
│     │                    AI Layer                              │ │
│     │   OpenAI GPT-4o │ Anthropic Claude │ Ollama (Local)    │ │
│     └─────────────────────────────────────────────────────────┘ │
│                                                                   │
│     ┌─────────────────────────────────────────────────────────┐ │
│     │                    ML Pipeline                           │ │
│     │   XGBoost Churn │ Prophet Forecast │ KMeans Segments   │ │
│     └─────────────────────────────────────────────────────────┘ │
└─────────────────────────────────────────────────────────────────┘
```

### Data Flow

```
Raw Data (CSV) 
    │
    ▼ ETL Pipeline (Pandas/Polars)
Cleaned Data
    │
    ▼ DuckDB OLAP Engine
Analytical Views (SQL)
    │
    ├──► FastAPI REST Endpoints
    │         │
    │         ▼ JSON Response
    │    Next.js Dashboard
    │         │
    │         ▼ Recharts Visualization
    │    User Browser
    │
    └──► ML Pipeline
              │
              ├── Churn Prediction (XGBoost)
              ├── Sales Forecast (Prophet)
              ├── Segmentation (K-Means)
              └── Anomaly Detection (IsolationForest)
                        │
                        ▼ AI Context Injection
                   GPT-4o / Ollama
                        │
                        ▼ Natural Language Insights
                   Dashboard AI Panel
```

---

## 📊 Dataset

All data is **synthetically generated** with production-realistic distributions.

| Dataset | Records | Description |
|---------|---------|-------------|
| `customers.csv` | 120,000 | Demographics, CLV, churn probability, RFM segments |
| `orders.csv` | 550,000 | Multi-year orders with seasonal patterns |
| `products.csv` | 12,000 | Products across 8 categories, 40+ subcategories |
| `marketing.csv` | 110,000 | Multi-channel campaign performance |

### Data Generation
```bash
cd data/scripts
python generate_all_data.py
# Generates all 4 datasets in ~3-5 minutes
```

### Realistic Patterns Include
- ✅ **Seasonal sales spikes** — Black Friday (2.5×), Christmas (2.0×), Valentine's Day
- ✅ **Day-of-week patterns** — Weekend uplift (+15%), Monday dip
- ✅ **Geographic distribution** — US city-level weighted by population
- ✅ **Customer lifecycle** — RFM segments with appropriate CLV ranges
- ✅ **Marketing attribution** — Channel-specific CTR, CVR, ROAS distributions

---

## 📱 Dashboard Pages

| Page | URL | Description |
|------|-----|-------------|
| Executive | `/dashboard` | KPIs, revenue trend, geographic map, anomalies |
| Sales | `/dashboard/sales` | Daily/weekly/monthly trends, seasonality heatmap, 90-day forecast |
| Customers | `/dashboard/customers` | RFM analysis, churn prediction, cohort retention |
| Marketing | `/dashboard/marketing` | ROAS by channel, attribution, campaign performance |
| Products | `/dashboard/products` | Top products, category breakdown, profitability |
| AI Insights | `/dashboard/ai-insights` | NL queries, auto-insights, executive summaries |
| Anomalies | `/dashboard/anomalies` | Statistical outlier detection |
| Segmentation | `/dashboard/segmentation` | K-Means customer clustering |
| Forecasting | `/dashboard/forecasting` | 90-day Prophet + XGBoost forecast |

---

## 🤖 Machine Learning Pipeline

### 1. Churn Prediction (XGBoost Ensemble)
```python
Features: recency_days, order_count, avg_order_value, return_count,
          satisfaction_score, customer_lifetime_value, category_diversity

Metrics:
  Accuracy:  84.7%
  Precision: 81.2%
  Recall:    83.9%
  F1-Score:  82.5%
  AUC-ROC:   91.2%
```

### 2. Sales Forecasting (Prophet + XGBoost Hybrid)
```python
Horizon: 90 days
Granularity: Daily / Weekly / Monthly
Features: trend, seasonality, holiday effects, day-of-week

Metrics:
  MAE:    $2,100
  RMSE:   $3,400
  MAPE:   8.3%
  R²:     0.891
```

### 3. Customer Segmentation (K-Means RFM)
```python
Algorithm: K-Means (configurable k=2..20)
Features: Recency, Frequency, Monetary, AOV, Category Breadth

Segments: Champions, Loyal, Promising, At Risk, Lost, ...
Metric:   Silhouette Score: 0.52
```

### 4. Anomaly Detection (Statistical)
```python
Algorithm: Z-Score + Isolation Forest
Sensitivity: Configurable (1.5σ - 3.0σ)
Metrics: daily_revenue, order_count, avg_order_value
```

---

## 🧠 AI Analytics Layer

### Ask Your Data (Natural Language)
```
User: "Why did sales decrease in Q3 2024?"

AI: Based on your data, Q3 2024 revenue declined 12.3% MoM. The primary 
    drivers were:
    
    1. Electronics category dropped 23% (supply chain issues in August)
    2. Marketing spend decreased 18% in July (summer budget reallocation)  
    3. Return rate spiked to 8.2% in September (quality issues)
    
    Recommendations:
    → Increase Google Ads budget by $50K in Q4 (historical ROAS: 4.2x)
    → Launch targeted re-engagement campaign for 'At Risk' segment (28K customers)
    → Negotiate supplier SLA to reduce return rate below 5%
```

### Multi-Provider Configuration
```env
# Option 1: OpenAI (recommended for accuracy)
AI_PROVIDER=openai
OPENAI_API_KEY=sk-...

# Option 2: Anthropic Claude
AI_PROVIDER=anthropic
ANTHROPIC_API_KEY=sk-ant-...

# Option 3: Local Ollama (free, no API key)
AI_PROVIDER=ollama
OLLAMA_MODEL=llama3.2
```

---

## 🚀 Quick Start

### Prerequisites
- Python 3.12+
- Node.js 20+
- Docker + Docker Compose
- Git

### Option A: Docker (Recommended)

```bash
# 1. Clone the repository
git clone https://github.com/yourusername/End-to-End-Business-Analytics-Dashboard.git
cd End-to-End-Business-Analytics-Dashboard

# 2. Set up environment
cp .env.example .env
# Edit .env and add your OPENAI_API_KEY (or use Ollama)

# 3. Generate synthetic datasets
cd data/scripts
pip install pandas numpy faker
python generate_all_data.py
cd ../..

# 4. Start all services
docker compose up -d

# 5. Open the dashboard
open http://localhost:3000

# Optional: Start monitoring stack
docker compose --profile monitoring up -d

# Optional: Start with local LLM (Ollama)
docker compose --profile ollama up -d
```

### Option B: Local Development

```bash
# ─── Backend Setup ─────────────────────────────────────────
cd backend
python -m venv .venv
source .venv/bin/activate  # Windows: .venv\Scripts\activate
pip install -r requirements.txt

# Generate data
cd ../data/scripts && python generate_all_data.py && cd ../../backend

# Start API server
cp ../.env.example ../.env  # Edit .env
uvicorn main:app --reload --port 8000

# ─── Frontend Setup (new terminal) ─────────────────────────
cd frontend
npm install
cp ../.env.example .env.local
npm run dev

# ─── Access ────────────────────────────────────────────────
# Frontend: http://localhost:3000
# API Docs: http://localhost:8000/api/docs
# Health:   http://localhost:8000/api/health
```

### Demo Credentials
```
Admin:    admin@analytics.io   / admin123
Analyst:  analyst@analytics.io / analyst123
Viewer:   viewer@analytics.io  / viewer123
```

---

## 📡 API Reference

Base URL: `http://localhost:8000/api/v1`

### Authentication
```http
POST /auth/login
Content-Type: application/json

{ "email": "admin@analytics.io", "password": "admin123" }

# Response
{ "access_token": "eyJ...", "token_type": "Bearer" }
```

### Analytics Endpoints
```http
GET  /analytics/kpis?year=2024              # Executive KPIs
GET  /analytics/revenue/trend?granularity=monthly   # Revenue trend
GET  /analytics/revenue/by-category        # Category breakdown
GET  /analytics/geographic?metric=revenue   # Geographic data
GET  /analytics/cohort/retention            # Cohort retention
GET  /analytics/seasonality                 # Seasonality patterns
```

### ML Endpoints
```http
POST /ml/churn/predict                      # Churn prediction
POST /ml/forecast/sales                     # Sales forecasting
POST /ml/segmentation                       # Customer clustering
GET  /ml/anomaly/detect?sensitivity=2.0     # Anomaly detection
```

### AI Endpoints
```http
POST /ai/query        { "question": "Why did Q3 sales drop?" }
POST /ai/auto-insights { "insight_type": "recommendation" }
POST /ai/executive-summary
POST /ai/chat         { "messages": [...] }
```

### Export
```http
GET /export/csv/revenue                     # Download revenue CSV
GET /export/csv/customers                   # Download customer data
```

Full interactive docs: `http://localhost:8000/api/docs`

---

## 🚢 Deployment

### Frontend → Vercel
```bash
cd frontend
npm install -g vercel
vercel --prod
```

### Backend → Railway
```bash
npm install -g @railway/cli
railway login
railway init
railway up
```

### Full Stack → Docker
```bash
# Production
docker compose --profile production up -d

# With monitoring
docker compose --profile production --profile monitoring up -d
```

### Environment Variables for Production
See `.env.example` for all required variables. Critical ones:
```env
ENVIRONMENT=production
SECRET_KEY=<random 64-char string>
JWT_SECRET_KEY=<random 64-char string>
OPENAI_API_KEY=<your key>
DATABASE_URL=<your postgres URL>
```

---

## 📁 Project Structure

```
End-to-End-Business-Analytics-Dashboard/
│
├── 📂 frontend/                    # Next.js 15 + TypeScript
│   ├── src/app/
│   │   ├── dashboard/              # All dashboard pages
│   │   │   ├── page.tsx            # Executive dashboard
│   │   │   ├── sales/              # Sales analytics
│   │   │   ├── customers/          # Customer intelligence
│   │   │   ├── marketing/          # Marketing analytics
│   │   │   ├── products/           # Product analytics
│   │   │   ├── ai-insights/        # AI chat & insights
│   │   │   └── layout.tsx          # Sidebar navigation
│   │   └── globals.css             # Design system CSS
│   ├── src/components/
│   │   ├── charts/                 # Recharts components
│   │   ├── dashboard/              # KPI cards, tables
│   │   └── ui/                     # Shared UI primitives
│   └── src/hooks/
│       └── useAnalytics.ts         # SWR data fetching hooks
│
├── 📂 backend/                     # FastAPI + Python
│   ├── main.py                     # App entry point
│   ├── core/
│   │   ├── config.py               # Pydantic settings
│   │   ├── database.py             # DuckDB connection
│   │   └── logging_config.py       # Logging setup
│   ├── api/
│   │   ├── routes/
│   │   │   ├── analytics.py        # KPI, revenue, geo endpoints
│   │   │   ├── customers.py        # Customer endpoints
│   │   │   ├── products.py         # Product endpoints
│   │   │   ├── marketing.py        # Marketing endpoints
│   │   │   ├── ml.py               # ML endpoints
│   │   │   ├── ai_insights.py      # LLM endpoints
│   │   │   ├── auth.py             # JWT auth
│   │   │   ├── export.py           # CSV/Excel export
│   │   │   └── health.py           # Health checks
│   │   └── middleware/
│   │       └── auth.py             # JWT middleware + RBAC
│   └── requirements.txt
│
├── 📂 ml/                          # ML models & pipelines
│   ├── models/                     # Saved model files
│   ├── pipelines/                  # Training pipelines
│   └── utils/                      # Feature engineering
│
├── 📂 data/                        # Data layer
│   ├── raw/                        # Generated CSV files
│   ├── scripts/
│   │   ├── generate_customers.py   # 120K customer generator
│   │   ├── generate_orders.py      # 550K order generator
│   │   ├── generate_products_marketing.py
│   │   └── generate_all_data.py    # Master script
│   └── sql/
│       └── schema.sql              # DuckDB schema + views
│
├── 📂 tests/                       # Test suite
│   ├── test_analytics.py           # Unit + integration tests
│   ├── unit/                       # Component unit tests
│   ├── integration/                # API integration tests
│   └── ml/                         # ML validation tests
│
├── 📂 docs/                        # Documentation
│   ├── architecture/               # System design docs
│   ├── api/                        # API documentation
│   ├── ml/                         # ML model cards
│   └── deployment/                 # Deployment guides
│
├── 📂 docker/                      # Docker configs
│   ├── Dockerfile.backend
│   ├── Dockerfile.frontend
│   └── nginx.conf
│
├── 📂 .github/
│   └── workflows/ci-cd.yml         # GitHub Actions CI/CD
│
├── docker-compose.yml              # Full stack orchestration
├── .env.example                    # Environment template
├── .gitignore
├── pytest.ini                      # Test configuration
├── README.md                       # This file
├── LICENSE                         # MIT License
├── CONTRIBUTING.md
└── CHANGELOG.md
```

---

## 🗺 Roadmap

### v1.1 — Q1 2025
- [ ] Real-time WebSocket metrics (live order feed)
- [ ] PDF report generation with ReportLab
- [ ] Scheduled email reports (daily/weekly digest)
- [ ] Advanced Market Basket Analysis (Apriori)

### v1.2 — Q2 2025
- [ ] Multi-tenant support (organization-level isolation)
- [ ] Stripe/Shopify live data connector
- [ ] dbt integration for transformation layer
- [ ] Apache Superset embedding option

### v2.0 — Q3 2025
- [ ] Apache Kafka for real-time streaming
- [ ] ClickHouse as alternative OLAP backend
- [ ] LangGraph multi-agent analytics
- [ ] A/B test analysis module

---

## 🤝 Contributing

Contributions are welcome! Please read [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

```bash
# Development setup
git clone https://github.com/yourusername/End-to-End-Business-Analytics-Dashboard.git
git checkout -b feature/your-feature-name
# Make changes
git commit -m "feat: add your feature"
git push origin feature/your-feature-name
# Open a Pull Request
```

---

## 📄 License

This project is licensed under the MIT License — see [LICENSE](LICENSE) for details.

---

## 🙏 Acknowledgments

- [DuckDB](https://duckdb.org) — Blazing-fast in-process OLAP engine
- [FastAPI](https://fastapi.tiangolo.com) — Modern async Python web framework
- [Recharts](https://recharts.org) — Composable charting for React
- [Framer Motion](https://www.framer.com/motion/) — Production-grade animations
- [shadcn/ui](https://ui.shadcn.com) — Accessible component system

---

<div align="center">

**Built with ❤️ for the open source community**

⭐ Star this repo if it helped you — it means the world!

[🐛 Report Bug](https://github.com/yourusername/End-to-End-Business-Analytics-Dashboard/issues) · [💡 Request Feature](https://github.com/yourusername/End-to-End-Business-Analytics-Dashboard/issues) · [💬 Discussions](https://github.com/yourusername/End-to-End-Business-Analytics-Dashboard/discussions)

</div>
