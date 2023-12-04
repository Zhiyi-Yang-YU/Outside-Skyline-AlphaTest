extends Node


const _TEST_MESSAGE: Array = [
	{speaker = "Developer: ", speakerCamp = DialogBox.NEUTRAL, text = "Testing message 1A1A1A1"},
	{speaker = "Developer: ", speakerCamp = DialogBox.NEUTRAL, text = "Testing message 2B2B2B2"},
	{speaker = "Developer: ", speakerCamp = DialogBox.NEUTRAL, text = "Testing message 3C3C3C3"},
	{speaker = "Developer: ", speakerCamp = DialogBox.NEUTRAL, text = "Testing message 4D4D4D4"},
]

const _0_001: Array = [
	{
		speaker = "Developer: ",
		speakerCamp = DialogBox.NEUTRAL,
		text = "Welcome to Alpha Test (Game Milestone 2), This is developer speaking"
	},
	{
		speaker = "Developer: ",
		speakerCamp = DialogBox.NEUTRAL,
		text = "Don't rush to be dispointed on this, this level is not everything"
	},
	{
		speaker = "Developer: ",
		speakerCamp = DialogBox.NEUTRAL,
		text = "Go talk to Mr.Blue, he wants to show you something"
	},
]

const _0_002: Array = [
	{
		speaker = "Mr.Blue: ", 
		speakerCamp = DialogBox.FRIENDLY, 
		text = "Welcome back, My friend"},
	{
		speaker = "Mr.Blue: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "This is the last time you see me here"
	},
	{
		speaker = "Mr.Blue: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "You won't see this milestone 1 part in future"
	},
	{
		speaker = "Player: ", 
		speakerCamp = DialogBox.FRIENDLY, 
		text = "em...Have we meet before?"
	},
	{
		speaker = "Mr.Blue: ", 
		speakerCamp = DialogBox.ENEMY, 
		text = "You make me sad..."
	},
	{
		speaker = "Player: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Wait, why your name became red?"
	},
	{
		speaker = "Mr.Blue: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Just want to show you our totally reconstructed dialog system"
	},
	{
		speaker = "Player: ", 
		speakerCamp = DialogBox.FRIENDLY, 
		text = "You scared me..."},
	{
		speaker = "Player: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = 'Just like Makarov in "No Russian", COD 6'
	},
	{
		speaker = "Mr.Blue: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Yes, Developer refers to the Call of Duty 19 Style Subtitle"
	},
	# {
	# 	speaker = "Mr.Blue: ",
	# 	speakerCamp = DialogBox.ENEMY,
	# 	text = "When speaker is red, enemies are speaking"
	# },
	# {
	# 	speaker = "Mr.Blue: ",
	# 	speakerCamp = DialogBox.ENEMY,
	# 	text = "Don't attack me, this is only a demo, and maybe there is no enemy in this game"
	# },
	# {
	# 	speaker = "Mr.Blue: ",
	# 	speakerCamp = DialogBox.FRIENDLY,
	# 	text = "When speaker is blue, friendlys are speaking"
	# },
	# {
	# 	speaker = "Mr.Blue: ",
	# 	speakerCamp = DialogBox.NEUTRAL,
	# 	text = "When speaker is yellow,the speaker belongs to neutral camps"
	# },
	{
		speaker = "Developer: ",
		speakerCamp = DialogBox.NEUTRAL,
		text = "Don't ask me why do we have this setting, just want to try"
	},
	{
		speaker = "Mr.Blue: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "no more wasting time"
	},
	{
		speaker = "Mr.Blue: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "I will send you to the real milestone 2 level"
	},
	{
		speaker = "Mr.Blue: ", 
		speakerCamp = DialogBox.FRIENDLY, 
		text = "Enjoy :)"},
]

const _1_001: Array = [
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Hey! Look at this! It's a shooting star!"
	},
	{
		speaker = "Raingo's Friend: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Wow! They say wishing on a shooting star..."
	},
	{
		speaker = "Raingo's Friend: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "...can make your wish come true!"
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Make a wish!"
	},
	{
		speaker = "",
		speakerCamp = DialogBox.FRIENDLY,
		text = ""
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "What is your wish?"
	},
	{
		speaker = "Raingo's Friend: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "It doesn't work when you talk about it"
	},	
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Oh, yeah, I... know...?"
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Wait! Do you think..."
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "There's something wrong with... this shooting star?"
	},
	{
		speaker = "",
		speakerCamp = DialogBox.FRIENDLY,
		text = ""
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "It'S COMING TO US!!!"
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "RUN!!!"
	},
	{
		speaker = "Meteorite: ",
		speakerCamp = DialogBox.ENEMY,
		text = "(Explosion)"
	},
	{
		speaker = "Civilians: ",
		speakerCamp = DialogBox.NEUTRAL,
		text = "(Screaming)"
	},
	{
		speaker = "System: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "WASD to move, SpaceBar to jump"
	},
	{
		speaker = "Target: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "ESCAPE THE TOWN!"
	},
]

const _2_001: Array = []

const _FAKE_ENDING: Array = [
	{
		speaker = "System: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "Finally, you escaped"
	},
	{
		speaker = "System: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "Do you really think so?"
	},
	{
		speaker = "System: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "You sure you don't want to know..."
	},
	{
		speaker = "System: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "...what is behind the wall?"
	},
	{
		speaker = "System: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "Always remember the name of game:"
	},
	{
		speaker = "System: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "OUTSIDE SKYLINE"
	},
	{
		speaker = "Developer: ",
		speakerCamp = DialogBox.NEUTRAL,
		text = "You just unlock the Fake Ending"
	},
	{
		speaker = "Developer: ",
		speakerCamp = DialogBox.NEUTRAL,
		text = "Real Ending is not done yet, waiting for final result"
	},
]

const _REAL_ENDING: Array = [
	{
		speaker = "System: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "Congratulations! You escaped!"
	},
	{
		speaker = "System: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "FOR REAL!"
	},
	{
		speaker = "System: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "Not only the town!"
	},
	{
		speaker = "System: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "You...escaped from this game!"
	},
	{
		speaker = "System: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "System... shuting down on..."
	},
	{
		speaker = "System: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "3...2...1..."
	},
]