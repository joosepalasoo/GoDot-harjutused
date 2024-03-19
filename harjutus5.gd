# joosep alasoo
#19.03.24
#harjutus 5
"""
Koosta antud eksamipunktide statistika jaoks funktsioonid. Vastused kuvatakse konsoolis
7,28,64,51,81,40,21,73,34,98,39,17,33,85,35,44
funktsioon, mis leiab keskmise
funktsioon, mis väljastab kõik punktid
funktsioon, mis väljastab punktid ja hinde kujul 76p - 4
hindamise skaala 90% – 5, 75% – 4, 50% – 3, muu 2 (max 100p)
"""

extends Node
var tulemused =[7,28,64,51,81,40,21,73,34,98,39,17,33,85,35,44]

func _ready():
	tootasu(40.6, 50.5)
	eksamikeskmine(tulemused)
	eksamipunktid(tulemused)
	eksamihinded(tulemused)
func tootasu(tunnid, tasu):
	var tootasu
	if tunnid <= 40:
		tootasu = tunnid * tasu
	else:
		tootasu = 40*tasu+(tunnid-40)*1.5*tunnid
	print(round(tootasu))

func eksamikeskmine(args):
	var sum = 0.0
	for i in args:
		sum += i
	print("%.2f" % (sum/len(args)))

func eksamipunktid(args):
	print(", ".join(args))
	
func eksamihinded(args):
#hindamise skaala 90% – 5, 75% – 4, 50% – 3, muu 2 (max 100p)
	for i in args:
		if i>=90:
			print("punktid:" ,i, "hinne:" ,5,)
		elif i>=75:
			print("punktid:" ,i, "hinne:" ,4,)
		elif i>=50:
			print("punktid:" ,i, "hinne:" ,3,)
		else:
			print("punktid:" ,i, "hinne:" ,2,)

