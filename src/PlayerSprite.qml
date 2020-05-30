AnimatedSprite {
	property bool moveBackward;
	property bool moving;
	width: 180;
	height: 125;
	frameCount: 7;
	duration: 700;
	source: "sprite.png";
	running: moving;
	repeat: moving;
	focus: true;
	transform.scaleX: moveBackward ? -1 : 1;

	onLeftPressed: {
		if (delayTimer.running)
			return
		this.x -= 15
		this.moving = true
		this.moveBackward = true
		delayTimer.restart()
		movingTimer.restart()
	}

	onRightPressed: {
		if (delayTimer.running)
			return
		this.x += 15
		this.moving = true
		this.moveBackward = false
		delayTimer.restart()
		movingTimer.restart()
	}

	Timer {
		id: delayTimer;
		interval: 100;
	}

	Timer {
		id: movingTimer;
		interval: 200;

		onTriggered: { this.parent.moving = false; this.parent.stop() }
	}

	Behavior on x { Animation { duration: 100; } }
}
