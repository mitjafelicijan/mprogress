UNAME := $(shell uname)
MAN_ROOT := /usr/share/man

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

install: mprogress manpage
	install -m 755 mprogress /usr/local/bin

manpage:
	pandoc mprogress.1.md -s -t man -o mprogress.1
	@mkdir -p $(MAN_ROOT)/man1
	cp -f mprogress.1 $(MAN_ROOT)/man1/mprogress.1
	gzip $(MAN_ROOT)/man1/mprogress.1
	mandb
