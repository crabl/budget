BIN_DIR=./bin
SRC_DIR=./src

PROG=main
LIST=$(addprefix $(BIN_DIR)/, $(PROG))

all: $(LIST)

clean:
	rm -rf bin/

$(BIN_DIR)/%: $(SRC_DIR)/%.cbl
	mkdir -p bin
	cobc -x -free -Wall $< -o $@
