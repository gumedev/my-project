#!/bin/bash

Postcss_path=./node_modules/.bin/postcss
Src_file=./src/css/style.css
Dest_file=./src/css/style-dist.css

function main(){

    ${Postcss_path} --no-map --use postcss-nested -o ${Dest_file} ${Src_file}
}
main
