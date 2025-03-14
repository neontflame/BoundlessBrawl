
image_xscale = size / 256;
image_yscale = size / 256;

if (instance_exists(anchor)) {
	x = anchor.x + (xOffset * anchor.image_xscale);
	y = anchor.y + yOffset;
}

