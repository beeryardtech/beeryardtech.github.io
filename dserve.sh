#!/bin/bash -
###############################################################################
# Author: Travis Goldie
# Purpose: Start Jekyll Serve using dev config
###############################################################################
bundle exec jekyll clean build
/usr/bin/google-chrome-beta --disable-web-security --incognito --remote-debugging-port=9222 --ignore-certificate-errors _site/index.html
bundle exec jekyll serve --verbose --watch  --config _config.yml,_config.dev.yml
