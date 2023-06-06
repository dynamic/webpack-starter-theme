# Webpack Starter Theme

## Requirements

* Node ^14
* NPM ^6

### Recommended

* Recommend using NVM if on a Mac workflow. This will allow you to install and switch to different versions of NPM/Node

## Quick start

Navigate to the theme path in the command line. If you are using NVM and not currently on Node 14 or higher, use nvm to switch to a compatibile version.

Run `npm install` to install dependencies.

This will add `node_modules` to your themes folder.

You can transpile dependencies using webpack.

    # npm run dev
    # npm run build

## Webpack

* `npm run dev` is quick, performs less checks and doesn't minify (good for developement)
* `npm run build` performs linting and also minifies compiled code


