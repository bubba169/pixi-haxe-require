# Bundlable Pixi Externs for Haxe

Externs for [Pixi.js](https://pixijs.com/) that can be bundled using a bundler such as webpack.

## Usage
Recommended to be used with haxe-loader and webpack and requires that a pixi.js file be present in the same directory as the hxml.

This pixi.js can either be a file with the following content:

    export * from 'pixi.js';


Or it can be a more specialised build using a bundler config from [Pixi Customise](https://pixijs.io/customize/)