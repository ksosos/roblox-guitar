conn = script.Parent.MouseButton1Click:Connect(function()
	print("Xx")
	local Player = game.Players.LocalPlayer
	local character = Player.Character or Player.CharacterAdded:Wait()
	local Humanoid = character:WaitForChild("Humanoid")

	for _,item in pairs(Player.Character:GetDescendants()) do
		if item.Name:lower() == "guitar" then
			local guitar = item
			local Music = guitar.Handle.GuitarSong
					game.ReplicatedStorage:WaitForChild("ueue"):FireServer(Music)
					--Music:Play()
					print"recieved"										
					print("Anim and song played!")
				


			
		end
	end
end )
pcall(function()
	script.Parent.Parent.Parent.Parent.Parent.Unequipped:Connect(function()
		conn:Disconnect()
	end)
end)
