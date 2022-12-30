UNAME := $(shell uname)

CC       = clang
CFLAGS   =
LDLIBS   = -lm
INCLUDES =

# MacOS specific
ifeq ($(UNAME), Darwin)
endif

# Linux specific
ifeq ($(UNAME), Linux)
endif

# Debug options (DEBUG=1 make clone)
ifeq ($(DEBUG), 1)
CFLAGS += -W -ggdb
endif

mprogress: clean main.c
	$(CC) -o mprogress main.c $(CFLAGS) $(INCLUDES) $(LDLIBS)

clean:
	-rm mprogress

test: mprogress
	`which bash` test.sh

format:
	clang-format --style=microsoft -i *.c
