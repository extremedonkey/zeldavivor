{override} {silent}

{=(COMMENT): =============== Potato Farm Balance  =============== }
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

{=(potatofarms.dec):{m:{pm.0}+{pm.1}+{pm.2}+{pm.3}+{pm.4}+{pm.5}}}
{=(potatofarms.current):{m:trunc({potatofarms.dec})}}



{=(i):<:potatofarm:1258806612580106262>}
{=(noEmojiToPrint):{potatofarms.current}}
{=(noEmojiToPrint):{if(0=={noEmojiToPrint}):1|{if(20<{noEmojiToPrint}):20|{noEmojiToPrint}}}}
{=(potatoFarmPrint):{i} {i}{i} {i}{i}{i} {i}{i}{i}{i} {i}{i}{i}{i}{i} {i}{i}{i}{i}{i}{i} {i}{i}{i}{i}{i}{i}{i} {i}{i}{i}{i}{i}{i}{i}{i} {i}{i}{i}{i}{i}{i}{i}{i}{i} {i}{i}{i}{i}{i}{i}{i}{i}{i}{i} {i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i} {i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i} {i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i} {i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i} {i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i} {i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i} {i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i} {i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i} {i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i} {i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}}


{=(COMMENT): =============== Llama Farm Balance  =============== }

{=(COMMENT):Current Llama Farm Balance - supports upto 63 which is well above what players need}
{=(lr.0):1258846831291400364}
{=(lr.1):1258846892075516007}
{=(lr.2):1258846924048433254}
{=(lr.3):1258847084858183680}
{=(lr.4):1258847160703910041}
{=(lr.5):1258847207671595049}

{=(lm.0):{if({in({lr.0}):{uids}}==true):(1*2^0)|0}}
{=(lm.1):{if({in({lr.1}):{uids}}==true):(1*2^1)|0}}
{=(lm.2):{if({in({lr.2}):{uids}}==true):(1*2^2)|0}}
{=(lm.3):{if({in({lr.3}):{uids}}==true):(1*2^3)|0}}
{=(lm.4):{if({in({lr.4}):{uids}}==true):(1*2^4)|0}}
{=(lm.5):{if({in({lr.5}):{uids}}==true):(1*2^5)|0}}

{=(llamafarms.dec):{m:{lm.0}+{lm.1}+{lm.2}+{lm.3}+{lm.4}+{lm.5}}}
{=(llamafarms.current):{m:trunc({llamafarms.dec})}}

{=(l):🦙}
{=(noLEmojiToPrint):{llamafarms.current}}

{=(noLEmojiToPrint):{if(0=={noLEmojiToPrint}):1|{if(20<{noLEmojiToPrint}):20|{noLEmojiToPrint}}}}
{=(llamaFarmPrint):{l} {l}{l} {l}{l}{l} {l}{l}{l}{l} {l}{l}{l}{l}{l} {l}{l}{l}{l}{l}{l} {l}{l}{l}{l}{l}{l}{l} {l}{l}{l}{l}{l}{l}{l}{l} {l}{l}{l}{l}{l}{l}{l}{l}{l} {l}{l}{l}{l}{l}{l}{l}{l}{l}{l} {l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l} {l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l} {l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l} {l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l} {l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l} {l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l} {l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l} {l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l} {l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l} {l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}}


{=(COMMENT): =============== Silo Balance  =============== }

{=(COMMENT):Current Silo Balance - supports up to 15 silos}
{=(sr.0):1258854915355181136}


{=(COMMENT):Current balance calculations}
{=(br.0):1257181928512295063}
{=(br.1):1257182048548945981}
{=(br.2):1257182123278860299}
{=(br.3):1257182175196090440}
{=(br.4):1257182227289210880}
{=(br.5):1257182297355059220}
{=(br.6):1257182342619992156}
{=(br.7):1257182459250999418}
{=(br.8):1257182508332879932}
{=(br.9):1257182581061980222}
{=(br.10):1257182830849429565}
{=(br.11):1257182886508105778}
{=(br.12):1257182967441133570}
{=(br.13):1257183017609465907}
{=(br.14):1257183104812978197}
{=(br.15):1257183162098909226}

{=(m.0):{if({in({br.0}):{uids}}==true):(1*2^0)|0}}
{=(m.1):{if({in({br.1}):{uids}}==true):(1*2^1)|0}}
{=(m.2):{if({in({br.2}):{uids}}==true):(1*2^2)|0}}
{=(m.3):{if({in({br.3}):{uids}}==true):(1*2^3)|0}}
{=(m.4):{if({in({br.4}):{uids}}==true):(1*2^4)|0}}
{=(m.5):{if({in({br.5}):{uids}}==true):(1*2^5)|0}}
{=(m.6):{if({in({br.6}):{uids}}==true):(1*2^6)|0}}
{=(m.7):{if({in({br.7}):{uids}}==true):(1*2^7)|0}}
{=(m.8):{if({in({br.8}):{uids}}==true):(1*2^8)|0}}
{=(m.9):{if({in({br.9}):{uids}}==true):(1*2^9)|0}}
{=(m.10):{if({in({br.10}):{uids}}==true):(1*2^10)|0}}
{=(m.11):{if({in({br.11}):{uids}}==true):(1*2^11)|0}}
{=(m.12):{if({in({br.12}):{uids}}==true):(1*2^12)|0}}
{=(m.13):{if({in({br.13}):{uids}}==true):(1*2^13)|0}}
{=(m.14):{if({in({br.14}):{uids}}==true):(1*2^14)|0}}
{=(m.15):{if({in({br.15}):{uids}}==true):(1*2^15)|0}}

{=(bal.current):{m:{m.0}+{m.1}+{m.2}+{m.3}+{m.4}+{m.5}+{m.6}+{m.7}+{m.8}+{m.9}+{m.10}+{m.11}+{m.12}+{m.13}+{m.14}+{m.15}}}

{=(bal):{m:trunc({bal.current})}}


{user(avatar)}