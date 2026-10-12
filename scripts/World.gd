extends Node3D

@export var platform_scene: PackedScene
@export var initial_count := 12
@export var spacing := 8.0

func _ready():
    randomize()
    if platform_scene == null:
        platform_scene = preload("res://scenes/Platform.tscn")
    for i in range(initial_count):
        spawn_platform(i)

func spawn_platform(i):
    var p = platform_scene.instantiate()
    $PlatformContainer.add_child(p)
    var x = randf_range(-3.0, 3.0)
    p.translation = Vector3(x, 0, -i * spacing)
