extends Node

const _TEST_MESSAGE: Array = [
	{
		speaker = "Developer: ", 
		speakerCamp = DialogBox.FRIENDLY, 
		text = "Testing message 1A1A1A1"
	},
	{
		speaker = "Developer: ", 
		speakerCamp = DialogBox.NEUTRAL, 
		text = "Testing message 2B2B2B2"
	},
	{
		speaker = "Developer: ", 
		speakerCamp = DialogBox.ENEMY, 
		text = "Testing message 3C3C3C3"
	},
	{
		speaker = "Developer: ", 
		speakerCamp = DialogBox.SYSTEM, 
		text = "Testing message 4D4D4D4"
	},
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
		text = "Don't rush to be disappointed on this, this level is not everything"
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
		text = "Let's make a wish!"
	},
	{
		speaker = "",
		speakerCamp = DialogBox.FRIENDLY,
		text = "."
	},
	{
		speaker = "",
		speakerCamp = DialogBox.FRIENDLY,
		text = ".."
	},
	{
		speaker = "",
		speakerCamp = DialogBox.FRIENDLY,
		text = "..."
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
		text = "Help my friend! He is trapped by fire!"
	},
	{
		speaker = "Police 1: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Too many causalities caused by this Meteorite"
	},
	{
		speaker = "Police 2: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "We cover you to safe place, we will help your friend!"
	},
	{
		speaker = "",
		speakerCamp = DialogBox.FRIENDLY,
		text = ""
	},
	{
		speaker = "System: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "You are trapped by fire"
	},
	{
		speaker = "Target: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "Wake Up Now!"
	},
]

const _2_001: Array = [
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "I am trapped by fire"
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
		speaker = "Friend: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Causing a bug, crashing a game"
	},
	{
		speaker = "Friend: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "May be you can even run away from the world by causing a bug, hahaha"
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Don't laugh at me..."
	},
	{
		speaker = "Friend: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Haha, just don't' worry about this..."
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
	{
		speaker = "???: ",
		speakerCamp = DialogBox.NEUTRAL,
		text = "He's lost conscious... Do something..."
	},
]

const _2_003: Array = [
	{
		speaker = "HelloWorld Follower: ",
		speakerCamp = DialogBox.NEUTRAL,
		text = "Hello, my friend"
	},
	{
		speaker = "HW Follower: ",
		speakerCamp = DialogBox.NEUTRAL,
		text = "May quantum mechanics bless you"
	},
	{
		speaker = "HW Follower: ",
		speakerCamp = DialogBox.NEUTRAL,
		text = "Do you remember our Bible?"
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "You mean the..."
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "The Large..."
	},
	{
		speaker = "HW Follower: ",
		speakerCamp = DialogBox.NEUTRAL,
		text = "The Large-N Limit of Superconformal Field Theories and Supergravity"
	},
	{
		speaker = "HW Follower: ",
		speakerCamp = DialogBox.NEUTRAL,
		text = "Chech it out, at \"https://doi.org/10.1023/A:1026654312961\""
	},
	{
		speaker = "???: ",
		speakerCamp = DialogBox.NEUTRAL,
		text = "Do we have fire suits and... masks? We're going in!"
	},
]

const _2_004: Array = [
	{
		speaker = "???: ",
		speakerCamp = DialogBox.NEUTRAL,
		text = "Hey! Wake Up! Wake Up!"
	},
	{
		speaker = "System: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "Press \"Q\" again to back to reality"
	},
]

const _2_005: Array = [
	{
		speaker = "Police 1: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Oh! He made it!"
	},
	{
		speaker = "Police 2: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Don't worry, you are safe now"
	},
	{
		speaker = "Police 1: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Get in the helicopter, we take you out of there"
	},
	{
		speaker = "Target: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "Get in helicopter"
	},
]

const _3_001: Array = [
	{
		speaker = "System: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "You just get through a wall"
	},
	{
		speaker = "System: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "You never know this wall can be get through"
	},
	{
		speaker = "System: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "This cause a bug which makes you into the server of this game"
	},
	{
		speaker = "Target: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "Turn off to escape from the game"
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Wait... What???"
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "I just think something strange will happen"
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "and you tell me everything is real???"
	},
]

const _3_002: Array = [
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "I cannot believe that..."
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "I really live in a video game..."
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "I am tired of this disaster, Let me go"
	},
	{
		speaker = "Raingo: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Some play will just create a new game save file anyway..."
	},
	{
		speaker = "System: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "Deleting Save file..."
	},
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
		text = "Well"
	},
	{
		speaker = "System: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "At least you can leave this hell"
	},
	{
		speaker = "System: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "Lucky you"
	},
	{
		speaker = "Developer: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "Try to find the real ending..."
	},
	{
		speaker = "Developer: ",
		speakerCamp = DialogBox.FRIENDLY,
		text = "The answer is just in any dialog"
	},
	{
		speaker = "System: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "...and, you can always press \"P\" to exit game"
	},
]

const _REAL_ENDING: Array = [
	{
		speaker = "System: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "Congratulations! You success!"
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
		text = "System... shutting down on..."
	},
	{
		speaker = "System: ",
		speakerCamp = DialogBox.SYSTEM,
		text = "3...2...1..."
	},
]