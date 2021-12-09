extends Control

func print_hello(name = ''):
	Console.write_line('Hello ' + name + '!')
	
func _ready():
	Console.add_command('sayHello', self, 'print_hello')\
	.set_description('Prints "Hello %name%"')\
	.add_argument('name', TYPE_STRING)\
	.register()
