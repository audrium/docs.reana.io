#!/bin/sh

npx -p markdownlint-cli markdownlint docs/* || exit 1 && \
awesome_bot --allow-dupe --skip-save-results --allow-redirect docs/**/*.md && \
mkdocs build -v && \
rm -rf site/
