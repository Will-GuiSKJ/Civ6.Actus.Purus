-- Localization
-- Author: William.Rosa
-- DateCreated: 2/20/2021 7:44:11 PM
--------------------------------------------------------------


UPDATE LocalizedText
	SET
		Text = 'A building unique to Norway. Required to purchase Apostles and Inquisitors with [ICON_Faith] Faith. Holy Site districts get a major (+2) adjacency bonus from each Woods tile. +2 [ICON_PRODUCTION] Production to each coastal resource tile in this city.'
	WHERE
		Language = 'en_US'
		AND Tag = 'LOC_BUILDING_STAVE_CHURCH_DESCRIPTION';
UPDATE EnglishText
	SET
		Text = 'A building unique to Norway. Required to purchase Apostles and Inquisitors with [ICON_Faith] Faith. Holy Site districts get a major (+2) adjacency bonus from each Woods tile. +2 [ICON_PRODUCTION] Production to each coastal resource tile in this city.'
	WHERE
		Tag = 'LOC_BUILDING_STAVE_CHURCH_DESCRIPTION';