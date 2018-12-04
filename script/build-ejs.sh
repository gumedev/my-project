#!/bin/bash

Path_ejs_cli=./node_modules/.bin/ejs-cli
Path_prettier=./node_modules/.bin/prettier
Src_path=./src/ejs

function ejs_cli(){

    echo "@@ build-ejs.sh > ejs_cli"
    ${Path_ejs_cli} --base-dir ${Src_path} "*.ejs" --out ./
}

function prettier_html(){

    echo "@@ build-ejs.sh > prettier_html"
    ${Path_prettier} --parser html --print-width 100 ./src/ejs/template.html
}

function main(){

    ejs_cli
    prettier_html
}
main
