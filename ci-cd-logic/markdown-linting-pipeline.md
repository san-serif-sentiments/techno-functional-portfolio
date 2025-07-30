# markdown-linting-pipeline

## Automation Workflow Overview
- Details an example GitHub Actions workflow for running markdownlint.

## Importance & CI/CD Benefits
- Early lint checks catch formatting issues before merge.

## Target Audience (DevOps, Developers)
- Contributors maintaining documentation quality and DevOps owners of pipelines.

## Environment & Prerequisites
- Node.js installed in the runner and access to repository workflows.

## Security & Compliance in Automation
- Use read-only permissions for lint workflows and avoid leaking tokens in logs.

## Step-by-Step Automation Tasks
1. Trigger on pull request events.
2. Install dependencies and run `markdownlint` across docs.
3. Upload results as workflow artifacts.

## Explicit Workflow Examples & Templates
```yaml
name: Lint Docs
on: [pull_request]
jobs:
  lint:
    steps:
      - uses: actions/checkout@v4
      - run: npm ci
      - run: npx markdownlint '**/*.md'
```

## Known Automation Issues & Mitigation
- Large diffs may exceed default GitHub log limits. Configure summary reports.

## Automation Best Practices
- Reuse this workflow across repos through action templates.

## Troubleshooting Automation
- Review the `Actions` tab for exit codes and syntax errors in the workflow file.

## Dependencies & Escalation
- Contact the DevOps team if lint results fail consistently due to environment setup.

## Automation Success Metrics & Outcomes
- Fewer style violations in merged documentation.

## Resources & Tooling References
- markdownlint CLI docs, GitHub Actions marketplace examples.

## Last Reviewed / Updated
- July 2025
