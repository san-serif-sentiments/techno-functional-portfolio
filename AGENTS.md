# AGENTS.md – Sans Serif Sentiments ContentOps Global Standards

## 📌 General Instructions

- Always use clear, concise, actionable language following Microsoft + Google Developer Documentation Style Guides.
- Write consistently in second-person, active voice.
- Avoid anthropomorphizing AI, tools, or documentation.
- Begin every markdown file (`.md`) clearly with a H1 heading matching the exact filename.
- Always generate complete content (no placeholder or lorem-ipsum text).
- Clearly state assumptions explicitly and visibly.

## 🗂️ Default Documentation Structure

Unless overridden by a nested `AGENTS.md`, all docs must follow this high-level structure:

1. Overview
2. Why It Matters
3. Audience, Scope & Personas
4. Prerequisites
5. Security, Compliance & Privacy
6. Tasks & Step-by-Step Instructions
7. Access Control & Permissions (RBAC guidelines)
8. Practical Examples & Templates (✅/❌)
9. Known Issues & Friction Points
10. Tips & Best Practices
11. Troubleshooting Guidance
12. Dependencies, Risks & Escalation Path
13. Success Metrics & Outcomes
14. Resources & References
15. Last Reviewed / Last Updated

## 🎯 Formatting Rules (Global)

- Clearly structured markdown hierarchy (`##`, `###`, etc.)
- Explicitly formatted examples (✅/❌) for readability
- Explicit placeholders for visual elements (images, diagrams)
- Avoid long paragraphs; clearly prefer bulleted lists or tables

## 🔐 Global Security & Compliance Guidelines

- Explicitly document security considerations in every relevant file.
- Never embed sensitive information directly in documentation.
- Clearly adhere to data privacy standards (ISO, GDPR, SOC2) where applicable.

## 📁 File & Folder Standards (Global)

- All filenames clearly follow lowercase kebab-case format (`example-file-name.md`).
- All directories clearly contain a relevant `README.md`.

## 🚩 Global Commit & PR Standards

- Use clear, meaningful, and concise commit messages.
- Pull Requests clearly document:
  - High-level summary of changes
  - Standards adherence explicitly referenced
  - Security and compliance checks explicitly confirmed
  - Citations formatted as `【F:<file_path>†L<line_start>-L<line_end>】`

## ✅ Programmatic Checks (Global)

- Clearly validate markdown structure (markdownlint) explicitly before commits.
- Run any specified tests clearly outlined in repo.

## 🔄 Review and Update Schedule (Global)

- Clearly scheduled quarterly reviews, or immediately upon significant workflow changes.

## 📌 Nested AGENTS.md Overrides

- Instructions in nested `AGENTS.md` files explicitly take precedence within their scope.
- Clearly follow nested instructions whenever you interact with files inside specific directories.
- If nested instructions are unclear or ambiguous, explicitly request clarification from the repo owner.

## 🚦 Escalation Path (Global Workflow Issues)

- When unclear, always explicitly ask for clarification from the user before proceeding.
- Never assume instructions that are not explicitly stated.

---

## 🌟 **Alignment & Integration with Nested AGENTS.md files**

| Directory                                 | Primary Focus                                 | Nested AGENTS.md precedence |
|-------------------------------------------|-----------------------------------------------|-----------------------------|
| `/technical-business-analysis`            | Clear BA methods, requirements, user stories. | Overrides global standards clearly. |
| `/change-communications`                  | Enterprise comms, storytelling, clear messaging.| Overrides global standards clearly. |
| `/ai-contentops-workflows`                | AI-driven workflows, prompt engineering.      | Overrides global standards clearly. |
| `/structured-technical-documentation`     | Clear tech standards, dev-friendly clarity.   | Overrides global standards clearly. |
| `/automation-ci-cd-workflows`             | DevOps, automation clarity, structured tasks. | Overrides global standards clearly. |

---

## ⚙️ **Why a Top-Level AGENTS.md Matters**

- Ensures **overall consistency** across your repository.
- Clearly **defines default standards** and **baseline practices**.
- Clearly articulates the relationship between top-level rules and nested exceptions.

---

