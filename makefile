CC = gcc
CFLAGS = -Wall -Wextra -O2
TARGET = payload

all: $(TARGET)

$(TARGET): payload.c
	$(CC) $(CFLAGS) payload.c -o $(TARGET)

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET)

.PHONY: all run clean
