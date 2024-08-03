{override} {silent}

{=(COMMENT):Current Potato Farm Balance - supports upto 63 which is well above what players need}
{=(uids):{user(roleids)}}
{=(pf.0):1257701161453093007}
{=(pf.1):1257701248031785112}
{=(pf.2):1257701363593248818}
{=(pf.3):1258650076620918856}
{=(pf.4):1258650198213660682}
{=(pf.5):1258650325666238474}

{=(pm.0):{if({in({pf.0}):{uids}}==true):(1*2^0)|0}}
{=(pm.1):{if({in({pf.1}):{uids}}==true):(1*2^1)|0}}
{=(pm.2):{if({in({pf.2}):{uids}}==true):(1*2^2)|0}}
{=(pm.3):{if({in({pf.3}):{uids}}==true):(1*2^3)|0}}
{=(pm.4):{if({in({pf.4}):{uids}}==true):(1*2^4)|0}}
{=(pm.5):{if({in({pf.5}):{uids}}==true):(1*2^5)|0}}

{=(potatofarms.current):{m:{pm.0}+{pm.1}+{pm.2}+{pm.3}+{pm.4}+{pm.5}}}




== Body


Current potato farms: {potatofarms.current}