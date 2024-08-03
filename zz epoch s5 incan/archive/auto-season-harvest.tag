{=(cdRole):1257700623676080198}
{=(cdTime):360m}
{blacklist(You need to wait {cdTime} before using the command again.):{cdRole}}
{override} {silent}
{c:temprole {user(id)} {cdTime} {cdRole}}

{=(COMMENT):Current Potato Farm Balance - supports upto 63 which is well above what players need}
{=(uids):{user(roleids)}}
{=(pf.0):1257701161453093007}
{=(pf.1):1257701248031785112}
{=(pf.2):1257701363593248818}
{=(pf.3):1258650076620918856}
{=(pf.4):1258650198213660682}
{=(pf.5):1258650325666238474}


{=(potatoFloodYield):35}
{=(potatoDryYield):30}


{=(m.0):{if({in({pf.0}):{uids}}==true):(1*2^0)|0}}
{=(m.1):{if({in({pf.1}):{uids}}==true):(1*2^1)|0}}
{=(m.2):{if({in({pf.2}):{uids}}==true):(1*2^2)|0}}

{=(bal.current):{m:{m.0}+{m.1}+{m.2}}}

Current potato farms: {bal.current}


{=(floodId):1257698017318932521}
{=(didItFlood):{if({contains({floodId}):{target(roleids)}}==true):flood|no flood}}


{=(potatoHarvest):{m:{potatoFloodYield}*{bal.current}}}


{if({didItFlood}==flood):The El Nino flooded the place, you earned {potatoHarvest} bags of potatoes!
|it didn't flood}


