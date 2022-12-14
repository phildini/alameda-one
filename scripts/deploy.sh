#!/bin/bash
set -euf -o pipefail

datasette publish fly \
  content.db \
  --plugins-dir=plugins \
  --template-dir=templates \
  --static=static:static \
  --install=datasette-render-markdown \
  --install=datasette-template-sql \
  --install=python-dateutil \
  --install=datasette-json-html \
  --app="alameda-one"
