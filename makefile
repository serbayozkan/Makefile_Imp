#Test MakeFile
#Reference:https://www3.ntu.edu.sg/home/ehchua/programming/cpp/gcc_make.html

CC=gcc

CFLAGS=-c

LINK_TARGET=test

OBJS= \
	main.o \
	test1.o \
	test2.o

REBUILDABLES= $(OBJS) $(LINK_TARGET)

RM := rm -rf

all: $(LINK_TARGET)

test: $(OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GCC C Linker'
	$(CC) $(OBJS) -o main
	@echo 'Finished building target: $@'
	@echo ' '
	./main 

main.o: main.c
	$(CC) $(CFLAGS) main.c

test1.o: test1.c
	$(CC) $(CFLAGS) test1.c

test2.o: test2.c
	$(CC) $(CFLAGS) test2.c

clean: 
	$(RM) $(REBUILDABLES)


