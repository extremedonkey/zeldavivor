{require(You cannot battle this enemy. Either you are exhausted and have 0 HP, you not currently in that coordinate, or you are typing this command in the wrong place - type it in your subs!):<@&1208391402413621339>}
{silence}

{=(debugMode):disabled}

{=(hasKSword):{if({contains(1211287524350230608):{user(roleids)}}==true): true|false}}
{=(hasDekuShield):{if({contains(1208848371843072071):{user(roleids)}}==true): true|false}}

{var(coordinate):G8}


==============================================

              ___.              .___
  ____   _____\_ |__   ____   __| _/
_/ __ \ /     \| __ \_/ __ \ / __ | 
\  ___/|  Y Y  \ \_\ \  ___// /_/ | 
 \___  >__|_|  /___  /\___  >____ | 
     \/      \/    \/     \/     \/ 

==============================================

{and({hasKSword}==true|{hasDekuShield}==true):
You walk past the head of the Kokori Mido, who gives you the nod of approval as he eyes off your sword and shield.

You find yourself in a small, winding, narrow passageway. Suddenly, a giant venus fly-trap like creature springs out of the ground.

It's just sitting there snapping and looks pretty weak - you think you can take it (**?g8-battle-dekubaba**).

On the other hand, you're pretty sure you can just dodge around it and make your way to the Great Deku Tree in the next coordinate.
|
You head through Kokori Village up to the narrow passageway, which you understand is on the way to the Great Deku Tree.

.. however you're physically blocked by Mido, a grouchy looking Kokori who you understand to be the leader of the Kokori villagers.

He looks you up and down.

> 'Hey you! What's your business with the Great Deku Tree? You aren't even fully equipped yet. How do you think you're going to help the Great Deku Tree without both a sword and a shield ready?
> If you want to pass, through here, you should at least equip a sword and shield!'

Seems like he's pretty insistent and he's not gonna let you pass. Better not tick off the head of the Kokori...

}