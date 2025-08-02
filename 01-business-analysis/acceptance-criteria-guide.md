---
title: Acceptance Criteria Guide
archetype: Reference
owner: "@sans-serif-sentiments/team-business-analysis"
status: Stable
version: v1.0
last_reviewed: 2025-07-30
tags: [acceptance-criteria, agile-definition-of-done, story-validation, user-requirements, qa-alignment]

---

# Acceptance Criteria Guide

---

## Overview

Acceptance criteria define the boundaries of a user story or feature. They describe the conditions that must be met for a product to be accepted as complete, usable, and aligned with stakeholder intent.

This guide outlines how to write clear, testable, and agreed-upon acceptance criteria to reduce ambiguity, improve delivery confidence, and align QA, developers, and business stakeholders.

---

## Why It Matters

Poorly defined acceptance criteria lead to:

- Mismatched expectations between stakeholders and development  
- Incomplete or buggy features slipping through QA  
- Rework due to unclear scope or missing validation steps  

Clear criteria:

- Create a shared Definition of Done  
- Enable automated and manual test cases  
- Make user stories measurable and trackable  
- Reduce sprint review surprises

---

## Audience, Scope & Personas

### Audience

- Business Analysts  
- Product Owners  
- QA Engineers  
- Developers  
- Designers (for UX-specific conditions)

### Scope

This guide applies to writing and reviewing acceptance criteria for:

- Agile user stories  
- Feature tickets  
- MVP scoping  
- Test case alignment and review

---

## Prerequisites

- ✅ User story has been approved and prioritized  
- ✅ Feature scope and user intent are agreed upon  
- ✅ Personas, workflows, and constraints are understood  
- ✅ Definition of Done is defined for the sprint or release  
- ✅ Story estimation completed (pre-acceptance finalization)

---

## Security, Privacy & Compliance

- Do not include personally identifiable information (PII) in examples  
- Align security-related criteria with internal security standards  
- For regulated industries, include compliance-specific criteria (e.g., GDPR consent flow, audit trail capture)  
- Use traceable language for documentation and audits  
- Confirm sensitive logic is tested (e.g., access control)

---

## Tasks & Step-by-Step Instructions

### 1. Use Gherkin Format (Recommended)

```gherkin
Given [initial context],
When [action taken],
Then [expected outcome]
```

Example:

```gherkin
Given I am logged in as an admin user,  
When I navigate to the user settings page,  
Then I should see the 'Add User' button.
```

### 2. Write Plain Language Criteria

- Focus on observable outcomes
- Avoid implementation details or internal logic
- Use bullets or numbered lists when Gherkin is not used

Example:

- The password reset email is sent within 2 minutes
- Error message appears if username is missing
- User is redirected to dashboard after login

### 3. Define Success Boundaries

- Specify “done” vs. “incomplete” behaviors
- Include edge cases and negative validations (e.g., failed login, API timeout)

### 4. Review with QA and Product Teams

- Ensure all test scenarios are covered
- Validate that each criterion is **testable, observable, and unambiguous**

---

## Access Control & Permissions

| Role             | Access Level       | Justification                             |
| ---------------- | ------------------ | ----------------------------------------- |
| Product Owner    | Full edit          | Final authority on criteria alignment     |
| Business Analyst | Co-edit            | Documents functional boundaries           |
| QA Engineer      | Comment + test map | Links criteria to test scenarios          |
| Developer        | View + feedback    | Confirms feasibility of implementation    |
| Designer         | View               | Ensures UX success conditions are covered |

---

## Practical Examples & Templates (✅/❌)

### ✅ Good Criteria

```markdown
- The “Submit” button is disabled until all required fields are filled  
- Users receive a confirmation email after submitting the form  
- Login fails after 3 invalid attempts and displays a lockout message
```

### ❌ Bad Criteria

> “The user should be able to use the form easily.”
> *Vague, subjective, not testable.*

> “System should work properly.”
> *Lacks measurable output or specific behavior.*

---

## Known Issues & Friction Points

| Issue                         | Impact                       | Suggested Fix                               |
| ----------------------------- | ---------------------------- | ------------------------------------------- |
| Vague or subjective language  | Misinterpretation, failed QA | Rephrase with specific, testable terms      |
| Overly technical conditions   | Stakeholder confusion        | Write in business-facing language           |
| Incomplete edge case handling | Unpredictable bugs           | Add negative tests and error conditions     |
| Missing UX success metrics    | Poor user experience         | Include accessibility and interaction flows |

---

## Tips & Best Practices

### ✅ Do

- Start criteria before development begins
- Align with Definition of Done per team or sprint
- Add accessibility and mobile behavior if relevant
- Review and update criteria after stakeholder feedback

### ❌ Don’t

- Assume dev or QA will “figure it out”
- Reuse generic acceptance criteria for every story
- Use vague words like “intuitive” or “efficient”
- Leave out error handling and edge behavior

---

## Troubleshooting Guidance

| Symptom                              | Likely Cause                        | Resolution                                 |
| ------------------------------------ | ----------------------------------- | ------------------------------------------ |
| “Feature doesn’t work as expected”   | Unclear acceptance criteria         | Clarify specific input/output expectations |
| “QA coverage is incomplete”          | Missing scenarios                   | Review edge cases and cross-device needs   |
| “Stakeholders reject delivered work” | Misalignment on expected outcomes   | Validate criteria before sprint kickoff    |
| “Tests don’t map to stories”         | Criteria not testable or observable | Reformat to match test-case format         |

---

## Dependencies, Risks & Escalation Path

### Dependencies

| Dependency             | Description                                   |
| ---------------------- | --------------------------------------------- |
| Prioritized Backlog    | Stories must be finalized before criteria set |
| QA Environment         | Required for validating success conditions    |
| Dev Feasibility Review | Ensures testable implementation boundaries    |

### Risks

| Risk                                 | Mitigation Strategy                         |
| ------------------------------------ | ------------------------------------------- |
| Acceptance criteria written too late | Include during backlog grooming sessions    |
| Stakeholder disagreement             | Review with stakeholders before refinement  |
| Accessibility not covered            | Include WCAG or platform-specific standards |

---

## Success Metrics & Outcomes

| Metric                         | Success Threshold                                       |
| ------------------------------ | ------------------------------------------------------- |
| Criteria-Test Alignment Ratio  | ≥95% of criteria covered by test cases                  |
| Sprint Sign-off Rate           | All stories closed with approved criteria               |
| Rework Requests Post-Delivery  | <5% of stories require redo due to unclear expectations |
| Stakeholder Satisfaction Score | Avg. 4.5/5 or higher in retrospectives                  |

---

## Resources & References

- [Gherkin Syntax – cucumber.io](https://cucumber.io/docs/gherkin/)
- [Agile Alliance – Definition of Done](https://www.agilealliance.org/glossary/definition-of-done/)
- [Internal QA Mapping Template](./qa-criteria-mapping.md)
- [Accessibility Acceptance Guide](./ux-accessibility-criteria.md)

---

## Last Reviewed / Last Updated

**Date:** July 30, 2025
**Maintainer:** Shailesh Rawat (PoeticMayhem)
**Version:** v1.0
**Status:** ✅ Stable

---
