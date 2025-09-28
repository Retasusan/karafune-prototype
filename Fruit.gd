extends RigidBody2D
class_name Fruit

@export var fruit_type: String = "orange"
@export var next_fruit_scene: PackedScene

var is_combining: bool = false

func _ready():
	contact_monitor = true
	max_contacts_reported = 4
	connect("body_entered", Callable(self, "_on_body_entered"))

func _on_body_entered(body: Node) -> void:
	if is_combining:
		return
	if body is Fruit and body.fruit_type == fruit_type:
		is_combining = true
		body.is_combining = true
		combine_with(body)

func combine_with(other: Fruit) -> void:
	if not next_fruit_scene:
		return

	var new_pos = (position + other.position) / 2

	# 元のフルーツを削除
	queue_free()
	other.queue_free()

	# 新しいフルーツを生成
	var new_fruit = next_fruit_scene.instantiate()
	get_parent().add_child(new_fruit)
	new_fruit.position = new_pos
