#!/bin/sh

REPO_URL="https://github.com/locth/OS_LAB2_IMG"

if [ ! -d "OS_LAB2_IMG" ]; then
    git clone "$REPO_URL" OS_LAB2_IMG
fi
