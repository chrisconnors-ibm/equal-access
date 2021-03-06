[![IBM Equal Access Toolkit is released under the Apache-2.0 license](https://img.shields.io/badge/license-Apache--2.0-blue.svg)](./LICENSE)

# equal-access

Note: This tool release is currently beta. Some links may not resolve.

This Git repository hosts tools that are part of the [IBM Equal Access Toolkit](https://ibm.com/able/toolkit) and supporting components.


## Getting started

* [Node Version 12](https://nodejs.org/en/download/).

### Clone Repository

```bash
$ git clone --branch=master https://github.com/IBMa/equal-access.git
$ cd accessibility-checker
```
or with SSH

```bash
$ git clone --branch=master git@github.com:IBMa/equal-access.git
$ cd accessibility-checker
```

### Install dependencies

Under the equal-access directory 

```
npm install
```
Now you can select the tool you want to use and follow the README.MD instructions 


### What's in this repository?

Please review the README.md of each tool/components for more information

Tools (description above):
* [accessibility-checker-extension](accessibility-checker-extension/README.md): A web browser extensions that adds automated accessibility checking capabilities
* [accessibility-checker](accessibility-checker/README.md): Automated accessibility testing for Node-based test environments
* [karma-accessibility-checker](karma-accessibility-checker/README.md): Automated accessibility testing for the Karma environment

Components:
* [accessibility-checker-engine](accessibility-checker-engine/README.md): accessibility rules and evaluation engine used by 
* [rule-server](https://github.com/IBMa/equal-access/tree/master/rule-server): deploys the rules and engine for usage by the tools


## Usage

You can build all the tools from the root directory or build each individual tool separately.  

### Build all the tools from root directory

cd to equal-access if you are not already in the directory, then run:

```bash
$ npm install
$ npm run build
```

#### The following libraries or tools are built by running the above commands

* In the equal-access/accessibility-checker-engine/dist directory
  * ace-debug.js: uncompressed javascript to be used in a browser environment for development
  * ace.js: compressed javascript to be used in a browser environment for production
  * ace-node-debug.js: uncompressed javascript library to be used in a NodeJS environment for development
  * ace-node.js: compressed javascript library to be used in a NodeJS environment for production
* In the equal-access/accessibility-checker/package directory
  * java script source that can be installed or deployed as npm package that works with an HTML parsing engines such as Selenium, Puppeteer, or Zombie to allow developers to perform integrated accessibility testing within a continuous integration pipeline such as Travis CI. Please view more [details](accessibility-checker/src/README.md).
* In the equal-access/karma-accessibility-checker/package directory
  * javascript source that can be used as a Karma plugin, see more [details](karma-accessibility-checker/README.md).  

### Build each individual tool separately

Please check README for each individual tool for its build instruction:

* [accessibility-checker-engine](accessibility-checker-engine/README.md)
* [accessibility-checker-extension](accessibility-checker-extension/README.md)
* [accessibility-checker](accessibility-checker/README.md)
* [karma-accessibility-checker](karma-accessibility-checker/README.md) 