extends CharacterBody2D

@export var speed: float = 300.0  # 左右移動速度（ピクセル/秒）

func _process(delta: float) -> void:
	var velocity = Vector2.ZERO

	# 左右キーで移動
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1

	# 速度を反映
	position.x += velocity.x * speed * delta

	# 画面端で制限（オプション）
	position.x = clamp(position.x, 0, 5000)  # 画面幅が800の場合
