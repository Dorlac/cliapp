# Set APPNAME to 'cliapp' by default if not provided
APPNAME ?= cliapp

build:
	CGO_ENABLED=0 go build -o bin/$(APPNAME) ./$(APPNAME)/main.go

clean:
	rm -rf bin/$(APPNAME)

.PHONY: build clean

test:
	go test -v ./$(APPNAME)/...

lint:
	golangci-lint run ./$(APPNAME)/...

format:
	go fmt ./$(APPNAME)/...

# Usage: make newapp APPNAME=myapp
newapp:
	@if [ -z "$(APPNAME)" ]; then \
		echo "Error: APPNAME variable not set. Usage: make newapp APPNAME=myapp"; \
		exit 1; \
	fi; \
	if [ -d "$(APPNAME)" ]; then \
		echo "Directory $(APPNAME) already exists."; \
		exit 1; \
	fi; \
	mkdir -p $(APPNAME)/cmd; \
	printf 'package main\n\nimport "fmt"\n\nfunc main() {\n    fmt.Println("Hello from %s!")\n}\n' "$(APPNAME)" > $(APPNAME)/main.go

# Remove an app and its binary: make removeapp APPNAME=myapp
removeapp:
	@if [ -z "$(APPNAME)" ]; then \
		echo "Error: APPNAME variable not set. Usage: make removeapp APPNAME=myapp"; \
		exit 1; \
	fi; \
	rm -rf $(APPNAME) bin/$(APPNAME)
