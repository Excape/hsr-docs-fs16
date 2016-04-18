#!/bin/bash
set -e # exit with nonzero exit code if anything fails

#git config
git config user.name "Travis CI"
git config user.email "r1suter@hsr.ch"

#Build with mkdocs into ./site
mkdocs build --clean

#Copy site away
cp -R site/ ../

# Git HEAD is detached - checkout gh-pages
git fetch origin
git checkout -b gh-pages origin/gh-pages

#sync site
rsync -av ../site/ .

#commit
git add .
git commit -m "Deploy from Travis CI"
git push
