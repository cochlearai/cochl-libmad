#!/bin/bash

make clean

git checkout .

rm -rf .deps/
rm -rf Makefile
rm -rf autom4te.cache/
rm -rf config.h
rm -rf config.h.in~
rm -rf config.log
rm -rf config.status
rm -rf libmad.list
rm -rf libtool
rm -rf msvc++/Makefile
rm -rf stamp-h1
