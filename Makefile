CC = gcc
CFLAGS = -Wall -std=c99 -O2 -Isrc/dependencies/include
LDFLAGS = -Lsrc/dependencies/library -lglfw3 -lglew32 -lopengl32 -lgdi32

SRC_DIR = src
SRC = $(wildcard $(SRC_DIR)/*.c)
OBJ = $(SRC:.c=.o)
OUTPUT = app.exe

all: $(OUTPUT)

$(OUTPUT): $(OBJ)
	$(CC) $(OBJ) -o $@ $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	del /Q $(SRC_DIR)\*.o $(OUTPUT)
