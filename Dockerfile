# Dockerfile
FROM ubuntu:latest

# Install necessary dependencies
RUN apt-get update && \
    apt-get install -y clang llvm libelf-dev libbpf-dev

# Set the working directory
WORKDIR /app

# Copy files into the container
COPY ebpf /app

# Build the eBPF program
RUN clang -O2 -target bpf -c metrics.c -o metrics.elf

# Copy the ELF file to the local machine
CMD ["cp", "metrics.elf", "/app/metrics.elf"]
