AnimatedSprite {
	width: 94;
	height: 127;
	frameCount: 20;
	duration: 1000;
	source: "extra.png";
	visible: running;

	show: {
		this.visible = true
		this.start()
	}
}
