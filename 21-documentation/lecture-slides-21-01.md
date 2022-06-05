## Fulbright-Nehru Lecture 21 Documentation

Chancellor T. Pascale
Fulbright-Nehru
Summer 2022

-------------------------------
## Software Documentation

- What is the General Goal of Documentation
- Design Documentation
- User Documentation
- Code Documentation
- Markdown Documentation
- Doxygen
- Sphinx
- hdoc

-------------------------------
## What is the General Goal of Documentation

- Documentation should inform users and developers of the general intent of the software.
- Better documentation allows for high-level/introductionary material down to information.
- Over the past few years documentation systems support building hierarchical websites.

-------------------------------
## Design Documentation

- Design documents are used to indicate to developers the intent and components that make up a system
- Examples of documents are requirements, process, architecture, and product roadmaps.
- The level of documentation will be based on the software development methodology
- They can be developed completely initially (waterfall) or iteratively/augmentatively (agile).
- Diagrams are very useful and the Uniform Modeling Language (UML) is a standard way to develop them.

[1]

-------------------------------
## User Documentation

- User documentation can be found in many ways, again based on the development methodology.
- Formats are exhaustive user manuals, tutorials, and walkthrough videos.
- They can be distributed with the code (user manuals and README.md's) or externally (websites).
- Good user docs are written in a way that are biased by developer-level management.

-------------------------------
## Code Documentation

- Code can be documented at different levels (from method-level to package-level).
- Many documentation systems require in-code comments to expose information about method arguments, class descriptions, etc.
- Different languages and documentation systems use different annotations to allow linking between classes and types, which is especially useful in rendered websites.

-------------------------------
## Markdown Documentation

- A very simple and general language for generating Word docs, PDF files, and websites.
- It uses a simple syntax that supports the following styles and functional capabilities:
  - Paragraphs, Headers, and other structure 
  - Text-specific styling such as bold, italic, underline
  - Enumerated and bulleted lists
  - Hyperlinks and intradocument links
  - Images and embedded code
- All of the slides in this course were rendered from Markdown.

[2]

-------------------------------
## Doxygen

- The default documentation standard for C++, but can be used with other languages like Java, C#, etc.
- Can output XML, Latex, man pages, and HTML pages
- Renderes documentation based on file extensions
- User the doxygen command line tool and configuration arguments
- Documentation occurs in language-specific multiline comments, which house annotations and the body of the comment to describe the associated method, class, package, etc.
- Annotations such as @param, @todo, @see

[3]

-------------------------------
## Sphinx

- Autogenerate projects initially include conf.py and index.rst files.
- The conf.py configures how the `sphinx` command renders docs, such as html, latex, etc.
- The index.rst is used to determine structural and similar details of output content, files to include or exclude, and which extensions (e.g. `sphinx.ext.autodoc`).
- Can incorporate markdown and html
- There is a lot of support for autodocumentation, which can be enhanced with type information and directives such as Returns, Args, Attributes, etc.

[4]

-------------------------------
## hdoc

- Built to be the modern C/C++ documentation system
- Uses environment variables such as `SRC_ROOT` and `OBJ_ROOT`, for configuring the root of the source code and where to place output objects.
- Includes a subset of Doxygen commands including `@brief`, `@param`, and `@returns`.
- Can incorporate markdown into output files/website and can output docs as markdown.
- The ability to exclude parts of the source root in rendering.
- Support for a variety of build systems and CI/CD services.

[5]

-------------------------------
## Bibliography

1. Technical documentation in software development: Types, best practices, and Tools. AltexSoft. Retrieved June 4, 2022, from https://www.altexsoft.com/blog/business/.technical-documentation-in-software-development-types-best-practices-and-tools/.
2. Gruber, J. (n.d.). Markdown: Basics. Daring Fireball: Markdown Basics. Retrieved June 4, 2022, from https://daringfireball.net/projects/markdown/basics.
3. Special comment blocks. Doxygen Manual: Documenting the code. (n.d.). Retrieved June 4, 2022, from https://doxygen.nl/manual/docblocks.html#docstructure.
4. Welcome. Sphinx documentation. (n.d.). Retrieved June 4, 2022, from https://www.sphinx-doc.org/en/master/index.html.
5. The modern documentation tool for C++. hdoc. (n.d.). Retrieved June 4, 2022, from https://hdoc.io/.