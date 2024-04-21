{redirect:{args}}
{=(space):⠀}
{=(rank):2. Field Agent}
{=(item_007name):Metal mouthpiece}
{=(item_emojiID):<:mouthpiece:1226897336320397332>}
{=(item_survivorItem):Legacy Advantage}
{=(item_hintText):Did you hear these teeth can bit through anything? PASS IT ON!}
{=(item_fullDescription):You have chosen the metal mouthpiece, which acts as a legacy Advantage.

This gadget only works during 2 specific briefing sessions - final 13 and final 7. If you are disavowed before using it, this must be passed on to another agent.

This item CANNOT be played on another person during these sessions or transferred while the owner is still active - it can only be used on the person who owns it 
}
{=(item_qtyAvailable):2}
{=(item_command):?thrive-in-the-field-mouthpiece}




{if({m:{uses+2}}<{item_qtyAvailable}):
You have chosen {item_007name} as your {rank} promotion reward from Q branch!

> {item_fullDescription}
|
Sorry agent, it looks like we've ran out of that one based on some recent agent promotion activity. Pick again. **You are allowed to type in another command from the rank you have been promoted to**, to pick a different item.
}




{if({m:{{uses}+2}}<{item_qtyAvailable}):

{if({uses+2}):then|else}