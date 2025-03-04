#!/bin/bash

echo "Installing dependencies with Poetry..."
poetry install --no-root

echo "Running the generator script..."
poetry run python3 script.py

echo "Serving the generated content at http://localhost:8000"
python3 -m http.server --directory dist 8000
