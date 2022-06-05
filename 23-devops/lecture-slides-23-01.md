## Fulbright-Nehru Lecture 23 DevOps

Chancellor T. Pascale
Fulbright-Nehru
Summer 2022

-------------------------------
## DevOps

- Dev + Ops = DevOps
- Continuous Integration and Testing
- Regression Testing
- Dev | Test | Prod Environments
- Red-Black vs Blue-Green vs Canary Deployments
- Continuous Deployment
- Bug vs Issue vs Feature Tracking
- DevSecOps

-------------------------------
## Dev + Ops = DevOps

- This is one of the most popular terms in recent history
>DevOps is the combination of cultural philosophies, practices, and tools that increases an organization’s ability to deliver applications and services at high velocity: evolving and improving products at a faster pace than organizations using traditional software development and infrastructure management processes.

![w:10000 h:176](./images/DevOps.png)
[1]

-------------------------------
## Continuous Integration and Testing

>software development practice where developers regularly merge their code changes into a central repository, after which automated builds and tests are run. [2]

- This encourages making issues smaller, committing quicker, and gaining confidence easier.
- If you can test your code in an environment that is similar to production, which leads to continuous deployment.

-------------------------------
## Regression Testing

- Used to identify if the quality of the code has been lowered.
- Done by taking relative metrics like % coverage, % of tests passed, etc. and checking that changes don't decrease those numbers
- With good tooling or even source code management, can easily identify root causes or even keep updates from being merged or worse deployed.
- By far the most important regression tests is related to breaking interfaces, since they not only can cause failures to the offending system but to all systems that interact via the interface.

-------------------------------
## Dev | Test | Prod Environments

- This is the way to create environments that are built similarly
- With similar infrastructure there is less "It worked on my system"
- With Infrastructure as Code (IaC) dev and test can be destroyed and rebuilt quickly
- You can stress test your deployments on their own
- Prod can also respond to system failures buy complete rebuild

-------------------------------
## Red-Black vs Blue-Green vs Canary Deployments

>in blue-green deployment, both versions may be getting requests at the same time temporarily, while in red-black only one of the versions is getting traffic at any point in time [3]
- Canary deployments are similar to above, except that you seed a single instance of the new code, content, system, etc. into prod, hence the canary tells you if something is wrong in the mine.
- Generally, you are using a subset of traffic/usage to identify any issues could cause a catastrophic issue.
- These will not identify all issues and is dependent upon the amount of traffic and how much of it interacts with new code.

-------------------------------
## Continuous Deployment

>Continuous Delivery is the ability to get changes of all types—including new features, configuration changes, bug fixes and experiments—into production, or into the hands of users, safely and quickly in a sustainable way. [4]

- Examples of CD technologies such as Docker, Kubernetes, OpenShift, Ansible, Terraform, Puppet.
- The idea is to use configuration or code to deploy updated code, resources, and infrastructure as part of an automated process, generally in conjunction with CI.

-------------------------------
## Bug vs Issue vs Feature Tracking

- These are the 3 major types of work/labels for code updates.
- A bug is a defect identified either in an automated fashion or by a human.
- Issues can be minor or major but they are more about problems with functionality, e.g. a page loads slow or uses too much resources.
- Features are new capabilities to be added to the existing code, artifacts, or services
- Having procedures for managing these is important, to save time and to ensure that for release-based deployments and timelines that late features don't make your system brittle or over budget.

-------------------------------
## Bibliography

1. Freeman, E. (2019). DevOps. Amazon. Retrieved June 4, 2022, from https://aws.amazon.com/devops/what-is-devops/ 
2. Freeman, E. (2019). DevOps. Amazon. Retrieved June 4, 2022, from https://aws.amazon.com/devops/continuous-integration/.
3. Octopus Deploy. (n.d.). What is the difference between blue/green and red/black deployments? Octopus Deploy. Retrieved June 4, 2022, from https://octopus.com/blog/blue-green-red-black.
4. Continuous delivery. What is Continuous Delivery? - Continuous Delivery. (n.d.). Retrieved June 4, 2022, from https://continuousdelivery.com/ 