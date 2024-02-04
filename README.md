# eBPF PoC Project

This project is a Proof of Concept (PoC) for eBPF that I created to learn more about this technology. It includes a simple BPF script that is run using Go and Python. The project also includes automation scripts written in shell, a Makefile for building the project, and a Dockerfile for containerizing the project.

## Getting Started

To get started with this project, follow these steps:

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/ebpf-poc-project.git
    ````

2. Install required packages (Linux):

    ````shell
    cd scripts
    chmod +x requirements.sh
    ./requirements.sh

3. Build and run the project using make (binary go):

    ````shell
    make all
    ````

4. Build a docker image to run the project(go):

    ````shell
    # Build the docker image
    docker build -t ebpf-poc:latest .
    # run the container
    docker run ebpf-poc:latest
    ````

5. Run the python script:

    ````shell
    cd python
    pip install -r requirements.txt
    python ebpf.py
    ````

6. also theres shell scripts for running the project located at /scripts.
