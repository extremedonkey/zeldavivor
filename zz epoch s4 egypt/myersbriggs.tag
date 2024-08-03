{=(u1):{upper:{1}}}
{=({u1}):You did not enter a valid pyramid scheme ID.}
{=(1217846428605485191):Reece's Scheme (1217846428605485191)}
{=(1217846546196856853):Bee's Scheme (1217846546196856853)}
{=(1217846586273697824):Chim's scheme (1217846586273697824)}
{=(1217846621283553392):Mike's Scheme (1217846621283553392)}
{=(1217846653466181643):Tony's Scheme (1217846653466181643)}
{=(1217850743869018112):Peyton's Scheme (1217850743869018112)}

{{u1}}

{if({{u1}}!=You did not enter a valid pyramid scheme ID.):
Your referral code for {{u1}} is: XXXX|Not a valid scheme}

{=(r6):{if({m:sgn({{u1}})}==1):{replace(, ):{{u1}}}}}
{=(r6):{join():{r6(-6+)}}}


==
Math test: {m:sgn(123456)}

{=(r6):{if({m:sgn({args(1)})}==1):{replace(, ):{args(1)}}}}
{=(pyramidLevel):{r6(2)}}
pyramidLevel: {pyramidLevel}

{=(r6):{join():{r6(-5+)}}}
R6 after second line: {r6}