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
	var _iname = "Error"
	var _icost = 1
	var _isprite = 0

	switch(argument0){
		case ITEMS.HEALTH_POTION:
			_iname = "Healing Potion"
			_icost = 8
			_isprite = spr_item_test
			break;
		case ITEMS.LAZY_SWORD:
			_iname = "Lazy Sword"
			_icost = 8
			_isprite = spr_sword
			break;
		case ITEMS.HEALTH_UPGRADE:
			_iname = "Health Upgrade"
			_icost = 13
			_isprite = spr_item_test
			break;
		case ITEMS.USELESS_POTION:
			_iname = "Useless Potion"
			_icost = 4
			_isprite = spr_item_test
			break;
		case ITEMS.LAZY_PICKAXE:
			_iname = "Lazy Pickaxe"
			_icost = 25
			_isprite = spr_pick
			break;
		case ITEMS.HEALTH_UPGRADE_TWO:
			_iname = "Health Upgrade II"
			_icost = 22
			break;
		case ITEMS.LETTER:
			_iname = "Letter"
			_icost = 0
			_isprite = spr_letter
			break;
		case ITEMS.STEEL_BOOTS:
			_iname = "Steel Boots"
			_icost = 30
			_isprite = spr_boots
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
