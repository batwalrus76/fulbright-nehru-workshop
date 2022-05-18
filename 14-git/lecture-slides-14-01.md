## Fulbright-Nehru Lecture 14 Git

Chancellor T. Pascale
Fulbright-Nehru
Summer 2022

-------------------------------
## Source Code Management System / Version Control Systems

- Best documented origin of these systems come from IBM in the 1960's and 70's [1]
- Revision Control System (RCS) is the first well-known system [2] and CVS is the follow-on networked SCM
- Subversion then predominates for almost a decade until distributed SCMs prevailed
- Git has won the distributed SCM battle

-------------------------------
## Terminology

- Commit - The saved state of a repository, which can be for multiple files, folders, etc.
- Remote - a VCS server, which based on the model can be a central server or participating computer
- Push - Sending a commit to a remote
- Diff/Hunk - Specific changes to a file, which can be committed without committing all of the file changes
- Merge - Bringing together commits from one branch onto another
- Conflict - When multiple commits are made to overlapping portions of repository asynchronously by multiple clients
- Cherry Pick - Taking parts, but not all, of a commit and applying it to another branch
- Stash - a local commit that is not added to a branch but available to all local branches

-------------------------------

## VCS prior to Git

- Systems like CVS and Subversion made each branch a folder that is a copy of originating branch.
- This made VCS folders really large and duplicative.
- While it made it easier to switch branches in development, just switch folders, merges were incredibly painful.
- They are hard because files need to be compared line by line and if another branches was merged many lines would be flagged.
- Tooling at this time was limited to mostly command line text editors

-------------------------------

## Git

- Developed by Linus Torvalds, the same guy that developed the Linux Kernel
- The initial version was developed over 4 months and then turned over to another contributor
- It replaced the local and centralized VCS with a distributed model
- While one or more central servers are often used (GitHub, GitLab, Bitbucket, etc.) any computer can be a "remote".
- Distributed nature allows tiered and closed code management

-------------------------------

## How Git Changed VCS

- Changes and commits are tracked as hashed differences down to single characters, multiple per file, folder, etc.
- Branches are named (like before) and a collection of commit hashes
- The size of a repository is much closer to the amount of changes to all files in all branches, as opposed to a full copy per branch
- Merges now involve determining if commit hashes point to any overlapping text.
- While merges may be easier, they are still not easy, tooling helps, but intent of changes can be an issue.
- Switching between branches can require artificial commits or stashes, yet again tooling is very important.

-------------------------------

## How Teams Should Use Git

- Teams need to adopt well-defined strategies.
- Frequent commits help, each time there is a major change not just before a merge.
- This makes moving along a set of commits, reverting can save your project if a major bug occurs.
- Major strategies are GitFlow, GitHub Flow, GitLab Flow, and Trunk-based Development. [3]
- Choose the strategy that works for the type of developers you have, server support, and tooling.

-------------------------------

## GitFlow

![bg left](./images/gitflow.png)
[4]

-------------------------------

## GitHub Flow

![bg right](./images/github_flow.jpeg)
[3]

-------------------------------

## GitLab Flow

![bg left](./images/gitlab_flow.png)
[5]

-------------------------------

## Bibliography

1. Wikimedia Foundation. (2022, May 14). Version control. Wikipedia. Retrieved May 17, 2022, from https://en.wikipedia.org/wiki/Version_control.
2. Tichy, W. F. (1985). RCS — a system for version control. Software: Practice and Experience, 15(7), 637–654. https://doi.org/10.1002/spe.4380150703
3. Git branching strategies: Gitflow, Github Flow, trunk based... Flagship.io. (2022, April 4). Retrieved May 17, 2022, from https://www.flagship.io/git-branching-strategies/
4. Driessen, V. (2010, January 5). A successful Git branching model. nvie.com. Retrieved May 17, 2022, from https://nvie.com/posts/a-successful-git-branching-model/
5. Partnership for Advanced Computing in Europe. (n.d.). Gitlab flow · topics · help. Introduction to GitLab Flow. Retrieved May 17, 2022, from https://repository.prace-ri.eu/git/help/topics/gitlab_flow.md
