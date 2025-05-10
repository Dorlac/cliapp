# Quick Plan

<!--
This document is an outline for the Git-Auto project, a small automated internal tool for quickly collecting data from a git repo host. It includes notes and guidance for development, tech stack, workflow, and best practices.
-->

## Tools Used

| Purpose                   | Tool / Choice                                      | Notes                                         |
|---------------------------|----------------------------------------------------|-----------------------------------------------|
| CLI framework             | Cobra                                              | Fast CLI development in Go                    |
| HTTP client               | net/http                                           | Standard Go HTTP library                      |
| Formatting/Linting        | go fmt, golangci-lint                              | Best practices, fast, static code analysis    |
| Testing                   | go test, built-in testing, gock/httpmock           | Unit tests, HTTP mocking                      |
| CLI output testing        | os/exec                                            | Run CLI in tests, verify output               |
| Test coverage             | go test -coverprofile                              | Built-in Go coverage                          |
| CI/CD                     | GitHub Actions, softprops/action-gh-release        | Automation, releases                          |
| Code scanning             | CodeQL, DeepSource, Codacy                         | Security, bug detection, free options         |
| AI assistance             | GitHub Copilot or similar                          | Auto-suggest/generate unit tests, PRs         |

---

## Roadmap

| Phase / Task Group         | Task(s)                                                                 | Target / Notes                                 |
|---------------------------|------------------------------------------------------------------------|------------------------------------------------|
| Initial Setup             | Dev container, Go setup, basic repo init                               | Local build, first commit                      |
| CLI Foundation            | CLI structure (Cobra), basic GitLab API calls                          | `gitlab-auto-admin list-projects` working      |
| Testing Infrastructure    | Set up Go unit testing + mock server                                   | Use native Go tools                            |
| Core Testing              | Write critical unit and basic integration tests                        | Cover authentication, main API queries         |
| Feature Expansion         | Expand features (users, permissions), add GitHub Issues feedback loop  | MVP CLI                                        |
| Final Polish              | Run linters and simple test coverage check                             | Final polish                                   |
| Stabilization             | Polish (completion scripts, README, examples), buffer for bugs         | Stable v1.0                                    |
| Stretch: AI-Assisted Testing | AI-assisted auto-suggest unit tests                                 | Auto-suggest tests                             |
| Stretch: AI CLI Help      | Set up AI CLI help and auto-completion                                 | Enhanced CLI usability                         |
| Stretch: CI/CD            | Set up CI/CD (GitHub Actions, project, and releases)                   | Automated builds and releases                  |
| Stretch: Code Scanning    | Enable Code Scanning Alerts + add CodeQL GitHub Action                 | Security and code quality                      |
| Stretch: Config/Flags     | Add internal config + flags to toggle AI features on/off               | Safe rollout of AI features                    |
| Stretch: Cloud/Analytics  | Expand to cloud deployment and advanced analytics                      | Broader deployment and insights                |
| Stretch: Release/AI Boost | Deployment via GitHub Release + softprops/action-gh-release; AI PRs, DeepSource/Codacy | Easy deployment, AI PRs, free code analysis    |

---
