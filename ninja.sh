#!/bin/sh
sudo apt install ninja-build
mkdir ninjabuildsh
cd ninjabuildsh
cmake -GNinja ../
ninja
echo "Ninja build process is finished."

