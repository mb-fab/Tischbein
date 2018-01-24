
all: parts/projection_all.svg

%.svg: %.scad
	openscad $< -o temp.svg
	cat temp.svg | sed \
		-e "s/lightgray/none/" \
		-e "s/black/red/" \
		-e "s/\"0.5\"/\"0.1px\"/" \
		-e "s/\([0-9]\+\)\([, ]\)/\1mm\2/g" \
		-e "s/\(\[0-9]\+\.[0-9]\+\)/\1mm/g" \
		> $@
#	inkscape temp2.svg --without-gui --export-area-drawing --export-plain-svg=$@
#	rm temp*.svg

clean:
	rm -fr temp*.svg parts/projection*.svg
