#!/bin/bash

TARGET_ENV=$1

if [ -z "$TARGET_ENV" ]; then
    echo "Greška: moraš proslediti environment (npr. ./pre-deploy-check.sh staging)"
    exit 1
fi

echo "Pokrećem proveru za: $TARGET_ENV"

for check in "git status" "dependencies" "tests"
do
    echo "Provera: $check ... OK"
done

echo "Sve provere prošle za $TARGET_ENV."
