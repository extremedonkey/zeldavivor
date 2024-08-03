{require(You can only use this in the goldeneye uplink channel! -1 point for your team):<#1238150131514085417>}

{=(playerInput):{args}}
{if({playerInput}==spike_initiate --target "DoD" --message "Better luck next time, slugheads"):
{mention} successfully uplinked to Goldeneye! If {mention} was the first to receive this message, their team gets a point.
|
{if({playerInput}==I am invincible!):{mention} just found Boris's secret code! Your team just scored a bonus 4 points!
|
You entered the command incorrectly.
}
}