# Set APPNAME to 'cliapp' by default if not provided
APPNAME ?= cliapp

build:
	cd $(APPNAME) && CGO_ENABLED=0 go build -o ../bin/$(APPNAME) .

clean:
	rm -rf bin/$(APPNAME)

.PHONY: build clean

test:
	# Usage: make test APPNAME=git-auto
	# Runs all tests for the specified app.
	cd $(APPNAME) && go test -v ./...

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
	mkdir -p $(APPNAME); \
	cd $(APPNAME) && \
	  go mod init $(APPNAME) && \
	  go run github.com/spf13/cobra-cli@latest init && \
	  echo 'package main\n\nimport "testing"\n\nfunc TestMain(t *testing.T) {\n    // Example test\n}' > main_test.go

# Remove an app and its binary: make removeapp APPNAME=myapp
removeapp:
	@if [ -z "$(APPNAME)" ]; then \
		echo "Error: APPNAME variable not set. Usage: make removeapp APPNAME=myapp"; \
		exit 1; \
	fi; \
	rm -rf $(APPNAME) bin/$(APPNAME)
