extends Node


const _TEST_MESSAGE: Array = [
	{speaker = "Developer: ", speakerCamp = DialogBox.FRIENDLY, text = "Testing message 1A1A1A1"},
	{speaker = "Developer: ", speakerCamp = DialogBox.NEUTRAL, text = "Testing message 2B2B2B2"},
	{speaker = "Developer: ", speakerCamp = DialogBox.ENEMY, text = "Testing message 3C3C3C3"},
	{speaker = "Developer: ", speakerCamp = DialogBox.SYSTEM, text = "Testing message 4D4D4D4"},
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
		speaker = "Raingo's Friend: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Hey! Look at this! It's a shooting star!"
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Wow! They say wishing on a shooting star..."
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "...can make your wish come true!"
	},
	{
		speaker = "Raingo's Friend: ",
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
		text = "Wait, Do you think..."
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
		speaker = "",
		speakerCamp = DialogBox.FRIENDLY,
		text = ""
	},
	{
		speaker = "System: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "WASD to move, SpaceBar to jump"
	},
	{
		speaker = "",
		speakerCamp = DialogBox.FRIENDLY,
		text = ""
	},
	{
		speaker = "Raingo's Friend: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Help my friend! He is traped by fire!"
	},
	{
		speaker = "Police 1: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Too many causities caused by this Meteorite"
	},
	{
		speaker = "Police 2: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "We cover you to safe place, we will help your firend!"
	},
	{
		speaker = "",
		speakerCamp = DialogBox.FRIENDLY,
		text = ""
	},
	{
		speaker = "System: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "Now get up!!!"
	},
	{
		speaker = "Target: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "ESCAPE THE TOWN!"
	},
]

const _2_001: Array = [
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "I am traped by fire"
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "HELLLLLLLLP!!!"
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "How can it ..."
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "I should know it!"
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "I should know it!!!"
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Losing my mind..."
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "That's REAL!!!"
	},
	{
		speaker = "System: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "Press \"Q\" to recall"
	},
]

const _2_002: Array = [
	{
		speaker = "Friend: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "You looks so nervous recently"
	},
	{
		speaker = "Friend: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Still worry about the crazy..."
	},
	{
		speaker = "Friend: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "...HelloWorld Religion stuff?"
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Dude! They really scared me!"
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "They talks about something..."
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "...like Juna Maldacena"
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "The nature of the universe is a holographic projection..."
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Anti-de Sitter/Conformal Field Theory correspondence..."
	},
	{
		speaker = "Friend: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Was that a spell?"
	},
	{
		speaker = "Friend: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "I recognize every word, but I just can't understand what you're saying"
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Does't matter...It just..."
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "...just makes me feel like we are in a video game!"
	},
	{
		speaker = "Friend: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Sounds like maybe you could go run into a wall."
	},
	{
		speaker = "Friend: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Platform Nine and Three-Quarters, you know, haha"
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Don't laugh at me..."
	},
	{
		speaker = "Friend: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Haha, just dont' worry about this..."
	},
	{
		speaker = "Friend: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "...hey! Look at this! It's a shooting star!"
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Wow! They say wishing on a shooting star..."
	},
]

const _2_003: Array = [
	
]

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
	# 记得删
	{
		speaker = "System: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "...what is behind the wall?(Indeed nothing now, add in final)"
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
	# 记得删
	{
		speaker = "Developer: ",
		speakerCamp = DialogBox.NEUTRAL,
		text = "You just unlock the Fake Ending"
	},
	# 记得删
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
		text = "You...escaped from the...Game!"
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