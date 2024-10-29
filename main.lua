local MyNewMod = RegisterMod("Extractor", 1)

local function immortality()			
	local player = Isaac.GetPlayer(0)		
	player:SetFullHearts()				
	Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_LIL_BATTERY, 1, player.Position, player.Velocity, player)	
	Isaac.RenderText("Sample text", 50, 30, 1, 1, 1, 255)
end
--local function getInformation()	
---end

local function onRender(t)
	local player = Isaac.GetPlayer()

	local playerPos = player.Position  -- Get the player’s position as a Vector
    local playerHearts = player:GetHearts()
	local playerBombs = player:GetNumBombs()
    local playerKeys = player:GetNumKeys()

	--returns the score

	--positions
    print("Player position: ", playerPos.X, playerPos.Y)
    print("Hearts: ", playerHearts)
    print("Bombs: ", playerBombs)
	print("Keys: ", playerKeys)
    --print("score: ", ScoreSheet.GetTotalScore())

    --Enity 1 ist spieler
	for _, entity in pairs(Isaac.GetRoomEntities()) do
	--	print("Entity type:", entity.Type)
	--	print("Entity position:", entity.Position.X, entity.Position.Y)
	end
end


MyNewMod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, immortality, EntityType.ENTITY_PLAYER)
-- gets called every Render tick
MyNewMod:AddCallback(ModCallbacks.MC_POST_RENDER, onRender)

--Isaac.RenderText("Sample text" .. tostring(score), 50, 30, 1, 1, 1, 255)