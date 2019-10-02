#!/usr/bin/env bash

source src/lib/sh/utils.sh

ROOT_VENDOR="assets/vendor"
VENDORJS_DIR="${ROOT_VENDOR}/js"
NODE_MODULES="vendor/node_modules"

# Copying vendor
if [[ ! -d "$VENDORJS_DIR" ]]; then
    msg_header "Create folder 'assets/vendor/js'..."
    mkdir -p ${VENDORJS_DIR}
    msg_finish "Folder 'vendor', created!"
fi

msg_header "Copying Jquery, Bootstrap JS, PopperJS, Simple Search Jekyll..."
cp -f ${NODE_MODULES}/jquery/dist/jquery.min.js ${VENDORJS_DIR}
cp -f ${NODE_MODULES}/popper.js/dist/umd/popper.min.js ${VENDORJS_DIR}
cp -f ${NODE_MODULES}/bootstrap/dist/js/bootstrap.min.js ${VENDORJS_DIR}
cp -f ${NODE_MODULES}/simple-jekyll-search/dest/simple-jekyll-search.min.js ${VENDORJS_DIR}
msg_finish "Jquery, Bootstrap JS, PopperJS, Simple Search Jekyll,  Copied!"