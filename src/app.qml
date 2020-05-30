Item {
	anchors.fill: context;

	Image {
		anchors.fill: parent;
		source: "bg.png";
	}

	PlayerSprite {
		id: player;
		y: 500s;

		ClickMixin { }

		onSelectPressed: { extraMove.show() }
		onClicked: { extraMove.show() }
	}

	ExtraMoveSprite {
		id: extraMove;
		y: 450s;
		x: player.x + 65s;
	}
}
