#!/bin/bash

cd ..

python -m venv venv || python3 -m venv venv || py -m venv venv || py3 -m venv venv
source venv/bin/activate || .\venv\Scripts\activate
pip install -r internal/env/requirements.txt

# shellcheck disable=SC2164
cd core
sanic server