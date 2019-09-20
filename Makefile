src = $(wildcard src/*.c)
obj = $(src:.c=.o)

PROG_NAME = clay

CFLAGS  = -I .
LDFLAGS = -lm

all: $(PROG_NAME)

$(PROG_NAME): $(obj)
	$(CC) -o $@ $^ $(CFLAGS) $(LDFLAGS)

.PHONY: clean all
clean:
	rm -f $(obj) $(PROG_NAME)