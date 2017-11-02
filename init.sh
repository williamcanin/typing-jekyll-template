#!/bin/bash
#
# Type: Script Shell Installer
# Description: Simple script Management.
#
#
# Supported: Unix
# Release State: 1.0.0
# Script Name: init.sh

# Author: William C. Canin
#   E-Mail: william.costa.canin@gmail.com
#   Home page: https://williamcanin.com

# License:
# The MIT License (MIT)

# Copyright (c) 2017 William C. Canin <william.costa.canin@gmail.com>

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
# ******************************************************************************
#
# Note: Not use with root.
# Usage: bash ghoost help
#

# Import LIBs
source "./sources/lib/shell/global/functions/utils.lib"

# Menu
case $1 in
  install )
    gem install bundler --pre
    bundle install
    msg_finish "Done!"
  ;;
  serve )
      bundle exec jekyll s
      msg_finish "Done!"
    ;;
  build )
      bundle exec jekyll b
      msg_finish "Done!"
    ;;
  post:blog)
    if [[ ! -f "$(ls _vendor/bundle/ruby/*/bin/rake)" ]]; then
      msg_warning "You need Rake to continue. Install the project dependencies first."
      msg_warning "Command: $0 install"
      exit 1
    else
      msg_header "Creating new post \"BLOG\""
      msg_header "Add TITLE:"
      read -p "> " title_
      if [[ -z "${title_}" ]]; then
        msg_error "The TITLE variable is required! Try again."
      else
        bundle exec rake post:blog TITLE="${title_}"
        msg_finish "Done!"
      fi
    fi
    ;;
  post:hello)
    if [[ ! -f "$(ls _vendor/bundle/ruby/*/bin/rake)" ]]; then
      msg_warning "You need Rake to continue. Install the project dependencies first."
      msg_warning "Command: $0 install"
      exit 1
    else
      msg_header "Creating new post \"HELLO\""
      msg_header "Add TITLE:"
      read -p "> " title_
      if [[ -z "${title_}" ]]; then
        msg_error "The TITLE variable is required! Try again."
      else
        bundle exec rake post:hello TITLE="${title_}"
        msg_finish "Done!"
      fi
    fi
    ;;
  clean_production)
    msg_header "Clearing compiled project. Wait ..."
    rm -rf "Gemfile.lock"
    rm -rf "_vendor"
    rm -rf "_site/*"
    rm -rf "assets/javascripts"
    rm -rf "assets/stylesheets"
    msg_finish "Done!"
  ;;
  *|help)
     msg_warning "Usage: $0 { install | build | serve | post:blog | post:hello | clean_production }"
  ;;
esac

