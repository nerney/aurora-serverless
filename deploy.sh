#!/bin/bash

bash build.sh

rm -rf node_modules

npm i
npm run deploy

rm -rf ./bin
rm -rf node_modules