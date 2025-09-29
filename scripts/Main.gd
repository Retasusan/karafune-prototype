extends Node2D

@export var player: NodePath
@export var fruit_preview_scenes: Array[PackedScene]  # プレビュー
@export var fruit_scenes: Array[PackedScene]          # 実体

var current_preview: Node = null
var current_index: int = 0
var player_node: Node2D

func _ready() -> void:
	randomize()
	player_node = get_node(player)
	spawn_preview()

func _process(_delta: float) -> void:
	if not current_preview:
		return

	# Player の位置に追従
	current_preview.position.x = player_node.position.x

	# 落下
	if Input.is_action_just_pressed("ui_accept"):
		drop_fruit()

func spawn_preview() -> void:
	current_index = randi() % fruit_preview_scenes.size()
	current_preview = fruit_preview_scenes[current_index].instantiate()
	add_child(current_preview)

	# Player の位置にスポーン
	if player_node:
		current_preview.position = player_node.position

func drop_fruit() -> void:
	if not current_preview:
		return

	var fruit = fruit_scenes[current_index].instantiate()
	add_child(fruit)
	fruit.position = current_preview.position

	current_preview.queue_free()
	current_preview = null
	spawn_preview()
