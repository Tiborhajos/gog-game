Gog Game Server
===

I always found it weird that game servers either have to be online all the time or need to be hosted on someone's computer. Hence I started this project.
This project is meant to easily set up a game server that only has to be online when you're playing.

At the moment it only works for Starbound. I'm adding Terraria (WIP).

It works as follows:
1. A game will be installed on a server (Kubernetes)
2. Play the game
3. When you're done, save what you want to save

This is a project I'm working on every now and then in my free time and hence development is not that fast. 
I will develop the GOG version first, because I don't believe in DRMs and other malware other gaming platforms install on their user's machines and hence I only have GOG.
It's still WIP. Where I aim to go with this is put up a website where 
1. You log in, you fill in your GOG or Steam credentials (these will never be saved)
1. A game that supports multiplayer can be chosen from your library 
2. Set world parameters from the game and if you want to save these for playing another time.
3. The game will be installed on the server (Kubernetes), you will get a serrver IP and password
4. You and your friends log in to the server and have fun.
5. When you're done playing everything that you want to be saved will be saved in a file on the server.

## Credit ##
I used lgogdownloader by Sude: https://github.com/Sude-/lgogdownloader
I used a script by Antoine "vv221/vv222" Le Gonidec to start terraria https://forge.dotslashplay.it/play.it/scripts/blob/e04bd6a5489fcb66471d79047583c2fbbbf4feab/play.it-2/games/play-terraria.sh