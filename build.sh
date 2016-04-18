#!/bin/bash
set -e # exit with nonzero exit code if anything fails

#Install Dependecies
apt-get update 
apt-get install -y --no-install-recommends mkdocs
pip install python-markdown-math

#Build with mkdocs
mkdocs gh-deploy --clean
