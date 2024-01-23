#!/bin/bash

source /root/config.sh

python3 -m pip install --upgrade pip setuptools wheel jstyleson jsonschema

echo **************************
echo * Cloning GIT repository *
echo **************************
git clone https://github.com/EVerest/everest-dev-environment
cd everest-dev-environment/dependency_manager
python3 -m pip install .

echo **************************
echo *   EDM-related steps    *
echo **************************

mkdir -p "$EVEREST_DEV"
edm init main --workspace "$EVEREST_DEV"

echo **************************
echo *   EV_CLI steps         *
echo **************************

cd "$EVEREST_DEV/everest-utils/ev-dev-tools"
python3 -m pip install .
