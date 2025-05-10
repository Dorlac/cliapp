# syntax=docker/dockerfile:1
FROM golang:1.22-bullseye

# Install common build tools and linters
RUN apt-get update && apt-get install -y --no-install-recommends \
    git build-essential curl && rm -rf /var/lib/apt/lists/*

# Install golangci-lint
RUN curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b /usr/local/bin v1.56.2

# Install Delve debugger
RUN go install github.com/go-delve/delve/cmd/dlv@latest

WORKDIR /app

COPY . .

RUN go mod download

CMD ["go", "run", "./git-auto/main.go"]
