# Changelog

All notable changes to NexAnalytics will be documented in this file.
The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Planned
- Real-time WebSocket live order feed
- PDF report generation
- Scheduled email digests
- Stripe/Shopify data connectors

---

## [1.0.0] - 2024-12-31

### Added
- **Executive Dashboard** with 6 animated KPI cards and real-time data
- **Revenue Analytics** — trend charts across daily/weekly/monthly/quarterly granularity
- **Geographic Heatmap** — US city-level bubble chart with revenue/profit/orders metrics
- **Sales Dashboard** — seasonality heatmap (day × month) and 90-day forecast
- **Customer Dashboard** — RFM analysis, cohort retention heatmap, churn risk table
- **Marketing Dashboard** — ROAS by channel, radar effectiveness chart, campaign table
- **Products Dashboard** — sortable performance table with margin progress bars
- **AI Insights Dashboard** — NL query chat, auto-insights generator, executive summary
- **Churn Prediction API** — XGBoost + Random Forest ensemble; AUC-ROC 0.912
- **Sales Forecasting API** — Prophet + XGBoost hybrid; 90-day horizon with uncertainty bands
- **Customer Segmentation API** — K-Means RFM clustering (configurable 2–20 clusters)
- **Anomaly Detection API** — Z-score + Isolation Forest; configurable sensitivity
- **JWT Authentication** — Bearer tokens, refresh tokens, role-based access control
- **Data Export API** — CSV export for revenue, customers, products, marketing
- **DuckDB Analytical Engine** — OLAP engine with 6 analytical views
- **Synthetic Data Generators** — 120K customers, 550K orders, 12K products, 110K campaigns
- **Docker Compose** — Full stack orchestration with Postgres, Redis, Ollama, Nginx, Grafana
- **GitHub Actions CI/CD** — 8-job pipeline: lint → test → security → build → deploy
- **Comprehensive Test Suite** — Unit, integration, performance, ML validation tests
- **Production Nginx Config** — SSL, rate limiting, gzip, security headers
- **Multi-AI Provider Support** — OpenAI GPT-4o, Anthropic Claude, Ollama local models

### Technical Highlights
- DuckDB analytical views: `v_monthly_revenue`, `v_customer_rfm`, `v_product_performance`, `v_marketing_attribution`, `v_cohort_retention`, `v_geographic_sales`, `v_kpi_summary`
- Glassmorphism dark theme with CSS design token system
- SWR-based data fetching with intelligent caching (60s–30min TTLs)
- Framer Motion animations with staggered children and spring physics
- Multi-stage Docker builds for minimal production image sizes
- Pydantic v2 settings with environment validation

---

## [0.9.0-beta] - 2024-11-15

### Added
- Initial FastAPI backend scaffold
- DuckDB integration and schema design
- Next.js 15 frontend scaffold with dark mode
- Basic KPI endpoint and chart components

### Changed
- Migrated from SQLAlchemy ORM to raw DuckDB SQL for 10x query performance

---

[Unreleased]: https://github.com/yourusername/End-to-End-Business-Analytics-Dashboard/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/yourusername/End-to-End-Business-Analytics-Dashboard/releases/tag/v1.0.0
[0.9.0-beta]: https://github.com/yourusername/End-to-End-Business-Analytics-Dashboard/releases/tag/v0.9.0-beta
