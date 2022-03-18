-- This is not necessary
-- numTerritoriesPerPlayer = {};

function Server_AdvanceTurn_End(game, addNewOrder)
--  Also not necessary, you don't use this anywhere and it will throw an error
--  Index.PlayerID = 0
	local numTerritoriesPerPlayer = {};

--	ok, some better explanation about this loop
--	game.Game.PlayingPlayers contains all the player IDs and the player objects of all players still alive in the game
--	but we don't know which players are playing and what their player ID is, so we use this for loop
--	This for loop runs over every entry (KEY and VALUE) in the table
--	for KEY, VALUE in pairs(TABLE) do		is the general form of this loop
--	Since we only need the playerID (KEY) here we void (_) the VALUE of each entry
--	The KEY is now stored in playerID here. This variable changes with each entry in the table
	for playerID, _ in pairs(game.Game.PlayingPlayers) do
--		We then can do something with the KEY and VALUE (here only the KEY)
		numTerritoriesPerPlayer[playerID] = 0;	-- creates an entry in the TABLE numTerritoriesPerPlayer, with as KEY every player ID
--		print(playerID);
	end

-- 	Now that you know more about loops, I recommend creating one yourself :)
--	here are the things you need:
--		TABLE 	= 	game.ServerGame.LatestTerritoryStanding.Territories
--		KEY 	=	void 		(We don't need it)
--		VALUE	=	territoryStanding
--	Hint: place a print(VALUE) in the loop body 

--  This is the same function as above, so why not combine it :)
--	function Server_AdvanceTurn_End(game, addNewOrder)
--	game.ServerGame.LatestTerritoryStanding.Territories
--	if PlayerID.TerritoryStanding = WL.PlayerID.Neutral then +1 numTerritoriesPerPlayer end
end