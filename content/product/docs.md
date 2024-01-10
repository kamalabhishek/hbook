---
title: Skyflow docs
layout: default
parent: Products
---

# Skyflow docs (DocSite content)

Repository: [https://github.com/skyflowapi/skyflow-docs](https://github.com/skyflowapi/skyflow-docs)

Owner: [Verba](/content/teams/verba)

{: .highlight }
Have a doc request, a bug, or feedback? [Create an issue!](https://skyflow.atlassian.net/secure/CreateIssue.jspa?issuetype=2&pid=10104)

{: .note }
This page covers documentation content (DocSite content, owned by [Verba](/content/teams/verba)), **not** documentation infrastruction (DocSite infra, owned by [DevEx](/content/teams/devex)).

## Description

Skyflow documentation is customer-facing content that has the following goals:

- Get users integrated with Skyflow, from trial to production.
- Scale self-service by providing the content in findable and usable ways.
- Create more trials.
- Create more customers from trials.
- Create more live customers from customers.
- Reduce time to deployment.
- Reduce support tickets.

## Use the documentation

Skyflow documentation is available in the following environments:

- Production: [docs.skyflow.com](https://docs.skyflow.com)
- Blitz: [https://docs.skyflow.dev](https://docs.skyflow.dev)

To contribute to Skyflow documentation, use the following instructions.

### Prerequisites

Before you get started, you need the following:

- [Node.js](https://nodejs.org/) version 14 or greater
- `npm` version 7 or greater

### Run the DocSite server

1. Clone the docs:

    ```bash
    git clone https://github.com/skyflowapi/skyflow-docs
    ```

2. Install dependencies:

    ```bash
    npm i
    ```

3. Start the server:

    ```bash
    npm run start
    ```

4. Create a new branch.
5. Update documentation content as you need to. Most content is in `skyflow-docs/src/pages/content/docs`. See [DocSite Cookbook](https://skyflow.atlassian.net/wiki/spaces/Product/pages/1547436033/DocSite+Cookbook), [DocSite Processes](https://skyflow.atlassian.net/wiki/spaces/Product/pages/1496612867/DocSite+Processes), or [Reference content](https://skyflow.atlassian.net/wiki/spaces/Product/pages/1708064773/Reference+content).
6. Commit changes.
7. Create a PR to merge your changes with the `main` branch.

Once your changes merge into the `main` branch, it is automatically published to [https://docs.skyflow.dev](https://docs.skyflow.dev). Docs publish to production once every two weeks along with product releases.

### Troubleshoot

If you run into problems, try the following:  
When you see any inconsistencies(recent changes not applied) in the app after you start the server:
1. Stop the DocSite server.
2. Clear the Gatsby cache:

    ```bash
    npm run clean
    ```
3. Start the DocSite server:

    ```bash
    npm run start
    ```  

When app fails due to any package dependency:
1. Try to delete `node_modules` and discard `package-lock.json`.
2. Install dependencies: 

    ```bash
    npm i
    ```  
3. Start the server: 
    ```bash
    npm run start
    ```  

When install dependencies fail with Package: Not Found error
1. Set the npm registry:

    ```bash
    npm set registry https://prekarilabs.jfrog.io/prekarilabs/api/npm/npm/
    ```  
2. Login using JFrog npm creds:

    ```bash
    npm login
    ```  
3. Install dependencies:
    ```bash
    npm i
    ```  

When the selected page is not showing up and displaying the "Page not found" page:
1. Check the `routes.json` file for the path name. Correct any spelling mistakes, if any.
2. Verify whether the path name is correctly mapped with the `sideNavItems.json` file.
3. Map them correctly and re-run the application.

When the selected page shows "Page not found" in a new tab:
1. Check if the markdown file exists.
2. If the file exists, verify if the file name is correctly mapped in the `routes.json` file.


## Get help

If you need help with Skyflow docs, contact [Verba](/content/teams/verba).

## Provide feedback

To report a bug or send feedback, [create an issue](https://skyflow.atlassian.net/secure/CreateIssue.jspa?issuetype=2&pid=10104).
