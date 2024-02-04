#!/bin/bash

# Change directory to ../ebpf
cd ../ebpf || { echo "Error: Unable to change directory to ../ebpf"; exit 1; }

# Running Go generate for bpf2go
go generate || { echo "Error: Failed to run 'go generate'"; exit 1; }

# Running Go Build
go build || { echo "Error: Failed to build the Go binary"; exit 1; }

# Make the binary executable
chmod +x ebpf || { echo "Error: Failed to make the binary executable"; exit 1; }

# Run the Go Binary with sudo
sudo ./ebpf || { echo "Error: Failed to run the Go binary with sudo"; exit 1; }

echo "eBPF program ran successfully"
