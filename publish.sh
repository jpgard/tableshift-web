#!/bin/bash

echo "publishing to branch gh-pages..."
pelican content -o output -s pelicanconf.py
ghp-import output
git push origin gh-pages
echo "publishing complete."