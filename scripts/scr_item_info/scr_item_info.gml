enum ITEMS {
	NONE = 0,
	HEALTH_POTION = 1,
	LAZY_SWORD = 2,
	HEALTH_UPGRADE = 3,
	USELESS_POTION = 4,
	LAZY_PICKAXE = 5,
	HEALTH_UPGRADE_TWO = 6,
	LETTER = 7,
	STEEL_BOOTS = 8
}

function scr_item_info(argument0, argument1) {
	var iname = "Error"
	var icost = 1
	var isprite = 0

	switch(argument0){
		case ITEMS.HEALTH_POTION:
			iname = "Healing Potion"
			icost = 8
			isprite = spr_item_test
			break;
		case ITEMS.LAZY_SWORD:
			iname = "Lazy Sword"
			icost = 8
			isprite = spr_sword
			break;
		case ITEMS.HEALTH_UPGRADE:
			iname = "Health Upgrade"
			icost = 13
			isprite = spr_item_test
			break;
		case ITEMS.USELESS_POTION:
			iname = "Useless Potion"
			icost = 4
			isprite = spr_item_test
			break;
		case ITEMS.LAZY_PICKAXE:
			iname = "Lazy Pickaxe"
			icost = 25
			isprite = spr_pick
			break;
		case ITEMS.HEALTH_UPGRADE_TWO:
			iname = "Health Upgrade II"
			icost = 22
			break;
		case ITEMS.LETTER:
			iname = "Letter"
			icost = 0
			isprite = spr_letter
			break;
		case ITEMS.STEEL_BOOTS:
			iname = "Steel Boots"
			icost = 30
			isprite = spr_boots
			break;
	}

	switch(argument1){
		case "name":
			return _iname
			break;
		case "cost":
			return _icost
			break;
		case "sprite":
			return _isprite
			break;
	}


}
