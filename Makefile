# ════════════════════════════════════════════════════════════
# NexAnalytics — Developer Makefile
# Usage: make <target>
# ════════════════════════════════════════════════════════════

.PHONY: help setup data backend frontend test lint format docker clean

# Default target
help:
	@echo ""
	@echo "╔══════════════════════════════════════════════════╗"
	@echo "║     NexAnalytics — Developer Commands            ║"
	@echo "╚══════════════════════════════════════════════════╝"
	@echo ""
	@echo "  Setup:"
	@echo "    make setup       — Install all dependencies"
	@echo "    make data        — Generate synthetic datasets"
	@echo "    make etl         — Run ETL pipeline"
	@echo ""
	@echo "  Development:"
	@echo "    make backend     — Start FastAPI dev server"
	@echo "    make frontend    — Start Next.js dev server"
	@echo "    make dev         — Start both (background)"
	@echo ""
	@echo "  Quality:"
	@echo "    make test        — Run all tests"
	@echo "    make lint        — Run linters"
	@echo "    make format      — Auto-format code"
	@echo "    make typecheck   — Type checking"
	@echo ""
	@echo "  Docker:"
	@echo "    make docker-up   — Start full stack"
	@echo "    make docker-down — Stop full stack"
	@echo "    make docker-logs — View logs"
	@echo "    make docker-monitoring — Start with monitoring"
	@echo ""
	@echo "  Utilities:"
	@echo "    make clean       — Remove generated files"
	@echo "    make db-shell    — Open DuckDB shell"
	@echo "    make api-docs    — Open API documentation"
	@echo ""

# ─── Setup ───────────────────────────────────────────────────
setup:
	@echo "📦 Installing backend dependencies..."
	cd backend && pip install -r requirements.txt
	@echo "📦 Installing frontend dependencies..."
	cd frontend && npm install --legacy-peer-deps
	@echo "📋 Copying environment template..."
	@test -f .env || cp .env.example .env
	@echo ""
	@echo "✅ Setup complete! Next steps:"
	@echo "   1. Edit .env and add your OPENAI_API_KEY"
	@echo "   2. Run: make data"
	@echo "   3. Run: make dev"

# ─── Data Generation ─────────────────────────────────────────
data:
	@echo "🗄️  Generating synthetic datasets..."
	cd data/scripts && python generate_all_data.py
	@echo "✅ Datasets generated in data/raw/"

etl:
	@echo "🔄 Running ETL pipeline..."
	python scripts/etl/run_etl.py
	@echo "✅ ETL complete — data loaded into DuckDB"

# ─── Development Servers ─────────────────────────────────────
backend:
	@echo "🚀 Starting FastAPI backend (http://localhost:8000)..."
	cd backend && uvicorn main:app --reload --host 0.0.0.0 --port 8000 --log-level info

frontend:
	@echo "🚀 Starting Next.js frontend (http://localhost:3000)..."
	cd frontend && npm run dev

dev:
	@echo "🚀 Starting development stack..."
	@make -j2 backend frontend

# ─── Testing ─────────────────────────────────────────────────
test:
	@echo "🧪 Running full test suite..."
	cd backend && pytest tests/ -v --tb=short --cov=. --cov-report=term-missing
	@echo ""
	@echo "🧪 Running frontend tests..."
	cd frontend && npm test -- --passWithNoTests

test-backend:
	cd backend && pytest tests/ -v --tb=short -x

test-ml:
	cd backend && pytest tests/ml/ -v --tb=short

test-cov:
	cd backend && pytest tests/ --cov=. --cov-report=html
	@echo "📊 Coverage report: backend/htmlcov/index.html"

# ─── Code Quality ────────────────────────────────────────────
lint:
	@echo "🔍 Linting Python..."
	cd backend && ruff check . --fix
	@echo "🔍 Linting TypeScript..."
	cd frontend && npm run lint

format:
	@echo "✨ Formatting Python..."
	cd backend && black . && isort .
	@echo "✨ Formatting TypeScript..."
	cd frontend && npx prettier --write "src/**/*.{ts,tsx,css}"

typecheck:
	@echo "🔎 Type-checking Python..."
	cd backend && mypy . --ignore-missing-imports || true
	@echo "🔎 Type-checking TypeScript..."
	cd frontend && npm run type-check

# ─── Docker ──────────────────────────────────────────────────
docker-up:
	@echo "🐳 Starting Docker stack..."
	docker compose up -d
	@echo ""
	@echo "✅ Services running:"
	@echo "   Frontend:  http://localhost:3000"
	@echo "   Backend:   http://localhost:8000"
	@echo "   API Docs:  http://localhost:8000/api/docs"

docker-down:
	docker compose down

docker-rebuild:
	docker compose up -d --build

docker-logs:
	docker compose logs -f

docker-logs-backend:
	docker compose logs -f backend

docker-monitoring:
	docker compose --profile monitoring up -d
	@echo "📊 Grafana: http://localhost:3001 (admin/admin123)"
	@echo "📈 Prometheus: http://localhost:9090"

docker-ollama:
	docker compose --profile ollama up -d
	@echo "🦙 Ollama running at http://localhost:11434"
	docker compose exec ollama ollama pull llama3.2

docker-ps:
	docker compose ps

docker-clean:
	docker compose down -v --remove-orphans
	docker system prune -f

# ─── Database ────────────────────────────────────────────────
db-shell:
	@echo "🦆 Opening DuckDB shell..."
	duckdb data/analytics.duckdb

db-stats:
	@echo "📊 Database statistics:"
	@duckdb data/analytics.duckdb -c "SELECT 'customers' as table, COUNT(*) as rows FROM dim_customers UNION ALL SELECT 'orders', COUNT(*) FROM fact_orders UNION ALL SELECT 'products', COUNT(*) FROM dim_products UNION ALL SELECT 'marketing', COUNT(*) FROM fact_marketing;"

# ─── Utilities ───────────────────────────────────────────────
api-docs:
	open http://localhost:8000/api/docs

health:
	@curl -s http://localhost:8000/api/health | python -m json.tool

clean:
	@echo "🧹 Cleaning generated files..."
	find . -type f -name "*.pyc" -delete
	find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name ".pytest_cache" -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name ".mypy_cache" -exec rm -rf {} + 2>/dev/null || true
	find . -name "*.egg-info" -exec rm -rf {} + 2>/dev/null || true
	@echo "✅ Clean complete"

clean-data:
	@echo "⚠️  Removing generated data files..."
	rm -f data/raw/*.csv
	rm -f data/analytics.duckdb
	@echo "✅ Data cleaned — run 'make data' to regenerate"

# ─── Release ─────────────────────────────────────────────────
version:
	@echo "NexAnalytics v1.0.0"

changelog:
	@cat CHANGELOG.md | head -50
