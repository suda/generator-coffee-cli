# generator-coffee-cli [![NPM version](https://badge.fury.io/js/generator-coffee-cli.png)](http://badge.fury.io/js/generator-coffee-cli)

> Generate a command line application for node.js using CoffeeScrpt.

Based on [generator-node-cli](https://github.com/jonschlinkert/generator-node-cli).

## Install
Install globally with [npm](npmjs.org):

```bash
npm i -g generator-coffee-cli --save-dev
```

## Usage
Once installed globally, simply run `yo coffee-cli` to generate a new project.

After you generate your new project, to test drive the example run the following in the command line:

```bash
node bin/[your cli name] -t "Create a new CLI!"
```

## Generator options
Command: `-s` | `--skip-install`

Skips the automatic execution of `bower` and `npm` after scaffolding has finished.

Command: `-w` | `--skip-welcome-message`

Skips the Yeoman welcome message.

## License
Copyright (c) 2015 Wojtek Siudzinski, contributors.  
Released under the MIT license
