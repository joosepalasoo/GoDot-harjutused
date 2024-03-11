#joosep alasoo
#11.03.24
#harjutus4.1


extends Node



func _ready():
	var players = ["Feake","Bradwell","Dreger","Bloggett","Lambole","Daish","Lippiett","
Blackie","Stollenbeck","Houseago","Dugall","Sprowson","Kitley","Mcenamin",
"Allchin","Doghartie","Brierly","Pirrone","Fairnie","Seal","Scoffins",
"Galer","Matevosian","DeBlase","Cubbin","Izzett","Ebi","Clohisey",
"Prater","Probart","Samwaye","Concannon","MacLure","Eliet","Kundt","Reyes"]
	
	print("mängiate arv: ",len(players))
	print("esimene nimi: ",players[0])
	players.sort()
	players.erase("Dreger")
	players.append("joosep")
	var pikim_nimi = ""
	for player in players:
		print(players)
		if len(pikim_nimi) < len(player):
			pikim_nimi = player
		print("pikim_nimi: ", pikim_nimi )
		
	var player = {"name":"john", "str":38, "def":16, "items":["sword","stuff", "bow"],"gold":100}
	print("gold: ", player.gold)
	for i in range(5):
		var addGold = randi() % 20
		print("kulda juurde: ", addGold)
		player.gold+=addGold
	print("gold now: ", player.gold)
		
		
		
		
		
		
		
		
		
func _process(delta):
	pass
