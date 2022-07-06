---
marp: true
paginate: true
theme: default
class:
  - lead
  - invert
---

# Fulbright-Nehru Lectures
## 26 Component-based Development


Chancellor T. Pascale
Fulbright-Nehru
Summer 2022

-------------------------------
# How do large teams develop large systems?

- They break their systems up into components.
- Think text editor, core, file system, menu bar
- They can share the same application, threads, and repository
- Or they can be broken up to use each other as libraries, run on different threads, or even across networks

-------------------------------

# Why do this?

- It is very hard to manage teams and code when you have dozens of simultaneous developers.
- It is easier to manage code when there are fewer merge conflicts.
- Having components developed separately means that they can have goals that are thinking beyond the current release
- Clustering developers and resources means that their is more focus and deeper levels of understanding

-------------------------------

# How can this go badly?

- Teams don't communicate
- Teams break contracts (e.g. changing interfaces without notification)
- Teams don't think of how components will communicate enough or how they share resources
    - Two components modifying the same file causing race conditions
    - Components expect too much bandwidth for communications or use too much memory simultaneously and things get slow

-------------------------------

# Best practices

- Regular cross-team communication
- Good documentation of code, design, etc.
- Make components "work" early and don't break that expectation
    - This can be done by creating stubs or proxies for components
    - Each interface between components, once it is defined, can be stubbed to always return valid responses
    - The returned value doesn't have to be processed or real, have the method only have a few lines to build and return a valid response.
- If there are breaking changes give a lot of warning and better to deprecate code and allow its continued use.

