# github-actions-patterns

## Automation Workflow Overview
- Lists reusable snippets for building CI/CD pipelines with GitHub Actions.

## Importance & CI/CD Benefits
- Standard patterns accelerate development and ensure consistent behavior.

## Target Audience (DevOps, Developers)
- DevOps teams and contributors customizing workflows.

## Environment & Prerequisites
- Familiarity with YAML syntax and access to GitHub Actions marketplace.

## Security & Compliance in Automation
- Pin action versions to avoid unexpected updates and review marketplace permissions.

## Step-by-Step Automation Tasks
1. Use the `checkout` action as the first step in most jobs.
2. Cache dependencies to speed up builds.
3. Separate build and deploy jobs for clarity.

## Explicit Workflow Examples & Templates
```yaml
steps:
  - uses: actions/setup-node@v4
    with:
      node-version: '20'
```

## Known Automation Issues & Mitigation
- Unpinned actions may introduce breaking changes. Use commit hashes where possible.

## Automation Best Practices
- Group common steps into reusable actions to keep workflows concise.

## Troubleshooting Automation
- Enable `ACTIONS_RUNNER_DEBUG` for verbose logs during troubleshooting.

## Dependencies & Escalation
- Check documentation for each action and escalate issues via support channels.

## Automation Success Metrics & Outcomes
- Reduced setup time for new workflows and fewer build inconsistencies.

## Resources & Tooling References
- GitHub Actions best practices, sample repositories.

## Last Reviewed / Updated
- July 2025
