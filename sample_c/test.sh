#!/bin/bash

# Using assert.sh library: https://github.com/lehmannro/assert.sh

. assert.sh

assert "echo test" "test"
assert "./run 4" "9.2"
assert "./run 4" "9.3"

# end of test suite
assert_end