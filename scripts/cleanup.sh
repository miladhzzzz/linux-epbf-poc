#!/bin/bash

# Unload the eBPF program
sudo bpftool prog unloadall

# Detach the eBPF program from the network interface (e.g., ens33)
sudo bpftool net detach xdp dev wlan0

# Delete the BPF map
sudo bpftool map delete name counter

# Remove the compiled eBPF program
rm -f ebpf/ebpf

echo "Cleanup completed successfully."
