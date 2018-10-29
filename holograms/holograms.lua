
-- Holograms / floating text Script by Meh
-- Just put in the coordinates you get when standing on the ground, it's above the ground then
-- By default, you only see the hologram when you are within 10m of it.
-- The Default holograms are at the Observatory.

Citizen.CreateThread(function()
    Holograms()
end)

function Holograms()
		while true do
			Citizen.Wait(0)
			-- Hologram No. 1
		if GetDistanceBetweenCoords( -408.50, 1164.00, 326.00, GetEntityCoords(LocalPed())) < 10.0 then
			Draw3DText( -408.50, 1164.00, 326.00  -1.400, "Your",4,0.15,0.1)
			Draw3DText( -408.50, 1164.00, 326.00  -1.600, "text",4,0.15,0.1)
			Draw3DText( -408.50, 1164.00, 326.00  -1.800, "here",4,0.15,0.1)		
		end
			--Hologram No. 2
		if GetDistanceBetweenCoords( -419.50, 1166.00, 326.00, GetEntityCoords(LocalPed())) < 10.0 then
			Draw3DText( -419.50, 1166.00, 326.00  -1.400, "Discord: discord.me/HailTheSnail",4,0.15,0.1)
			Draw3DText( -419.50, 1166.00, 326.00  -1.600, "Website: www.BadExample.com",4,0.15,0.1)
			Draw3DText( -419.50, 1166.00, 326.00  -1.800, "Twitter: @Example",4,0.15,0.1)		
		end	
	end
end