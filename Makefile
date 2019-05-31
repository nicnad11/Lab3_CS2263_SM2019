#########################################
#
# Created by Joshua Burke & Nicoclas Nadeau
#
##########################################

# compile with gcc, change this to clang if you prefer
COMPILER = gcc

# The C flags to pass to gcc
C_FLAGS = -Wall -Wextra -g

# prepend the command with '@' so that Make does not print the command before running it 
help:
	@printf "available command:\n"
	@printf "	make help               (this command)\n"
	@printf "	make ArraySort          (to build your C program)\n"
	@printf "	make test               (to run every test case)\n"

# link our .o files to make an executable
ArraySort: Stack.o
	$(COMPILER) $(C_FLAGS) -o Stack Stack.o

# compile the files
ArraySort.o: Stack.c
	$(COMPILER) $(C_FLAGS) -c Stack.c

##################################################################
# Test Cases
test: test1 test2 test3

test1: Stack
	./Stack < Data/test1.input

test2: Stack
	./Stack < Data/test2.input

test3: Stack
	./Stack < Data/test3.input