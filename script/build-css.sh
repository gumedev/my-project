#!/bin/bash

Postcss_path=./node_modules/.bin/postcss
Src_file=./src/css/style.css
Dest_file=./src/css/style.min.css

function main(){

    local nested=postcss-nested
    local import=postcss-import
    local variable=postcss-simple-vars
    local minify=cssnano

    # --useはarray
    ${Postcss_path} --no-map \
		    --use ${import} ${nested} ${variable} ${minify} \
		    -o ${Dest_file} ${Src_file}
}
main
