#!/bin/bash

set -e
set -u
set -o pipefail

if [ -d test_smeft ]; then
	rm -r test_smeft
fi

if [ -f py.py ]; then
	rm py.py
fi

mg5_aMC test_smeft.mg5
