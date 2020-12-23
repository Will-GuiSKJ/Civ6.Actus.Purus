-- Code
-- Author: William.Rosa
-- DateCreated: 5/25/2020 7:17:25 AM
--------------------------------------------------------------

-- Start Bias
INSERT INTO StartBiasTerrains (CivilizationType, TerrainType, Tier) 
	VALUES 
		 ('CIVILIZATION_JAPAN', 'TERRAIN_COAST', '4')
		,('CIVILIZATION_ARABIA', 'TERRAIN_DESERT', '5')
		,('CIVILIZATION_ARABIA', 'TERRAIN_DESERT_HILLS', '5')
		,('CIVILIZATION_EGYPT', 'TERRAIN_DESERT', '5')
		,('CIVILIZATION_EGYPT', 'TERRAIN_DESERT_HILLS', '5')
		,('CIVILIZATION_NORWAY', 'TERRAIN_TUNDRA', '5')
		,('CIVILIZATION_NORWAY', 'TERRAIN_TUNDRA_HILLS', '5'),
		 ('CIVILIZATION_BRAZIL', 'TERRAIN_COAST', '4');

UPDATE StartBiasTerrains
	SET
		Tier = '2'
	WHERE
		CivilizationType = 'CIVILIZATION_NORWAY'
		AND TerrainType = 'TERRAIN_COAST';

INSERT INTO StartBiasResources (CivilizationType, ResourceType, Tier) 
	VALUES 
		 ('CIVILIZATION_NORWAY', 'RESOURCE_CRABS', '4')
		,('CIVILIZATION_NORWAY', 'RESOURCE_FISH', '3')
		,('CIVILIZATION_NORWAY', 'RESOURCE_PEARLS', '5')
		,('CIVILIZATION_NORWAY', 'RESOURCE_WHALES', '5')
		,('CIVILIZATION_NORWAY', 'RESOURCE_TURTLES', '5');

UPDATE StartBiasFeatures
	SET
		Tier = '4'
	WHERE
		CivilizationType = 'CIVILIZATION_NORWAY'
		AND FeatureType = 'FEATURE_FOREST';


-- Leader Balances
--(Norway)
UPDATE ModifierArguments
	SET
		Value = '2'
	WHERE
		ModifierId = 'STAVE_CHURCH_FAITHWOODSADJACENCY'
		AND Name = 'Amount';
UPDATE ModifierArguments
	SET
		Value = '2'
	WHERE
		ModifierId = 'STAVECHURCH_SEARESOURCE_PRODUCTION'
		AND Name = 'Amount';


-- Unit Balances
UPDATE UnitUpgrades
	SET
		UpgradeUnit = 'UNIT_CROSSBOWMAN'
	WHERE
		Unit = 'UNIT_SCYTHIAN_HORSE_ARCHER';

UPDATE UnitUpgrades
	SET
		UpgradeUnit = 'UNIT_BOMBARD'
	WHERE
		Unit = 'UNIT_KHMER_DOMREY';

UPDATE UnitUpgrades
	SET
		UpgradeUnit = 'UNIT_CUIRASSIER'
	WHERE
		Unit = 'UNIT_INDIAN_VARU'
		OR Unit = 'UNIT_POLISH_HUSSAR';

UPDATE UnitUpgrades
	SET
		UpgradeUnit = 'UNIT_TANK'
	WHERE
		Unit = 'UNIT_AMERICAN_ROUGH_RIDER';

UPDATE UnitUpgrades
	SET
		UpgradeUnit = 'UNIT_HELICOPTER'
	WHERE
		Unit = 'UNIT_CANADA_MOUNTIE';

UPDATE Units
	SET
		PrereqDistrict = NULL
	WHERE
		UnitType = 'UNIT_BIPLANE'
		OR UnitType = 'UNIT_FIGHTER'
		OR UnitType = 'UNIT_AMERICAN_P51'
		OR UnitType = 'UNIT_JET_FIGHTER'
		OR UnitType = 'UNIT_BOMBER'
		OR UnitType = 'UNIT__JET_BOMBER';

UPDATE Units
	SET
		BaseSightRange = 3
		,BaseMoves = 4
		,RangedCombat = 75
		,Range = 1
		,AntiAirCombat = 80
	WHERE
		UnitType = 'UNIT_AIRCRAFT_CARRIER';

UPDATE Units
	SET
		Combat = 75
	WHERE
		UnitType = 'UNIT_NUCLEAR_SUBMARINE';

UPDATE Units
	SET
		Combat = 28
	WHERE
		UnitType = 'UNIT_GREEK_HOPLITE';

UPDATE Units
	SET
		Cost = 30
	WHERE
		UnitType = 'UNIT_CREE_OKIHTCITAW';

UPDATE Units
	SET
		Cost = 120
		,Maintnance = 2
	WHERE
		UnitType = 'UNIT_NORWEGIAN_BERSERKER'
		OR UnitType = 'UNIT_GEORGIAN_KHEVSURETI'
		OR UnitType = 'UNIT_JAPANESE_SAMURAI';

UPDATE Units
	SET
		Cost = 180
	WHERE
		UnitType = 'UNIT_KHMER_DOMREY';

UPDATE Units
	SET
		Cost = 300
	WHERE
		UnitType = 'UNIT_FRENCH_GARDE_IMPERIALE'
		OR UnitType = 'UNIT_ENGLISH_REDCOAT';

UPDATE Units
	SET
		Cost = 330
	WHERE
		UnitType = 'UNIT_AMERICAN_ROUGH_RIDER';

UPDATE Units
	SET
		Cost = 350
	WHERE
		UnitType = 'UNIT_CANADA_MOUNTIE';
		
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType)
	VALUES 
		 ('UNIT_BABYLONIAN_SABUM_KIBITTUM', 'UNIT_WARRIOR');