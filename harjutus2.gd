#joosep alasoo
#05.03.24
#harjutus 2
extends Node

func _ready():
	var rahakogus = 100
	var tootesumma=randi()%200
	if rahakogus >= tootesumma:
		print("saad toodet osta juhuuu!")
	else:
		var jaak=tootesumma-rahakogus
		print("ei saa toodet osta puudujääev raha:",jaak)
	print(rahakogus)
	print(tootesumma)
	pass

	
