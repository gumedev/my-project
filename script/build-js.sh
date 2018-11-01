#!/bin/bash

Path_browserify=./node_modules/.bin/browserify
Path_uglifyjs=./node_modules/.bin/uglifyjs

function make_bundle_dist(){

    local browserify_base_file=./src/js/main/main.js
    local browserify_src_file=./src/js/main/main-dist.js
    local browserify_dest_file=./src/js/main/bundle-dist.js

    echo 'window.console.log = function(i){ return;};' > ${browserify_src_file}
    cat ${browserify_base_file} >> ${browserify_src_file}

    ${Path_browserify} -o ${browserify_dest_file} ${browserify_src_file}
}

function uglify_js(){

    local src_file=./src/js/main/bundle-dist.js
    local dest_file=./js/bundle.min.js

    ${Path_uglifyjs} --compress --mangle -o ${dest_file} ${src_file}
}

function main(){

    ${Path_browserify} -d -o ./src/js/main/bundle.js ./src/js/main/main.js

    make_bundle_dist
    uglify_js
}
main
