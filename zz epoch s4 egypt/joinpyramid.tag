{=(COMMENT):Joins a player's pyramid scheme based on the code entered after typing the command (mypyramidscheme.tag)}

{=(debugMode):disabled}

{=(COMMENT):Actual IDs of each player's scheme role)}
{silent}
{=(uids):{target(roleids)}}
{=(ari.scheme):1217846428605485191}
{=(cara.scheme):1217846509383712878}
{=(dave.scheme):1217846546196856853}
{=(geodude.scheme):1217846586273697824}
{=(gian.scheme):1217846621283553392}
{=(jay.scheme):1217846653466181643}
{=(kez.scheme):1235592317822435438}
{=(kyler.scheme):1235600728429428766}
{=(nick.scheme):1235262358117417093}
{=(sam.scheme):1235264748501598219}


{if({debugMode}==enabled):ari.scheme: {ari.scheme}}

{=(COMMENT):Shorthand 6 RHS characters of role ID, prior to being scrambled}
{=(ari.code):485191}
{=(cara.code):712878}
{=(dave.code):856853}
{=(geodude.code):697824}
{=(gian.code):553392}
{=(jay.code):181643}
{=(kez.code):435438}
{=(kyler.code):428766}
{=(nick.code):417093}
{=(sam.code):598219}

{if({debugMode}==enabled):ari.code: {ari.code}}



{=(COMMENT):Shorthand 6 RHS characters of role ID, prior to being scrambled}
{=(startingCode):{args(1)}}

{if({debugMode}==enabled):startingCode: {startingCode}}


{=(COMMENT):Splice up / add spaces between the code player entered.}
{=(findPyramidLevel):{if({m:sgn({args(1)})}==1):{replace(, ):{args(1)}}}}

{if({debugMode}==enabled):findPyramidLevel: {findPyramidLevel}}



{=(COMMENT):Grab the far left-most characters to work out the rung. '1' means 2nd level, '2' means 3rd level, etc.}
{=(pyramidLevel):{findPyramidLevel(2)}}

{if({debugMode}==enabled):pyramidLevel: {pyramidLevel}}



{=(COMMENT):Convert down to 'base' code (see the .codes above}
{=(decodedCode):{m:trunc({m:{startingCode}-{pyramidLevel}*1000000-{pyramidLevel}*12421})}}


{if({debugMode}==enabled):decodedCode: {decodedCode}}



{=(COMMENT):Compare code player entered vs relevant scheme roles to find out which one they joined}
{=(is.ari):{if({decodedCode}=={ari.code}):+|-}}
{=(is.cara):{if({decodedCode}=={cara.code}):+|-}}
{=(is.dave):{if({decodedCode}=={dave.code}):+|-}}
{=(is.geodude):{if({decodedCode}=={geodude.code}):+|-}}
{=(is.gian):{if({decodedCode}=={gian.code}):+|-}}
{=(is.jay):{if({decodedCode}=={jay.code}):+|-}}
{=(is.kez):{if({decodedCode}=={kez.code}):+|-}}
{=(is.kyler):{if({decodedCode}=={kyler.code}):+|-}}
{=(is.nick):{if({decodedCode}=={nick.code}):+|-}}
{=(is.sam):{if({decodedCode}=={sam.code}):+|-}}

{=(COMMENT):Create a new code one rung below for that player to join}
{=(newCode):{m:trunc({m:{startingCode}+1000000+12421})}}

{if({debugMode}==enabled):newCode: {newCode}}

{=(roleString):{user(id)} {is.ari}{ari.scheme} {is.cara}{cara.scheme} {is.dave}{dave.scheme} {is.geodude}{geodude.scheme} {is.gian}{gian.scheme} {is.jay}{jay.scheme} {is.kez}{kez.scheme} {is.kyler}{kyler.scheme} {is.nick}{nick.scheme} {is.sam}{sam.scheme}}
{if({debugMode}==enabled):roleString: {roleString}}


{=(COMMENT):Delete all player roles and join the new one}
{c:role custom {user(id)} {is.ari}{ari.scheme} {is.cara}{cara.scheme} {is.dave}{dave.scheme} {is.geodude}{geodude.scheme} {is.gian}{gian.scheme} {is.jay}{jay.scheme} {is.kez}{kez.scheme} {is.kyler}{kyler.scheme} {is.nick}{nick.scheme} {is.sam}{sam.scheme}}

You have successfully joined that pyramid scheme! ({args(1)}). To invite another player to that scheme, get them to type `?joinpyramid {newCode}` in their subs. IF you happen to be on the 'second rung' of the pyramid, and you get the most players to join the scheme, you will win immunity.