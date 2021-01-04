extends CanvasLayer


var ItemListContent = ["We shall go this way","We shall go that way","which way shall we go?","I think we're lost"]

func _ready():
	#Load the ItemList by stepping through it and adding each item.
	for ItemID in range(4):
		get_node("ItemList").add_item(ItemListContent[ItemID],null,true)

	get_node("ItemList").select(0,true) #This sets a default so we don't have
	# to do error catching if an empty selection is captured.
	get_node("GoButton").connect("pressed",self,"ReportListItem")


func ReportListItem():
	var ItemNo = get_node("ItemList").get_selected_items()

	#The output ItemNo is a list of selected items.  Use this to select
	#The matching component from the associated array, ItemListContent.

	var SelectedItemtext = ItemListContent[ItemNo[0]]
	get_node("Label - output").set_text(str(SelectedItemtext))
	print(ItemNo)
