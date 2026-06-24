# Security Policy

## Supported Versions

| Version | Supported          |
| ------- | ------------------ |
| 1.0.x   | ✅ Yes             |
| < 1.0   | ❌ No              |

## Reporting a Vulnerability

**Please do NOT open a public GitHub issue for security vulnerabilities.**

Instead, report them responsibly:

1. **Email**: security@nexanalytics.io
2. **Subject**: `[SECURITY] Brief description`
3. **Include**:
   - Type of vulnerability (XSS, SQL injection, auth bypass, etc.)
   - Affected component (frontend, backend API, ML pipeline)
   - Steps to reproduce
   - Potential impact
   - Suggested fix (if any)

### What to Expect
- **Acknowledgment**: Within 48 hours
- **Status Update**: Within 7 days
- **Fix Timeline**: Critical issues within 14 days; others within 90 days
- **Credit**: Security researchers who responsibly disclose will be credited in CHANGELOG.md

## Security Best Practices for Deployment

### API Keys & Secrets
```bash
# Never commit these to version control
OPENAI_API_KEY=sk-...
JWT_SECRET_KEY=<min 32 random chars>
SECRET_KEY=<min 64 random chars>
POSTGRES_PASSWORD=<strong password>
```

### Production Checklist
- [ ] Change all default passwords in `.env`
- [ ] Set `ENVIRONMENT=production`
- [ ] Enable HTTPS (SSL certificates in `docker/ssl/`)
- [ ] Configure `ALLOWED_HOSTS` to your domain only
- [ ] Set `DEBUG=false`
- [ ] Enable `CORS_ORIGINS` to your frontend domain only
- [ ] Rotate JWT secret keys every 90 days
- [ ] Enable Sentry for error monitoring (`SENTRY_DSN`)
- [ ] Set up Fail2Ban for brute force protection
- [ ] Enable PostgreSQL SSL connections
- [ ] Restrict Redis to internal network only

### Known Security Controls
- **Authentication**: JWT Bearer tokens (HS256, configurable expiry)
- **Authorization**: Role-based access control (admin, analyst, viewer)
- **Rate Limiting**: Nginx-level (100 req/min API, 10 req/min auth)
- **Input Validation**: Pydantic v2 strict mode on all API inputs
- **SQL Safety**: Parameterized DuckDB queries; no string interpolation in user inputs
- **CORS**: Explicit allowlist; no wildcard origins in production
- **Headers**: HSTS, X-Frame-Options, CSP, X-Content-Type-Options via Nginx
- **Secrets**: Environment variables only; never in source code
- **Dependencies**: Automated Dependabot PRs; `safety` checks in CI
