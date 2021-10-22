#!/bin/sh

set -ex

mkdir cpp && cd cpp
git init
printf '#include <stddef.h>\n\nint main() {}\n' > main.cpp
