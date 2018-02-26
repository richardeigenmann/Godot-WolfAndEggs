extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
# multiplyer for difficulty. Lower float = faster
var difficulty = 1.1
export (PackedScene) var NewEgg

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
	$Chicken1Timer.set_wait_time( waitTime)
	$Chicken1Timer.start()

	waitTime = rand_range(0.5, 1.5)
	$Chicken2Timer.set_wait_time( waitTime)
	$Chicken2Timer.start()

	waitTime = rand_range(0.5, 1.5)
	$Chicken3Timer.set_wait_time( waitTime)
	$Chicken3Timer.start()
	
	waitTime = rand_range(0.5, 1.5)
	$Chicken4Timer.set_wait_time( waitTime)
	$Chicken4Timer.start()


func _on_Chicken1Timer_timeout():
	var egg = NewEgg.instance()
	add_child(egg)
	egg.position = Vector2(44,175)
	var waitTime = rand_range(0.8, 2.5)
	$Chicken1Timer.set_wait_time( waitTime)
	$Chicken1Timer.start()

func _on_Chicken2Timer_timeout():
	var egg = NewEgg.instance()
	add_child(egg)
	egg.position = Vector2(44,315)
	var waitTime = rand_range(0.8, 2.5)
	$Chicken2Timer.set_wait_time( waitTime)
	$Chicken2Timer.start()

func _on_Chicken3Timer_timeout():
	var egg = NewEgg.instance()
	add_child(egg)
	egg.position = Vector2(795,175)
	var waitTime = rand_range(0.8, 2.5)
	$Chicken3Timer.set_wait_time( waitTime)
	$Chicken3Timer.start()

func _on_Chicken4Timer_timeout():
	var egg = NewEgg.instance()
	add_child(egg)
	egg.position = Vector2(795,315)
	var waitTime = rand_range(0.8, 2.5)
	$Chicken4Timer.set_wait_time( waitTime)
	$Chicken4Timer.start()


func _on_Area2D_body_entered( body ):
	print("something entered me!")
