# AI Application Generation Prompt Template

Use this template to guide a generative AI tool (such as GitHub Copilot) to scaffold a new CLI application in this repository. Fill in the sections below with your requirements. Refer to `README.md` for project structure and `github-copilot-best-practices.md` for effective prompt engineering and review guidelines.

---

## Project Overview
- **App Name:** <your-app-name>
- **Short Description:** <what does your CLI app do?>
- **Primary Language:** Go
- **Key Features:**
  - <feature 1>
  - <feature 2>
  - <feature 3>

## Commands to Scaffold
List the CLI commands your app should support. For each, provide a brief description and any required flags/options.

- **Command:** <command-name>
  - **Description:** <what does this command do?>
  - **Flags/Options:** <list flags, e.g., --verbose, --output>

(Repeat for each command)

## Example Usage
Provide example command-line invocations and expected output.

```
$ <your-app-name> <command> [flags]
# Expected output:
...
```

## Additional Requirements
- <e.g., logging, error handling, integration with APIs, etc.>

## Testing & Documentation
- Generate unit and integration tests for all commands and features.
- Add usage examples to CLI help text.
- Update README.md with new commands, features, and troubleshooting tips.
- Ensure tests cover both typical and edge-case scenarios (e.g., error handling, empty results, invalid input).
- Prefer integration tests that invoke the built CLI binary for realistic coverage.
- **Create a README.md for your new CLI app and place it in the app's subdirectory.**

## Project Setup Instructions for AI Tools
- **Before generating code, always read the `Makefile` and `README.md` in the root of the project to understand the required structure and automation.**
- **Only use the commands provided in the Makefile (e.g., `make newapp`, `make build`, `make test`) for scaffolding, building, and testing your CLI app. Do not run Go commands directly unless instructed by the Makefile.**

---

**Prompt for Copilot/AI Tool:**

> Using the information above, scaffold a new Go CLI application in this repository following the structure and automation described in README.md. **All application-specific code, commands, and tests must be generated in a dedicated subdirectory named after your app (e.g., `myapp/`), separate from existing project and guideline files.** Adhere to the best practices in `guidelines/github-copilot-best-practices.md` for code quality, security, and documentation. Generate code, tests, and help text as specified. Do not include sensitive data or credentials. Only stop when all requirements and tests are satisfied. Be sure to create a README.md for your new CLI app in its subdirectory, and only use Makefile commands for all automation steps.
