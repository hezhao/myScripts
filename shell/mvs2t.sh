#!/bin/bash
#######################################################################
# rename files (*.mobi) simplified Chinese -> traditional Chinese (UTF-8)
# 
# Kai Yuan 
# kent.yuan at gmail dot com
# 
#######################################################################

find -name "*.mobi"|sed -r 's#^\.\/##'|awk '{ "echo "$0"| iconv -f utf-8 -t gb2312 |iconv -f gb2312 -t big5|iconv -f big5 -t utf8 2>/dev/null"|getline t; print "mv "$0" "t}'|sh 2>/dev/null

