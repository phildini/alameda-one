#!/bin/bash
set -eu -o pipefail

sqlite-utils content.db 'drop table if exists news'

# Populate news table
markdown-to-sqlite content.db news news/*.md
