#!/bin/bash

Path_browserify=./node_modules/.bin/browserify

function main(){

    ${Path_browserify} -d -o ./src/js/main/bundle.js ./src/js/main/main.js
}
main
