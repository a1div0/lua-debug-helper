SHELL := /bin/bash

.rocks:
	tarantoolctl rocks install luacheck 0.26.0 \
	&& tarantoolctl rocks install luatest 0.5.7 \
	&& tarantoolctl rocks install luacov 0.13.0 \
	&& tarantoolctl rocks install luacov-reporters 0.1.0

.PHONY: test
test: .rocks
	.rocks/bin/luacheck lua-debug-helper --max-line-length 200 \
	&& .rocks/bin/luatest -v --coverage \
	&& .rocks/bin/luacov -r summary && cat luacov.report.out
