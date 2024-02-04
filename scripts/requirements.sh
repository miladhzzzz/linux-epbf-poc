#!/bin/bash

# Install clang
sudo apt-get update
sudo apt-get install -y clang

# Install bpftool
sudo apt-get install -y bpfcc-tools bpftool libbpf-dev llvm

# Check if Go is installed, and if not, install it
if ! command -v go &> /dev/null; then
    sudo apt-get install -y golang
fi

echo "Required tools installed successfully."
