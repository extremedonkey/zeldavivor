{=(COMMENT):Joins a player's pyramid scheme based on the code entered after typing the command (mypyramidscheme.tag)}

{=(debugMode):enabled}

{=(COMMENT):Actual IDs of each player's scheme role)}
{silent}
{=(uids):{target(roleids)}}
{=(reece.scheme):1217846428605485191}
{=(zach.scheme):1217846509383712878}
{=(bee.scheme):1217846546196856853}
{=(chim.scheme):1217846586273697824}
{=(mike.scheme):1217846621283553392}
{=(tony.scheme):1217846653466181643}
{=(peyton.scheme):1217850743869018112}
{=(p8.scheme):1217850743869018112}
{=(p9.scheme):1217850743869018112}

{if({debugMode}==enabled):peyton.scheme: {peyton.scheme}}


{=(COMMENT):Shorthand 6 RHS characters of role ID, prior to being scrambled}
{=(reece.code):485191}
{=(zach.code):712878}
{=(bee.code):856853}
{=(chim.code):697824}
{=(mike.code):553392}
{=(tony.code):181643}
{=(peyton.code):018112}
{=(p8.code):181643}
{=(p9.code):018112}

{if({debugMode}==enabled):peyton.code: {peyton.code}}


{=(COMMENT):Shorthand 6 RHS characters of role ID, prior to being scrambled}
{=(startingCode):{args(1)}}

{if({debugMode}==enabled):startingCode: {startingCode}}


{=(COMMENT):Splice up / add spaces between the code player entered.}
{=(findPyramidLevel):{if({m:sgn({args(1)})}==1):{replace(, ):{args(1)}}}}

{if({debugMode}==enabled):findPyramidLevel: {findPyramidLevel}}


{=(COMMENT):Grab the far left-most characters to work out the rung. '1' means 2nd level, '2' means 3rd level, etc.}
{=(pyramidLevel):{findPyramidLevel(2)}}

{if({debugMode}==enabled):pyramidLevel: {pyramidLevel}}



{=(COMMENT):Convert down to 'base' code (see the .codes above // {=(decodedCode):{m:trunc({m:{startingCode}-{pyramidLevel}*1000000-{pyramidLevel}*123456})}}}
{=(decodedCode):{m:{startingCode}-{pyramidLevel}*1000000-{pyramidLevel}*123456}}

{if({debugMode}==enabled):decodedCode: {decodedCode}}



{=(COMMENT):Compare code player entered vs relevant scheme roles to find out which one they joined}
{=(is.reece):{if({decodedCode}=={reece.code}):+|-}}
{=(is.zach):{if({decodedCode}=={zach.code}):+|-}}
{=(is.bee):{if({decodedCode}=={bee.code}):+|-}}
{=(is.chim):{if({decodedCode}=={chim.code}):+|-}}
{=(is.mike):{if({decodedCode}=={mike.code}):+|-}}
{=(is.tony):{if({decodedCode}=={tony.code}):+|-}}
{=(is.peyton):{if({decodedCode}=={peyton.code}):+|-}}

{=(COMMENT):Create a new code one rung below for that player to join}
{=(newCode):{m:trunc({m:{startingCode}+1000000+123456})}}

{if({debugMode}==enabled):newCode: {newCode}}



{=(COMMENT):Delete all player roles and join the new one}
{c:role custom {user(id)} {is.reece}{reece.scheme} {is.zach}{zach.scheme} {is.bee}{bee.scheme} {is.chim}{chim.scheme} {is.mike}{mike.scheme} {is.tony}{tony.scheme} {is.peyton}{peyton.scheme}}

You have successfully joined that pyramid scheme! ({args(1)}). To invite another player to that scheme, get them to type `?joinpyramid {newCode}` in their subs. IF you happen to be on the 'second rung' of the pyramid, and you get the most players to join the scheme, you will win immunity.