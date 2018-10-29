
-- Holograms / floating text Script by Meh
-- Just put in the coordinates you get when standing on the ground, it's above the ground then
-- By default, you only see the hologram when you are within 10m of it.
-- The Default holograms are at the Observatory.
-- You can change the font by changing the first number after the "text".

Citizen.CreateThread(function()
    Holograms()
end)
Drawing = {}
function Holograms()
		while true do
			Citizen.Wait(0)
		for k,v in pairs(ConfigHolo.Pos) do
			
		
			-- Hologram No. 1
		if GetDistanceBetweenCoords( v.Pos.x, v.Pos.y,v.Pos.z, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Drawing.draw3DText( v.Pos.x, v.Pos.y,v.Pos.z - 1.100, v.text, 1, 0.2, 0.1, 255, 255, 255, 215)
		end
		end
			--Hologram No. 2
		if GetDistanceBetweenCoords( -419.50, 1166.00, 326.00, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Drawing.draw3DText( -419.50, 1166.00, 326.00  -1.400, "Discord: discord.me/HailTheSnail",4,0.15,0.1)
			Drawing.draw3DText( -419.50, 1166.00, 326.00  -1.600, "Website: www.BadExample.com",4,0.15,0.1)
			Drawing.draw3DText( -419.50, 1166.00, 326.00  -1.800, "Twitter: @Example",4,0.15,0.1)		
		end	
	end
end


function Drawing.draw3DText(x,y,z,textInput,fontId,scaleX,scaleY,r, g, b, a)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)

    local scale = (1/dist)*20
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov

    SetTextScale(scaleX*scale, scaleY*scale)
    SetTextFont(fontId)
    SetTextProportional(1)
    SetTextColour(r, g, b, a)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(textInput)
    SetDrawOrigin(x,y,z+2, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end
