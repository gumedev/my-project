#!/bin/bash

Path_ejs_cli=./node_modules/.bin/ejs-cli
Src_path=./src/ejs

function main(){

    echo "@@ build-ejs.sh > main"
    ${Path_ejs_cli} --base-dir ${Src_path} "*.ejs" --out ./
}
main
