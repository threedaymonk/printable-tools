OUTPUTS = string-lifter.stl

.PHONY: all clean

all: $(OUTPUTS)

%.stl: %.scad
	openscad -o $@ $<

clean:
	rm -f $(OUTPUTS)
