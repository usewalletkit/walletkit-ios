#!/bin/bash

# Function to check if a command exists
command_exists() {
  command -v "$1" >/dev/null 2>&1
}

# Check if openapi-generator-cli exists
if command_exists "openapi-generator-cli"; then
  OPENAPI_COMMAND="openapi-generator-cli"
# Check if openapi-generator exists
elif command_exists "openapi-generator"; then
  OPENAPI_COMMAND="openapi-generator"
else
  echo "Error: Neither openapi-generator-cli nor openapi-generator found."
  exit 1
fi

# Generate with OpenAPI spec
"$OPENAPI_COMMAND" generate -g swift5 -i openapi.yml -c config.yml

# Update documentation paths
rm -r Documentation/
mv docs/ Documentation/
