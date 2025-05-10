# syntax=docker/dockerfile:1
FROM golang:1.22-bullseye

# Install common tools
RUN apt-get update && apt-get install -y git make curl && rm -rf /var/lib/apt/lists/*

# Install golangci-lint
RUN curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b /usr/local/bin v1.58.2

# Install cobra-cli
RUN go install github.com/spf13/cobra-cli@latest

# Set up workdir
WORKDIR /workspace

# Default command
CMD ["bash"]
