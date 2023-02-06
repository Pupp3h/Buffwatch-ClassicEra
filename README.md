# Buffwatch Classic Era

Based on Buffwatch++, which has been maintained since wow vanilla 1.6.0

Please note there are separate versions for WoW Classic Era (this one) & [WotLK Classic](https://github.com/Pupp3h/Buffwatch-Classic). If you use the CurseForge app it should grab the correct version for you.

Buffwatch is a buff monitoring tool for all classes which lets you easily and clearly keep track of any buffs on yourself or your party/raid, and also allows you to quickly recast your buffs at the click of a button.

You choose which buffs you want to monitor and Buffwatch lets you know when they have run out, with clickable buttons to recast them. 



###### Buffwatch can be used to :

* Keep an eye on buffs that you want to keep up during a dungeon/raid (eg. Paladin blessings, AI, Battle Shout, Flasks, Food)
* Making sure you keep your Aura in range of your party, or vice-versa
* Tracking other peoples buffs (eg Soulstones), perhaps as a Raid Leader
 

###### How to use :

* Make sure the buffs you want to monitor are on the relevant players
* Tick the checkbox next to each player which locks those buffs to the player (alternatively tick the checkbox at the top to lock them all)
* Hide the buffs you are not interested in, using the following methods :

* Alt-Right click to remove the selected buff
* Alt-Left click to remove all buffs apart from the selected one

Any players that are locked and have no monitored buffs can be hidden by toggling the Hide Unmonitored arrow in the top right

Buffs that have expired will turn red, clicking on them will recast the buff on the player (if you have the spell and are in range)
Buffs for players that are dead or offline will turn grey

###### Other features :

* Locked buff settings are saved between sessions or players joining/leaving your group
* Left click a player name to target that player
* Right click a player name to assist that player
* Right click the Buffwatch header for options/help
* Filter on buffs your player can cast or buffs you have cast

Type /buffwatch or /bfw in-game for further info.


Casting specific buff ranks are enabled for locales: enUS, enGB, deDE, esES, esMX, frFR, ptBR and ruRU

Other localizations will always cast max rank until they can be added (Message me if you would like to help with this)

###### Cooldown Spirals
Classic doesn't support reading buff durations on other players the same as retail, but Buffwatch does support LibClassicDurations. If you want to see cooldown spirals for other players you can install this addon library.


###### OmniCC Users
Direct control of OmniCC cooldown text for Buffwatch within the options panel was removed in retail v8.08 due to changes to the way OmniCC works since WoW 8.0. Cooldown text options in Buffwatch now only relate to Blizzard's own cooldown text functionality, if you have that enabled.

If you wish to affect the way OmniCC cooldown text appears within Buffwatch, or if you wish to hide them, you should now use OmniCC's group functionality

https://github.com/tullamods/OmniCC/wiki/What-are-Groups%3F
Follow the instructions in the link above, creating a group in the OmniCC options with whatever name you wish (e.g. Buffwatch), and in the rules panel add **BuffwatchFrame**
You can then affect the way the OmniCC cooldown text appears within Buffwatch using this groups display and text style/position options.
