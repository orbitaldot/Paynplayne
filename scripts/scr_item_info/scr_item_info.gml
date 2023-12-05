var iname = "Error"
var icost = 1
var isprite = 0

switch(argument0){
	case 1:
		iname = "Healing Potion"
		icost = 8
		isprite = spr_item_test
		break;
	case 2:
		iname = "Lazy Sword"
		icost = 8
		isprite = spr_sword
		break;
	case 3:
		iname = "Health Upgrade"
		icost = 13
		isprite = spr_item_test
		break;
	case 4:
		iname = "Useless Potion"
		icost = 4
		isprite = spr_item_test
		break;
	case 5:
		iname = "Lazy Pickaxe"
		icost = 25
		isprite = spr_pick
		break;
	case 6:
		iname = "Health Upgrade II"
		icost = 22
		break;
	case 7:
		iname = "Letter"
		icost = 0
		isprite = spr_letter
		break;
	case 8:
		iname = "Steel Boots"
		icost = 30
		isprite = spr_boots
		break;
}

switch(argument1){
	case "name":
		return iname
		break;
	case "cost":
		return icost
		break;
	case "sprite":
		return isprite
		break;
}