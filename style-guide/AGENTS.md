
---

# Sans Serif Sentiments – Documentation Content & Style Guide

**Version:** 1.0
**Last Updated:** July 30, 2025

> "Content is the bait. Context is the hook. Clarity is the transformation."

This guide establishes the definitive standards for writing, structuring, and governing all technical documentation within the `sans-serif-sentiments` GitHub organization. Its purpose is to ensure our documentation is clear, accurate, consistent, and empathetic to our users' needs.

Adherence to this guide is non-negotiable and it supersedes any inherited or upstream standards.

---

## 📌 1. Core Principles

Our documentation is a product. It must be designed and engineered with the same rigor as our software.

| Principle | Explanation |
| :--- | :--- |
| **Clarity Over Cleverness** | Use simple, direct language. Avoid jargon, complex sentence structures, and clever but potentially confusing phrasing. The goal is to transfer knowledge efficiently. |
| **User-First Empathy** | Write from the user's perspective. Anticipate their goals, pain points, and potential questions. Frame content around what the user is trying to achieve. |
| **Accuracy is Non-Negotiable** | Every technical detail, command, and parameter must be verified. Inaccurate documentation is worse than no documentation. |
| **Consistency Builds Trust** | A consistent structure, tone, and format across all documents creates a predictable and trustworthy user experience. |
| **Context Over Content** | Do not just explain *what* to do; explain *why* it's important. Frame technical instructions with strategic purpose and rationale. |

---

## 🧱 2. Content Archetypes (Diátaxis-Aligned)

Every piece of documentation must map to **exactly one** of the four Diátaxis archetypes. Mixing archetypes within a single file fragments the user's focus and is not permitted. Link to other documents for related but distinct archetypes.

| Archetype | Purpose | Answers the Question... | Starts With... |
| :--- | :--- | :--- | :--- |
| **Tutorial** | Learning-Oriented | "How can I get started with a basic project?" | A clear, achievable, hands-on goal. |
| **How-To Guide** | Task-Oriented | "How do I solve this specific problem?" | An actionable verb (e.g., *Configure*, *Deploy*, *Troubleshoot*). |
| **Reference** | Information-Oriented | "What are the precise details of X?" | Authoritative facts, schemas, or API definitions. |
| **Explanation** | Understanding-Oriented | "Why does X work this way?" or "What's the concept behind X?" | A high-level concept or architectural decision. |

### ✅ Tutorial

A tutorial is a lesson. It guides a newcomer through a series of steps to complete a meaningful project.

- **Structure:** Linear, numbered steps. Start with prerequisites and end with a tangible result.
- **Do:** Promise a specific outcome (e.g., "By the end of this tutorial, you will have a deployed application").
- **Do not:** Explain concepts in-depth. Link to *Explanation* documents instead.

### ✅ How-To Guide

A how-to guide is a recipe to solve a specific problem. It assumes the user has some background knowledge.

- **Structure:** Numbered or bulleted list of instructions.
- **Do:** Focus on one discrete task.
- **Do not:** Include conceptual background or multiple unrelated tasks.

### ✅ Reference

Reference material is technical description. It is encyclopedic and objective.

- **Structure:** Tables, parameter lists, API schemas, command flag definitions.
- **Tone:** Dry, factual, and information-dense.
- **Do not:** Include opinions, advice, or instructions.

### ✅ Explanation

An explanation provides background and context. It builds understanding.

- **Structure:** Primarily prose, often supported by diagrams or historical context.
- **Do:** Discuss trade-offs, design decisions, and high-level architecture.
- **Do not:** Include step-by-step instructions.

---

## ✍️ 3. Voice, Tone, and Mechanics

| Category | Rule | Good Example | Bad Example |
| :--- | :--- | :--- | :--- |
| **Person** | Use second person ("you"). | "You can configure the service..." | "The service can be configured by the user..." |
| **Voice** | Use active voice. | "The linter validates your code." | "Your code is validated by the linter." |
| **Tone** | Keep it calm, direct, and professional. | "This action will delete the database." | "Warning\! You are about to totally delete the database\!" |
| **Contractions** | Use contractions (e.g., `don't`, `it's`, `you'll`) to create a friendly, approachable tone. | "It's important to save your work." | "It is important to save your work." |
| **Anthropomorphism** | Avoid giving human qualities to inanimate objects. | "The service listens for requests on port 8080." | "The service wants to receive requests." |
| **Inclusive Language** | Use globally understood, inclusive language. | `primary/replica`, `allowlist/denylist` | `master/slave`, `whitelist/blacklist` |
| **Sentence Structure** | Write short, simple sentences. One idea per sentence. | "Clone the repository. Then, install the dependencies." | "After you clone the repository, the dependencies must be installed." |
| **Serial Comma** | Use the Oxford (serial) comma in lists of three or more items. | "Configure the client, server, and database." | "Configure the client, server and database." |

---

## 🧾 4. Formatting and Structure

### File & Folder Naming

- Use **lowercase kebab-case** for all file and folder names.
  - ✅ `api-reference.md`
  - ✅ `how-to-configure-tls/`
  - ❌ `APIReference.md`, `ConfigureTLS.md`

### Headings

- Use a single `#` (H1) for the document title, derived from the `title` frontmatter.
- Use `##` (H2) for major sections, and `###` (H3) for sub-sections. Avoid going deeper than `####` (H4).
- Use sentence case for all headings.
  - ✅ `## Configure the production environment`
  - ❌ `## Configure The Production Environment` or `## CONFIGURE...`

### Links

- Use descriptive text that makes sense out of context.
  - ✅ `For more details, see the [deployment checklist](./deployment-checklist.md).`
  - ❌ `For more details, [click here](./checklist.md).`

### Lists

- Use `-` for unordered lists.
- Use `1.` for ordered lists where sequence is critical (e.g., steps in a How-To Guide).

### Emphasis

- Use **bold** (`**text**`) for UI elements, or to add strong emphasis.
- Use *italics* (`*text*`) for conceptual terms on first use.
- Use `backticks` for inline code, commands, variables, file paths, and keys.
  - ✅ Set the `API_KEY` in your `.env` file.
  - ❌ Do not use backticks for emphasis or to quote text.

### Code Blocks

- Always specify the language for syntax highlighting.

- Do not prefix shell commands with `$` or `>` unless demonstrating a complete terminal session with user input and machine output.

    ```bash
    # Install dependencies
    npm install

    # Start the development server
    npm run dev
    ```

---

### Enhance your markdown output to follow the following UX rules

- Use markdown tables wherever roles, outcomes, or comparisons exist
- Include ✅/❌ do/don’t lists where applicable
- Use code blocks for all reusable templates or formatting examples
- Add visual callouts using markdown blockquotes and emoji for Note, Tip, Warning
- Keep all content modular and scannable — no long paragraphs or unstructured prose
- Strictly follow the 15-part documentation structure from AGENTS.md

## 🎨 5. Visuals & Media

### Screenshots

- **Currency:** Screenshots must be current and reflect the latest UI.
- **Annotation:** Use simple boxes or arrows to highlight specific elements.
- **Redaction:** Censor or remove any personal user data, secrets, or internal hostnames.
- **Alt Text:** All images require descriptive alt text. `✅ ![Diagram of the authentication token flow.](./auth-flow.png)`

### Diagrams

- **Prefer Code-Based Diagrams:** Whenever possible, use Mermaid.js for diagrams. This allows them to be version-controlled and updated easily.

    ````text
    ```
    graph TD;
        A[Client] -->|Request| B(API Gateway);
        B --> C{Authentication};
        C -->|Valid| D[Service];
    ```text
    ```

- **Clarity:** Ensure diagrams are simple, legible, and directly support the accompanying text. Describe complex diagrams in an adjacent paragraph.

---

## 📢 6. Callouts

Use blockquotes with a leading emoji to draw attention to critical information.

> 📝 **Note** \> Provides additional context, clarification, or a helpful piece of information.

> 💡 **Tip** \> Suggests an optional best practice, shortcut, or alternative approach.

> ⚠️ **Caution** \> Warns about an action that may have unintended consequences, risk a common mistake, or lead to a sub-optimal result.

> 🛑 **Warning** \> Alerts the user to a high-risk action that could result in data loss, system failure, security vulnerabilities, or other irreversible outcomes.

---

## ♿ 7. Accessibility (a11y)

- **Alt Text:** All images must have meaningful alt text describing their content and purpose.
- **Link Text:** Link text must be descriptive and make sense without surrounding context (See [Links](https://www.google.com/search?q=%23links)).
- **Tables:** Tables must have headers (`| Header 1 | Header 2 |`). Do not use images of tables.
- **Directional Language:** Avoid phrases like "as you can see above" or "in the section below." Use descriptive links to refer to other sections.

---

## 🔐 8. Security & Compliance

- **No Secrets:** Never commit secrets, credentials, passwords, or active API tokens to the repository, even in documentation.
- **Use Placeholders:** Use clear placeholders like `YOUR_API_KEY_HERE` or `_REDACTED_`.
- **Destructive Actions:** Any command or procedure that is destructive (e.g., `rm -rf`, deleting a database) or irreversible *must* be preceded by a `🛑 Warning` callout.
- **Access Control:** When documenting features related to permissions, clearly state the required roles or access levels (e.g., "This action requires `Admin` role.").

---

## 🗃️ 9. Document Lifecycle & Governance

All documentation files must be managed through a clear lifecycle, enforced by frontmatter and regular reviews.

### Frontmatter

All `.md` files must begin with a YAML frontmatter block.

```yaml
---
title: Configure the Staging Environment
archetype: How-To
owner: "@sans-serif-sentiments/team-platform" # GitHub team alias is preferred
status: current # draft | current | needs-review | deprecated | archived
last_reviewed: 2025-07-30
---
```

- **`owner`**: The individual or team (`@org/team-name`) responsible for the document's accuracy.
- **`status`**: The current state of the document.
  - `draft`: Work in progress, not yet published or reliable.
  - `current`: Verified, accurate, and up-to-date.
  - `needs-review`: Outdated or requires verification.
  - `deprecated`: No longer recommended. A newer alternative exists.
  - `archived`: Obsolete and retained only for historical purposes.
- **`last_reviewed`**: The date (`YYYY-MM-DD`) the content was last verified for accuracy.

### Review Cadence

- The `owner` is responsible for reviewing their documents at least **every 6 months**.
- After a review, the `last_reviewed` date must be updated, even if no content changes were made.

### Deprecation & Deletion

- **Do not delete documents.** Deleting files breaks existing URLs and bookmarks.
- To deprecate a document:
    1. Change the `status` in the frontmatter to `deprecated`.
    2. Add a `📝 Note` or `⚠️ Caution` callout at the top of the file explaining that the document is outdated and linking to the recommended replacement.
    3. Eventually, the status can be changed to `archived` and the content can be replaced with a single link to the new resource.

---

## 🤖 10. Linting, Validation & CI

Our CI/CD pipeline automates quality control for all documentation. Pull requests will be blocked if these checks fail.

- **Linting:** All Markdown files must pass validation against our shared `.markdownlint.json` configuration.
- **Frontmatter Validation:** The CI will verify that all required frontmatter fields (`title`, `archetype`, `owner`, `status`, `last_reviewed`) are present and correctly formatted.
- **Script Validation:** All shell scripts (`.sh`) included in documentation examples or repositories must pass `shellcheck`.
- **Link Checking:** The CI will perform checks for broken internal and external links.

---

## 📚 11. Authoritative References

When in doubt, consult these external guides which heavily influenced this standard.

| Standard | Link |
| :--- | :--- |
| Diátaxis Framework | [https://diataxis.fr/](https://diataxis.fr/) |
| Google Developer Documentation Style Guide | [https://developers.google.com/style](https://developers.google.com/style) |
| Microsoft Style Guide | [https://learn.microsoft.com/en-us/style-guide/](https://learn.microsoft.com/en-us/style-guide/) |
| `markdownlint` Rules | [https://github.com/DavidAnson/markdownlint/blob/main/doc/Rules.md](https://www.google.com/search?q=https://github.com/DavidAnson/markdownlint/blob/main/doc/Rules.md) |
