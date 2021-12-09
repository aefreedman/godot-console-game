extends Control

# Console stuff

func set_name(name = ''):
	Console.write_line('Welcome aboard the ' + name + '!')
	shipName = name
	
func get_pos():
	Console.write_line(shipPos)
	
func _ready():
	Console.toggle_console()
	Console.add_command('name', self, 'set_name')\
	.set_description('Sets name to "%name%"')\
	.add_argument('name', TYPE_STRING)\
	.register()
	
	Console.add_command('pos', self, 'get_pos')\
	.set_description('Get ship pos')\
	.register()

# Game Stuff

var shipPos = Vector2(0, 0)
var shipVel = Vector2(1, 1)
var shipName = ''

func _process(delta):
	shipPos += shipVel * delta
