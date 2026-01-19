# GitHub Actions Workflows

This directory contains GitHub Actions workflows for CI/CD, security scanning, and code quality checks.

## Workflows

### CI (`ci.yml`)

Runs on:
- Pull requests to `main` or `dev`
- Pushes to `dev`
- Manual trigger (`workflow_dispatch`)

Jobs:
- **Lint**: Runs ESLint on TypeScript/JavaScript code
- **Type Check**: Runs TypeScript type checking
- **Test**: Runs unit tests (Vitest)
- **Build**: Verifies the application builds successfully

### Security Scanning (`security-scan.yml`)

Runs on:
- Pushes to `main` or `dev`
- Pull requests to `main`
- Weekly schedule (Mondays at midnight)
- Manual trigger (`workflow_dispatch`)

Jobs:
- **CodeQL Analysis**: Static code analysis for security vulnerabilities (JavaScript/TypeScript)
- **Dependency Scan**: Runs `npm audit` to check for vulnerable dependencies
- **Secret Scan**: Basic secret pattern detection

## Status Checks

The `CI` workflow is required for branch protection. All jobs must pass (or be allowed to fail gracefully) before merging PRs.

## Troubleshooting

### Workflows Not Running

- Check YAML syntax using a validator
- Verify file paths in workflow triggers match your project structure
- Ensure workflow files are in `.github/workflows/` directory
- Check repository Actions tab for error messages

### Build Failures

- Verify `package.json` exists in `frontend/` directory
- Check that all dependencies are available
- Review workflow logs for specific errors

### Security Scans Failing

- **CodeQL**: Ensure TypeScript/JavaScript files are present
- **Dependency Scan**: Verify `package-lock.json` exists in `frontend/`
- **Secret Scan**: Review any warnings about potential secrets



