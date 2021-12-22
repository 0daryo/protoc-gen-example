.PHONY: java-dump
java-dump:
	protoc --java_out=./protoc-gen-dump protoc-gen-dump/sample.proto 

.PHONY: go-dump
go-dump:
	protoc --go_out=. protoc-gen-dump/sample.proto 

.PHONY: dump-install
dump-install:
	go install ./protoc-gen-dump

.PHONY: dump-build
dump-build:
	go build -o ./protoc-gen-dump ./protoc-gen-dump

.PHONY: dump-out
dump-out:
	protoc --plugin=./protoc-gen-dump/protoc-gen-dump --dump_out=. ./protoc-gen-dump/sample.proto


.PHONY: go-option
go-option:
	protoc --go_out=. -I. protoc-gen-option/sample.proto

.PHONY: option-build
option-build:
	go build -o ./protoc-gen-option ./protoc-gen-option

.PHONY: option-out
option-out:
	protoc --plugin=./protoc-gen-option/protoc-gen-option --option_out=./protoc-gen-option ./protoc-gen-option/sample.proto
