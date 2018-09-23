#!/bin/bash

Package_json=./package.json
Path_mocha=./node_modules/.bin/mocha
Path_prettier=./node_modules/.bin/tslint
Path_tsc=./node_modules/.bin/tsc

function tslint(){

    echo "@@ build-ts.sh > tslint"
    cat ${Package_json} | jq -r .tsFile.lint[] | while read tslint_file_line
    do
	echo "@ prettier: ${tslint_file_line}"
	${Path_prettier} --config ./tslint.json --fix ./src/ts/main/sample.ts ${tslint_file_line}
    done
}


function tstest(){

    echo "@@ build-ts.sh > tstest"
    cat ${Package_json} | jq -r .tsFile.test[] | while read test_file_line
    do
	echo "@ espower-typescript/guess: ${test_file_line}"
	${Path_mocha} -c --require espower-typescript/guess ${test_file_line}
    done
}

function tstranspile(){

    local lib='es2016','dom'

    echo "@@ build-ts.sh > tstranspile"
    ${Path_tsc} --lib ${lib} --outDir ./src/js/main/ ./src/ts/main/*.ts
}

function main(){

    tslint
    tstest
    tstranspile
}
main
