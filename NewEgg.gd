extends RigidBody2D

signal cracked

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	print("egg ready!")
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Egg_body_entered( body ):
	hide()
	emit_signal("cracked")
	print("cracked")
	$CollisionShape2D.disabled = true

