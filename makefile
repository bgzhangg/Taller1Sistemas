CC = gcc
CFLAGS = -Wall
OBJ = main.o datos.o calculos.o sesion.o
ASM = $(OBJ:.o=.s)

all: programa $(ASM)

programa: $(OBJ)
	$(CC) $(CFLAGS) -o programa $(OBJ) -lm

%.s: %.c
	$(CC) $(CFLAGS) -S $< -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f *.o *.s programa
