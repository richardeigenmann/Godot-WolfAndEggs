extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
# multiplyer for difficulty. Lower float = faster
var difficulty = 1.1
export (PackedScene) var Egg

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	randomize()
	startGame()

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func startGame():
	var waitTime = rand_range(0.5, 1.5)
	print("startGame: ", waitTime)
	$Chicken1Timer.set_wait_time( waitTime)
	$Chicken1Timer.start()
	


func _on_Chicken1Timer_timeout():
	print("Chicken1Timer_timeout")
	var egg = Egg.instance()
	add_child(egg)
	var waitTime = rand_range(0.5, 1.5)
	$Chicken1Timer.set_wait_time( waitTime)
	$Chicken1Timer.start()
