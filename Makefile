# the Compiler
CC = gcc

OBJDIR = obj
CFLAGS = -std=c99 -Wall
#INCLUDE = -I./include
INCLUDE = -Iinclude
OUTPUT = lispy

all:
	mkdir -p $(OBJDIR)
	$(CC) -c $(CFLAGS) $(INCLUDE) src/lispy.c -o $(OBJDIR)/lispy.o
	$(CC) -c $(CFLAGS) $(INCLUDE) src/mpc.c -o $(OBJDIR)/mpc.o
	$(CC) -c $(CFLAGS) $(INCLUDE) src/lval.c -o $(OBJDIR)/lval.o
	$(CC) -c $(CFLAGS) $(INCLUDE) src/lenv.c -o $(OBJDIR)/lenv.o
	$(CC) -c $(CFLAGS) $(INCLUDE) src/main.c -o $(OBJDIR)/main.o
	$(CC) -c $(CFLAGS) $(INCLUDE) src/file.c -o $(OBJDIR)/file.o
	$(CC) $(OBJDIR)/*.o lib/libedit.so.2.11 -lm -o $(OUTPUT)

clean:
	rm $(OBJDIR)/*.o $(OUTPUT)
