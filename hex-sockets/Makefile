SIZES = 7 8 9.5 10 11 12 12.7 14 15
OUTPUTS = $(patsubst %,hex-socket-%.stl,$(SIZES))

.PHONY: all clean

all: $(OUTPUTS)

hex-socket-%.stl: hex-socket.scad
	openscad -D size=$* -o $@ $<

clean:
	rm -f $(OUTPUTS)
