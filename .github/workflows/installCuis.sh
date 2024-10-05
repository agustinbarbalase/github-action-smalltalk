#!/bin/bash

CUIS_UNIVERSITY_DOWNLOAD_PATH="https://github.com/Cuis-University/Cuis-University/releases/download/v6350/linux64.tar.gz"
CUIS_UNIVERSITY_DIR="linux64"

wget $CUIS_UNIVERSITY_DOWNLOAD_PATH --output-document "$CUIS_UNIVERSITY_DIR.tar.gz"
tar -xvzf "$CUIS_UNIVERSITY_DIR.tar.gz"
