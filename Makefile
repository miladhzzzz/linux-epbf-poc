.PHONY: all clean test

all: | generate build

generate:
	cd ebpf && go generate

build: generate
	cd ebpf && go build
	chmod +x ebpf/ebpf

run: build
	sudo ebpf/ebpf

test:
	# Add your test commands here

clean:
	rm -f ebpf/ebpf

.PHONY: clean
