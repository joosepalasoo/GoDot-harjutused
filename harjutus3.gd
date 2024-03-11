#joosep alasoo
#11.03.24
#harjutus3
"""Loo skript, mis kirjeldab mängija mõõgavõitlust vaenlasega
vaenlase elud 100 ühikut
koosta tsükkel, kus vaenlase elud vähenevad pärast iga lööki
sinu mõõga purustamistjõud on igal löögil suvaline arv vahemikus 8-15
kuva vaenlase elud ja löögid teksina
tsükkel saab läbi, kui vaenlasel on elud otsas
Lisa vajalikud kommentaarid
Täienda koodi nii, et toimub kahevõitlus ja selgita välja võitja.
Et viigi võimalust vähem oleks, anna ühele natuke tugevam mõõk
"""
extends Node

func _ready():
	var vaenlase_elud = 100
	var minu_elud = 100
	while vaenlase_elud > 0 and minu_elud > 0:
		var vaenlase_hit =randi() % 8 + 8
		var mängia_hit =randi() % 8 + 8
		print("enemy life: %d,enemy hit: %d"% [vaenlase_elud, mängia_hit])
		if vaenlase_elud <= 0:
			print("vaenlane suri")
			break
		print("player life: %d,player hit: %d"% [minu_elud, vaenlase_hit])
		if minu_elud <= 0:
			print("sina surid")
			break
		vaenlase_elud -= mängia_hit
		minu_elud -= mängia_hit
	if vaenlase_elud>minu_elud:
		print("sa võitsid")
	else:
		print("sa kaotasid")
		
		
		
func _process(delta):
	pass
