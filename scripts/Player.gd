extends CharacterBody3D

@export var forward_speed := 8.0
@export var lateral_speed := 6.0
@export var jump_velocity := 6.0

var vel := Vector3.ZERO

func _physics_process(delta):
    # Auto forward along -Z
    vel.z = -forward_speed

    # Lateral movement
    var dir := 0
    if Input.is_action_pressed("ui_left"):
        dir -= 1
    if Input.is_action_pressed("ui_right"):
        dir += 1
    vel.x = dir * lateral_speed

    # Gravity & jump
    if not is_on_floor():
        vel.y -= 24.8 * delta
    else:
        if Input.is_action_just_pressed("ui_accept"):
            vel.y = jump_velocity

    # Move
    vel = move_and_slide(vel, Vector3.UP)

    # Simple fallback: if falling below y = -20, reset position
    if global_transform.origin.y < -20:
        global_transform.origin = Vector3(0, 4, 0)
        vel = Vector3.ZERO
