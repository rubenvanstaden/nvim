#!/bin/bash

# ---------------------------------------------------------------------------
# Copyright (c) 2021 by Anyon Systems Inc.  All rights reserved.          ***
# This computer program is a property of Anyon Systems Inc.               ***
# and may contain confidential trade secrets.                             ***
# Use, examination, copying, transfer and disclosure to others,           ***
# in whole or in part, are prohibited except with the express prior       ***
# written consent of Anyon Systems Inc.                                   ***
# ---------------------------------------------------------------------------

set -ex

docker run --volume "$PWD/nvim:/root/.config/nvim" -it --rm nvim-image zsh
