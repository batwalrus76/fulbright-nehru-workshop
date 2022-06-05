## Fulbright-Nehru Lecture 24 Code Quality Metrics

Chancellor T. Pascale
Fulbright-Nehru
Summer 2022

-------------------------------
## Code Quality Metrics

- What is Good Code?
- Static Analysis
- Dynamic Analysis
- Linting
- C/C++ Specific Tooling

-------------------------------
## What is Good Code?

- Only as complex as it needs to be
- Don't reinvent the wheel
- Understandable code is maintainable
- Limit side effects
- Well-documented
- Names should be self-documenting
- Break down code into cohesive and have singular responsibility

-------------------------------
## Static Analysis

- This type of analysis is performed as it is written.
- Usually identifies issues of complexity, known vulnerabilities, test coverage
- Often language-specific, though some analysis is uniform such as lines per method, number of layers of hierarchy, etc.

-------------------------------
## Dynamic Analysis

- Tests code while it is running
- Tests can be forms of penetration testing, vulnerability scans, SQL-injections, etc.
- Good practice to include in CI/CD process.
- Like static analysis can be language-specific but UI based analysis can be done via browser interaction automation tools.

-------------------------------
## Linting

>Linting is the automated checking of your source code for programmatic and stylistic errors. This is done by using a lint tool (otherwise known as linter). A lint tool is a basic static code analyzer. [1]

- These are especially useful as part of development process either as a command or inside the IDE.
- 

-------------------------------
## C/C++ Specific Tooling

- Package management/distribution with Conan and Artifactory
- CI/CD with Jenkins, CircleCI, or Gitlab CI
- Code analysis via SonarQube and Coverity/BullseyeCoverage
- GCC and/or CLang C compilers have strict modes and similar configuration to identify issues during compilation
- IDEs like Eclipse, CLion and have numerous plugins to integrate with other tools

-------------------------------
## Bibliography

1. Bellairs, R. (n.d.). What is lint code? and why is linting important? Perforce Software. Retrieved June 4, 2022, from https://www.perforce.com/blog/qac/what-lint-code-and-why-linting-important.