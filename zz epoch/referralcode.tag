{=(COMMENT):Generates a referral code based off a player's existing pyramid scheme (not their own)}


{silent}
{=(uids):{target(roleids)}}
{=(reece.scheme):1217846428605485191}
{=(zach.scheme):1217846509383712878}
{=(bee.scheme):1217846546196856853}
{=(chim.scheme):1217846586273697824}
{=(mike.scheme):1217846621283553392}
{=(tony.scheme):1217846653466181643}
{=(peyton.scheme):1217850743869018112}


{=(reece.userid):391415444084490240}
{=(zach.userid):386463066600112128}
{=(bee.userid):702218740703428688}
{=(chim.userid):542806587299856385}
{=(mike.userid):696456309762949141}
{=(tony.userid):689155539028148232}
{=(peyton.userid):197562770068078592}



{=(is.reece):{if({reece.userid}=={user(id)}):true|false}}
{=(is.zach):{if({zach.userid}=={user(id)}):true|false}}
{=(is.bee):{if({bee.userid}=={user(id)}):true|false}}
{=(is.chim):{if({chim.userid}=={user(id)}):true|false}}
{=(is.mike):{if({mike.userid}=={user(id)}):true|false}}
{=(is.tony):{if({tony.userid}=={user(id)}):=={user(id)}):true|false}}
{=(is.peyton):{if({peyton.userid}=={user(id)}):true|false}}

{is.reece}{is.zach}{is.bee}{is.chim}{is.mike}{is.tony}{is.peyton}

{=(inReeceScheme):{if({contains({reece.scheme}):{user(roleids)}}==true): In Reece's Scheme|}}
{=(inZachScheme):{if({contains({zach.scheme}):{user(roleids)}}==true): In Zach's Scheme|}}
{=(inBeeScheme):{if({contains({bee.scheme}):{user(roleids)}}==true): In Bee's Scheme|}}
{=(inChimScheme):{if({contains({chim.scheme}):{user(roleids)}}==true): In Chim's Scheme|}}
{=(inMikeScheme):{if({contains({mike.scheme}):{user(roleids)}}==true): In Mike's Scheme|}}
{=(inTonyScheme):{if({contains({tony.scheme}):{user(roleids)}}==true): In Tony's Scheme|}}
{=(inPeytonScheme):{if({contains({peyton.scheme}):{user(roleids)}}==true): In Peyton's Scheme|}}

User is: {inReeceScheme} {inZachScheme} {inBeeScheme} {inChimScheme} {inMikeScheme} {inTonyScheme} {inPeytonScheme}