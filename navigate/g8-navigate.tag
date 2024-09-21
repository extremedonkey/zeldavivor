{require(You cannot battle this enemy. Either you are exhausted and have 0 HP, you not currently in that coordinate, or you are typing this command in the wrong place - type it in your subs!):<@&1208391402413621339>}
{silence}

{=(debugMode):disabled}

{=(hasKSword):{if({contains(1211287524350230608):{user(roleids)}}==true): true|false}}
{=(hasDekuShield):{if({contains(1208848371843072071):{user(roleids)}}==true): true|false}}

{var(coordinate):g8}
{=(c-upper):{upper:{coordinate}}}


{"title":"{c-upper} | A small angry man in front of a narrow passageway...","description":"{and({hasKSword}==true|{hasDekuShield}==true):\nYou walk past the head of the Kokori Mido, who gives you the nod of approval as he eyes off your sword and shield.\n\nMido has let you past, type **?{coordinate}-explore** in your **submission channel** to look around.\n\n|\nYou head through Kokori Village up to the narrow passageway, which you understand is on the way to the Great Deku Tree.\n\n.. however you're physically blocked by Mido, a grouchy looking Kokori who you understand to be the leader of the Kokori villagers.\n\nHe looks you up and down.\n\n> 'Hey you! What's your business with the Great Deku Tree? You aren't even fully equipped yet. How do you think you're going to help the Great Deku Tree without both a sword and a shield ready?\n> If you want to pass through here, you should at least equip a sword and shield!'\n\nSeems like he's pretty insistent and he's not gonna let you pass. Better not tick off the head of the Kokori...\n\n}","image":{"url":"https://cdn.discordapp.com/attachments/1205174228555403284/1214239055064076338/images.png?ex=65f8633e&is=65e5ee3e&hm=d398025e411a4adc911f53643c0f8236644517af44cb8633d6d36f6b3269e5aa&"},"author":{"name":"Zeldavivor","icon_url":"https://cdn.discordapp.com/attachments/1205174228555403284/1205756728323346522/icon256.png?ex=65d98775&is=65c71275&hm=13e2b2d26bcb8c5e589e2c00ec189ce6112c453a2fc49454d07ef935fa067ee9&"},"color":8311585}