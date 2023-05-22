MAKEFLAGS += -j4

# 3/8"  = 9.5 mm
# 1/2"  = 12.7 mm
# 5/16" = 7.9 mm*
# 7/16" = 11.1 mm*
#
# * Not needed as they're within 0.1 mm of metric sizes

SIZES = 7 8 9.5 10 11 12 12.7 14 15

.PHONY: all clean

all: $(patsubst %,hex-socket-%.stl,$(SIZES))

hex-socket-%.stl: hex-socket.scad
	openscad -D size=$* -o $@ $<

clean:
	rm -f $(OUTPUTS)
