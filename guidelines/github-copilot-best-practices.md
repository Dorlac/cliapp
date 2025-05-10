# GitHub Copilot Best Practices for This Project

## 1. Use Copilot for Rapid Prototyping
- Let Copilot suggest boilerplate code for new CLI commands, API calls, and test cases.
- Use Copilot to quickly scaffold new features, then review and refactor for clarity and security.

## 2. Prompt Engineering
- Write clear, descriptive comments and function docstrings to guide Copilot’s suggestions.
- Use TODOs and inline comments to indicate intent or edge cases you want Copilot to address.

## 3. Code Quality & Security
- Always review Copilot’s output for correctness, security, and style. Don’t accept suggestions blindly.
- Use Copilot to generate unit and integration tests, but validate that tests cover real edge cases and error handling.
- Prefer explicit error handling and logging in CLI tools—edit Copilot’s output to match project standards.

## 4. AI-Assisted Code Review
- Use Copilot to draft pull request descriptions and summarize code changes.
- Pair Copilot with static analysis (golangci-lint, CodeQL, etc.) to catch issues Copilot might miss.
- If using Copilot Chat, ask for alternative implementations or explanations of complex code.

## 5. Collaboration & Documentation
- Use Copilot to help write and update documentation, usage examples, and CLI help text.
- Encourage team members to share effective Copilot prompts and review Copilot-generated code together.

## 6. Privacy & Compliance
- Avoid pasting sensitive credentials, tokens, or proprietary data into prompts.
- Review Copilot’s license and data usage policies to ensure compliance with your organization’s requirements.

## 7. Continuous Learning
- Stay updated on new Copilot features (e.g., Copilot CLI, Copilot for PRs) and integrate them into your workflow.
- Use Copilot’s suggestions as a learning tool—review why it made certain choices and research best practices.

---
