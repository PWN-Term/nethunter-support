PREFIX ?=gcc
PREFIX ?=-I.
ODIR=obj

_OBJ = hid-keyboard.o
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

$(ODIR)/%.o: %.c
	mkdir -p obj/
	$(CC) -c -o $@ $< $(CFLAGS)

hid-keyboard: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

.PHONY: clean

clean:
	rm -rf ${ODIR} hid-keyboard