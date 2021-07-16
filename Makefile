
GIT_HOOKS := .git/hooks/installed
CC := gcc
OBJS := main.o

.PHONY : clean

all : $(GIT_HOOKS) main

$(GIT_HOOKS):
	@scripts/hooks_installation.sh
	@echo

%.o : %.c
	$(CC) -c -o $@ $<

main : $(OBJS)
	$(CC) -o $@ $^

clean:
	-rm main
	-rm *.o

