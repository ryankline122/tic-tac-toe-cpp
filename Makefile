CC = g++
CFLAGS = -Wall -Wextra -std=c++11
SRC_DIR = src
BUILD_DIR = build
EXECUTABLE = dist/tic-tac-toe

# Recursively find all .cpp files in subdirectories of src
SRC_FILES := $(shell find $(SRC_DIR) -name '*.cpp' -type f)

# Convert .cpp filenames to .o filenames in the build directory
OBJ_FILES = $(patsubst $(SRC_DIR)/%.cpp,$(BUILD_DIR)/%.o,$(SRC_FILES))

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJ_FILES) | $(BUILD_DIR)
	$(CC) $(CFLAGS) -o $@ $^

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp | $(BUILD_DIR)
	$(CC) $(CFLAGS) -c -o $@ $<

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR) $(EXECUTABLE)

.PHONY: all clean

