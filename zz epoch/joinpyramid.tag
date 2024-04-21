{=(COMMENT):Joins a player's pyramid scheme based on the code entered after typing the command (mypyramidscheme.tag)}

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

{=(is.reece):{if({{args(1)}}=={reece.scheme}):+|-}}
{=(is.zach):{if({{args(1)}}=={zach.scheme}):+|-}}
{=(is.bee):{if({{args(1)}}=={bee.scheme}):+|-}}
{=(is.chim):{if({{args(1)}}=={chim.scheme}):+|-}}
{=(is.mike):{if({{args(1)}}=={mike.scheme}):+|-}}
{=(is.tony):{if({{args(1)}}=={tony.scheme}):+|-}}
{=(is.peyton):{if({{args(1)}}=={peyton.scheme}):+|-}}


{c:role custom {user(id)} {is.reece}1217846428605485191 {is.zach}1217846509383712878 {is.bee}1217846546196856853 {is.chim}1217846586273697824 {is.mike}1217846621283553392 {is.tony}1217846653466181643 {is.peyton}1217850743869018112}

You have joined pyramid scheme {args(1)}!