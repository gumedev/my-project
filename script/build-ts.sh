#!/bin/bash

Path_mocha=./node_modules/.bin/mocha

function main(){

    ${Path_mocha} -c --require espower-typescript/guess "./src/ts/test/test-sample.ts"
}
main
