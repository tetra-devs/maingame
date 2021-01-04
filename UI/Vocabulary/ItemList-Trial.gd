extends Panel

var ItemListContent = ["strI","puruSa","napuMsaka","dhAtu","dhanyavAdaH","svAgatam","kim","kiyat","asti","sundaram","idaM","aham","asmi","vAstavika","mUlya","hIn"]

func _ready():
	#Load the ItemList by stepping through it and adding each item.
	for ItemID in range(len(ItemListContent)):
		get_node("ItemList").add_item(ItemListContent[ItemID],null,true)
				
	get_node("ItemList").select(0,true)  #This sets a default so we don't have to 
	# do error catching if an empty selection is captured.
	get_node("GoButton").connect("pressed",self,"ReportListItem")
	pass

func ReportListItem():
	var ItemNo = get_node("ItemList").get_selected_items()  #The output ItemNo is a list of selected items
	var SelectedItemtext = ItemListContent[ItemNo[0]]
	get_node("Label - output").set_text(str(SelectedItemtext))
	print(ItemNo)
	


func _on_exit_pressed():
	set_visible(false)

