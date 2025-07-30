# CONTRIBUTING

## Overview
This document explains how to submit issues and pull requests to improve the
repository.

## Why It Matters
Clear contribution guidelines help maintain code quality and streamline the
review process.

## Audience, Scope & Personas
- External contributors proposing new content
- Maintainers reviewing and merging changes

## Prerequisites
- Git and GitHub account
- Familiarity with the project's README and relevant `AGENTS.md`

## Security, Compliance & Privacy
Do not include sensitive data in issues or commits. Follow all security and
privacy guidance defined in the root `AGENTS.md`.

## Tasks & Step-by-Step Instructions
1. Fork the repository and create a feature branch.
2. Run `scripts/setup-environment.sh` to install markdownlint-cli2 and other tools.
3. Make your changes while adhering to documentation standards.
4. Run markdownlint if available and note any issues.
5. Open a pull request describing your changes and referencing related issues.

## Access Control & Permissions (RBAC guidelines)
Only maintainers may merge pull requests. Contributors need approval via the
GitHub review process.

## Practical Examples & Templates (✅/❌)
✅ Pull request message: "Adds examples to `docs/how-to-navigate.md` and updates
`LICENSE-CONTENT.md`."

❌ Pull request message: "misc updates" (vague)

## Known Issues & Friction Points
- Missing or outdated local `AGENTS.md` guidelines can cause confusion.

## Tips & Best Practices
- Keep pull requests focused on a single goal.
- Reference related issues in the pull request description.

## Troubleshooting Guidance
If tests fail or markdownlint cannot run, mention that in the pull request so a
maintainer can advise next steps.

## Dependencies, Risks & Escalation Path
- Dependence on GitHub Actions for CI checks
- Escalate unaddressed reviews via direct mention of maintainers in comments

## Success Metrics & Outcomes
- Well-documented contributions that merge cleanly

## Resources & References
- [GitHub Contribution Guidelines](https://docs.github.com/en/get-started/quickstart/contributing-to-projects)

## Last Reviewed / Last Updated
2025-07-30
