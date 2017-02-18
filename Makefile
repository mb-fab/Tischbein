
all: projection.svg

%.svg: %.scad
	openscad $< -o temp.svg
	cat temp.svg | sed -e "s/lightgray/none/" -e "s/black/red/" -e "s/\"0.5\"/\"0.1px\"/" -e "s/<path /<path transform=\"scale\(3.54\)\" /" > $@
#	inkscape temp2.svg --without-gui --export-area-drawing --export-plain-svg=$@
	rm temp*.svg

clean:
	rm -fr temp*.svg projection.svg
