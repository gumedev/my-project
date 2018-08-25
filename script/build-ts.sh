#!/bin/bash

Package_json=./package.json
Path_mocha=./node_modules/.bin/mocha
Path_prettier=./node_modules/.bin/tslint

function tslint(){

    cat ${Package_json} | jq -r .tslintFile[] | while read tslint_file_line
    do
	${Path_prettier} --config ./tslint.json --fix ./src/ts/main/sample.ts ${tslint_file_line}
    done
}
tslint

function main(){

    ${Path_mocha} -c --require espower-typescript/guess "./src/ts/test/test-sample.ts"
}
main
