#!/usr/bin/env bash
# test_makefile.sh - Automated tests for Makefile functionality
set -euo pipefail

fail() {
  echo "[FAIL] $1" >&2
  exit 1
}

# Clean up from previous runs
echo "Cleaning up..."
make removeapp APPNAME=testcli || true
rm -rf bin/testcli

# Test: newapp

echo "Testing: make newapp APPNAME=testcli"
make newapp APPNAME=testcli || fail "make newapp failed"
[ -d testcli ] || fail "testcli directory not created"
[ -f testcli/main.go ] || fail "main.go not created"
[ -f testcli/go.mod ] || fail "go.mod not created"
[ -f testcli/main_test.go ] || fail "main_test.go not created"

# Test: build

echo "Testing: make build APPNAME=testcli"
make build APPNAME=testcli || fail "make build failed"
[ -f bin/testcli ] || fail "Binary not created"

# Test: test

echo "Testing: make test APPNAME=testcli"
make test APPNAME=testcli || fail "make test failed"

# Test: clean

echo "Testing: make clean APPNAME=testcli"
make clean APPNAME=testcli || fail "make clean failed"
[ ! -f bin/testcli ] || fail "Binary not removed by clean"

# Test: removeapp

echo "Testing: make removeapp APPNAME=testcli"
make removeapp APPNAME=testcli || fail "make removeapp failed"
[ ! -d testcli ] || fail "App directory not removed by removeapp"

# Success
echo "[PASS] All Makefile automation tests succeeded."

# Final cleanup
make removeapp APPNAME=testcli || true
rm -rf bin/testcli
