************* HEADER ************* 

{=(playerInput):{args}}
{=(correctCommand):
{if({playerInput}==> spike_initiate --target "DoD" --message "Better luck next time, slugheads"):correct|
{if({playerInput}=="I am invincible!"):secret|
{if({playerInput}=="I am invincible!"):secret|
    incorrect
    }
}
}}


************* BODY ************* 
*** DESC ***

{if({correctCommand}==correct):Goldeneye Upload Link Success!|{if({correctCommand}==secret):You found something good....|
Goldeneye Upload Link Failure}}

*** BODY ***

{if({correctCommand}==correct):
{mention} successfully uplinked to Goldeneye! If {mention} was the first to receive this message, their team gets a point.
|
{if({correctCommand}==secret):
{mention} just found Boris's secret code! Your team just scored a bonus 4 points!
|
You entered the command incorrectly.
}
}