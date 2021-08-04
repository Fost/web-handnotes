#!/bin/bash

set -e

echo [INFO] Linting README...
markdownlint README.md --fix

echo [INFO] Linting the source files... This might take some time.

markdownlint src/**/*.md --fix
