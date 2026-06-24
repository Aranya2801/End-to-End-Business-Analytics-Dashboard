# Contributing to NexAnalytics

Thank you for your interest in contributing! This document provides guidelines.

## Code of Conduct
By participating, you agree to our [Code of Conduct](CODE_OF_CONDUCT.md).

## How to Contribute

### Reporting Bugs
1. Check existing [Issues](https://github.com/yourusername/End-to-End-Business-Analytics-Dashboard/issues)
2. Open a new issue with: description, steps to reproduce, expected vs actual behavior, environment details

### Suggesting Features
Open an issue with the `enhancement` label. Include use case, proposed solution, and alternatives considered.

### Pull Requests

1. **Fork** the repository
2. **Create a branch**: `git checkout -b feature/amazing-feature`
3. **Install dependencies**:
   ```bash
   # Backend
   cd backend && pip install -r requirements.txt
   # Frontend
   cd frontend && npm install
   ```
4. **Make your changes** following the coding standards below
5. **Write tests** for any new functionality
6. **Run the test suite**:
   ```bash
   pytest tests/ -v
   cd frontend && npm test
   ```
7. **Lint your code**:
   ```bash
   ruff check backend/
   black backend/
   cd frontend && npm run lint
   ```
8. **Commit**: `git commit -m "feat: add amazing feature"`
9. **Push**: `git push origin feature/amazing-feature`
10. **Open a Pull Request**

## Coding Standards

### Python (Backend)
- Python 3.12+ with full type hints
- Black formatting (line length: 100)
- Ruff linting
- Docstrings for all public functions and classes
- pytest for testing with >70% coverage

### TypeScript (Frontend)
- Strict TypeScript mode
- ESLint + Prettier
- React hooks over class components
- Tailwind CSS for styling (no inline styles)
- Test with Jest + React Testing Library

### SQL
- UPPERCASE keywords
- Explicit column names (no `SELECT *` in production queries)
- Add comments for complex CTEs

## Commit Convention
We use [Conventional Commits](https://www.conventionalcommits.org/):

```
feat: add customer lifetime value chart
fix: resolve DuckDB connection timeout issue
docs: update API documentation
test: add churn prediction unit tests
refactor: optimize revenue aggregation query
chore: update dependencies
```

## Development Environment

### Quick Setup
```bash
cp .env.example .env
docker compose up -d postgres redis
cd backend && uvicorn main:app --reload
cd frontend && npm run dev
```

## Questions?
Open a [Discussion](https://github.com/yourusername/End-to-End-Business-Analytics-Dashboard/discussions) or join our community.
