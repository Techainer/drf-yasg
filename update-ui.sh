#!/bin/bash
set -ev
npm update

cp node_modules/redoc/dist/redoc.min.js src/drf_yasg/static/drf-yasg/redoc/
cp -r node_modules/swagger-ui-dist src/drf_yasg/static/drf-yasg/
pushd src/drf_yasg/static/drf-yasg/swagger-ui-dist/ >/dev/null
rm -f package.json .npmignore README.md
rm -f index.html *.map
popd >/dev/null
