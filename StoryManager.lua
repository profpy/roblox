--Special achnowledgement @polarpanda16.

	-- GLOBAL VARIABLES
	local storyMaker = require(script:WaitForChild("StoryMaker"))

	-- Code controlling the game
	local playing = true

	while playing do
		storyMaker:Reset()
	
		-- Code story between the dashes	
		-- =============================================

		local quiz = {["What version of Lua is Roblox using?"] = "5.1",
			["What is the current version of Lua?"] = "5.3",
			["What country was Lua created in?"] = "brazil",
			["What language is Lua written in?"] = "c",
			["Does Lua require semicolons?"] = "no",
			["What data type would you use to create an array?"] = "table",
			["The symbol for exponent is"] = "^",
			["The symbol for modulus operator is"] = "%",
			["Does Lua start counting from 0 or 1?"] = "0",
			["Lua is more than 25 years old?"] = "yes"
			}
		local correct = 0
		local count = 0
		for key, value in pairs(quiz) do
			count = count + 1
		 	local answer = storyMaker:GetInput(key)
			if answer:lower() == value then
				correct = correct + 1
				local story = "correct!"
				storyMaker:Write(story)
				
			else
				local story = "sorry, the correct answer is " .. value
				storyMaker:Write(story)
			end
			wait(2)
		end
		local story = "You got " .. correct / count * 100 .. "% correct!"

		-- =============================================
		
		-- Calls StoryMaker ModuleScript
		storyMaker:Write(story)
	
		-- Play again?
		playing = storyMaker:PlayAgain()
	end
