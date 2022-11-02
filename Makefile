# go binary path
EXE = $(shell which go)

# binary name
BIN = http11

# library path
#LIB = github.com/lib/pq

# certification files
#CRT = certificate.crt 
#KEY = private.key

# sources
SRC = http11.go

# task
# compile
$(BIN): clean fmt preprocess
	@$(EXE) build

# format
fmt:
	@$(EXE)fmt -w $(SRC)

# preprocess
preprocess:
#	@$(EXE) get $(LIB) 

# clean
clean:
ifeq ("$(shell ls | grep -x $(BIN))", "$(BIN)")
	@rm $(BIN)
endif

#.PHONY
#.PHONY: preprocess
