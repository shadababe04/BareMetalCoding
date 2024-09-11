# Define variables
CC = gcc
AR = ar
CFLAGS = -Wall -c

# Build the static library
libmylib.a: my_library.o
	$(AR) rcs libmylib.a my_library.o

my_library.o: my_library.c
	$(CC) $(CFLAGS) my_library.c

# Build the executable using the static library
main: main.o libmylib.a
	$(CC) -o main main.o libmylib.a

main.o: main.c
	$(CC) $(CFLAGS) main.c

clean:
	rm -f *.o main libmylib.a

