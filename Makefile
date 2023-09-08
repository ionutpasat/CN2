TOP = RISC_V_TB
BIN = $(TOP).vvp
SRC = *.v

$(BIN): $(SRC) $(TEST_SRC)
	iverilog -o $(BIN) -s $(TOP) $(SRC)

.PHONY: all clean test

all: $(BIN)

test: $(BIN)
    vvp $(BIN)

clean:
    rm -f *.vvp *.vcd