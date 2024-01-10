---
title: Home
layout: default
nav_order: 1
permalink: /
---

# Skyflow Team Handbook

Welcome to the Skyflow team handbook! Though it is inspired by [Gitlab](https://about.gitlab.com/handbook/), it is strictly for internal use only at Skyflow.

The main motivation of the handbook is to democratize information so that every Skywalker can innovate at pace. The information is organized in such a way that it can be browsed using the left navigation pane, or you can use the search bar at the top.

All content and supporting source code is present in the handbook [repo](https://github.com/skyflowapi/handbook).


{: #ssot}

## Single source of truth (SSoT)

This information architecture helps us eliminate repetition and creates the singular place we look for information. Duplicate content increases maintenance cost as mutliple places need to be updated. Maintaining accuracy of the information becomes harder as it is easy to miss one copy of the information. It also means that the source of truth is stored in a single system so it is easily discoverable.

{: .note }
>We will phase out all other sources of information.  
>Proposals like VAT documents may live as Google docs as they are in the proposal phase and might need online editing. Once an agreement is reached and implementation begins, all relevant information should be moved to the handbook. The VAT document may be retained for evidentiary value.
>Functional Specifications (PRD) once reviewed in VAT and once published to doc.skyflow.com should not be linked in the handbook. Any relevant information that is not in any of those locations should be added to the handbook products page. 

To follow this model, make sure to link items withing the handbook to avoid repeating yourself. If some content needs to be added in a new place, make sure to replace the old copy with a link. External links should be provided for content captured in other formats like meeting recordings, external tools, etc.

The `truth` part is also critical. It means that the information has been vetted and is updated before any change is implemented. Please [contribute](#contribute) to the handbook by making improvements and keeping the information accurate.

## System of record (SoR)

Handbook is the system of record, which is to say it is the authoritative source of data and information. While a single source of truth is always the system of record, the opposite is not always true. Both are true in the case of handbook.

## Hanbook first/Remote first

Documenting a change in the handbook before undergoing it may require more time initially because you have to think through the change, integrate it with the existing content, and then possibly add to or refactor the handbook to have a proper foundation. But, it saves time overall, because it simplifies cummunication overhead and the team knows where to find the information and can help themselves. This form of communication is essential to our ability to scale efficiently, remain effective, and continue to innovate at pace.

This process is not unlike writing tests for your software. Just like writing tests after developing the software is painful, expensive, and ineffective, so is documenting things after the fact. The best practice is to refrain from using other forms of communication like email, slack, presentation, etc., to communicate changes. Those forms of communication might be more convenient for the presenter but it makes it harder for the audience to understand the context and its full implications.

Skyflow is a remote first company with team members spread across the globe in various timezones. We no longer have the proverbial water cooler conversations and we cannot turn around and to find the OG who has the full context on the issue at hand. As Skyflow continues to scale, handbook is no longer a choice but a necessity.

{: #contribute }

## Contribute to the handbook

For many of the changes, you can simply use the web-based [editor](https://docs.github.com/en/codespaces/the-githubdev-web-based-editor) to make edits, create a PR and merge your commit. For more complex updates, you can clone the repo and work locally.

1. Clone the repo using [ssh](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)

    ```bash
    git clone git@github.com:skyflowapi/handbook.git
    ```

2. Make edits to pages in `/content`. For info on functional capabilities, see the following:
    - Framework, content, and site structure: [Jekyll](https://jekyllrb.com/docs/)
    - Variables, conditionals, and other template processing: [Liquid](https://shopify.github.io/liquid/)
    - Navigation and UI component syntax: [Just the Docs](https://just-the-docs.github.io/just-the-docs/)
    - Diagrams-as-code syntax: [Mermaid.js](https://mermaid.js.org/intro/)
3. Preview your changes locally:

    1. Install dependencies: `make dep`
    2. Install gems: `make build`
    3. Run the server: `make run`

    Alternatively, if you use VSCode, you can run the Dev Container. This automatically builds and runs the handbook.

    The server is available at [http://localhost:4000](http://localhost:4000).
4. Commit your changes.

    To make updates, please create a PR for main branch and get it reviewed by a couple of your peers. When you merge your PR into `main`, GitHub Actions builds and deploys the updated handbook.

## Additional documentation

External Skyflow information is available at the following locations:

- Website: [www.skyflow.com](https://www.skyflow.com)
- DocSite: [docs.skyflow.com](https://docs.skyflow.com)

## Terms of use

The Skyflow Team Handbook is for internal use only.
