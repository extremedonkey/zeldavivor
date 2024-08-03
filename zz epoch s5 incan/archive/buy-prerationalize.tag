{=(COMMENT):=========== 🌍🌍 Global Setup, Don't Change Unless You Understand🌍🌍 ===========}
{=():}
{silent} {override}
{=(largs):{lower:{args}}}
{=(l1):{largs(1)}}
{=(uids):{user(roleids)}}
{=(debugMode):disabled}

{=(COMMENT):=========== 💰💰 Calculate Current Money Balance (Max 1023) 💰💰 ===========}
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

{=(bal.current):{m:{m.0}+{m.1}+{m.2}+{m.3}+{m.4}+{m.5}+{m.6}+{m.7}+{m.8}+{m.9}}}

{=(COMMENT):=========== 🏪🏪 Identify Purchase From Market 🏪🏪 ===========}

{=(comment):list form is... item | category | price | description | related role ID} 
{=(item.{l1}):Unknown item}
{=(item.potatofarm):potatofarm|vanity|30|A nice stable potato farm.|1258793216027787295}
{=(item.llamafarm):llamafarm|vanity|30|An out there Llama farm.|1201853110725918741}
{=(item.silo):silo|consumable|25|Somewhere to store your potato harvest.|1201853149501980672}
{=(item.locust):locust|consumable|15|Destroy your rivals with these locusts.|1201853174449979452} 


{=(check.not.item):{in(Unknown item):{item.{l1}}}}
{=(check.new.buy):{and({in({item.{l1}(5):|}):{user(roleids)}}==false|{check.not.item}==false):true|false}}
{=(check.afford):{and({bal.current}>={item.{l1}(3):|}|{check.new.buy}==true):true|false}}


{=(COMMENT):=========== 💺💺 Working Space for shop variable-fication💺💺 ===========}



{=(COMMENT):=========== 🥔🥔 Calculate Current # Potato Farms (Max 63) 🥔🥔 ===========}

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

{=(pnum):{m:{pm.0}+{pm.1}+{pm.2}+{pm.3}+{pm.4}+{pm.5}+{if({item.{l1}(1):|}==potatofarm):1|0}}}


{=(COMMENT):=========== 🥔🥔 Convert New Decimal # Potato Farms to Binary 🥔🥔 ===========}


{=(pbit.6):{if({pnum}>=32):1|0}}
{=(pnum.11):{if({pbit.6}==1):{m:trunc({pnum}-32)}|{pnum}}}

{=(pbit.5):{if({pnum.11}>=16):1|0}}
{=(pnum.12):{if({pbit.5}==1):{m:trunc({pnum.11}-16)}|{pnum.11}}}

{=(pbit.4):{if({pnum.12}>=8):1|0}}
{=(pnum.13):{if({pbit.4}==1):{m:trunc({pnum.12}-8)}|{pnum.12}}}

{=(pbit.3):{if({pnum.13}>=4):1|0}}
{=(pnum.14):{if({pbit.3}==1):{m:trunc({pnum.13}-4)}|{pnum.13}}}

{=(pbit.2):{if({pnum.14}>=2):1|0}}
{=(pnum.15):{if({pbit.2}==1):{m:trunc({pnum.14}-2)}|{pnum.14}}}

{=(pbit.1):{if({pnum.15}>=1):1|0}}

{=(pnum.bin):{pbit.6}{pbit.5}{pbit.4}{pbit.3}{pbit.2}{pbit.1}}

{=(COMMENT):=========== 🦸‍♀️🥔 Potato Farm Role String Generator 🥔🦸‍♀️ ===========}

{=(has.pf.0):{in({pf.0}):{uids}}}
{=(need.pf.0):{if({pbit.1}==1):true|false}}

{=(has.pf.1):{in({pf.1}):{uids}}}
{=(need.pf.1):{if({pbit.2}==1):true|false}}

{=(has.pf.2):{in({pf.2}):{uids}}}
{=(need.pf.2):{if({pbit.3}==1):true|false}}

{=(has.pf.3):{in({pf.3}):{uids}}}
{=(need.pf.3):{if({pbit.4}==1):true|false}}

{=(has.pf.4):{in({pf.4}):{uids}}}
{=(need.pf.4):{if({pbit.5}==1):true|false}}

{=(has.pf.5):{in({pf.5}):{uids}}}
{=(need.pf.5):{if({pbit.6}==1):true|false}}

{=(potatorole.string):{if({in(false true):{has.pf.0} {need.pf.0}}==true):+{pf.0}|{if({in(true false):{has.pf.0} {need.pf.0}}==true):-{pf.0}|}} {if({in(false true):{has.pf.1} {need.pf.1}}==true):+{pf.1}|{if({in(true false):{has.pf.1} {need.pf.1}}==true):-{pf.1}|}} {if({in(false true):{has.pf.2} {need.pf.2}}==true):+{pf.2}|{if({in(true false):{has.pf.2} {need.pf.2}}==true):-{pf.2}|}} {if({in(false true):{has.pf.3} {need.pf.3}}==true):+{pf.3}|{if({in(true false):{has.pf.3} {need.pf.3}}==true):-{pf.3}|}} {if({in(false true):{has.pf.4} {need.pf.4}}==true):+{pf.4}|{if({in(true false):{has.pf.4} {need.pf.4}}==true):-{pf.4}|}} {if({in(false true):{has.pf.5} {need.pf.5}}==true):+{pf.5}|{if({in(true false):{has.pf.5} {need.pf.5}}==true):-{pf.5}|}}}

{=(COMMENT):=========== 🦙🦙 Calculate Llama Farm Balance (Max 31) 🦙🦙 ===========}
{=(lr.0):1258846831291400364}
{=(lr.1):1258846892075516007}
{=(lr.2):1258846924048433254}
{=(lr.3):1258847084858183680}
{=(lr.4):1258847160703910041}

{=(lm.0):{if({in({lr.0}):{uids}}==true):(1*2^0)|0}}
{=(lm.1):{if({in({lr.1}):{uids}}==true):(1*2^1)|0}}
{=(lm.2):{if({in({lr.2}):{uids}}==true):(1*2^2)|0}}
{=(lm.3):{if({in({lr.3}):{uids}}==true):(1*2^3)|0}}
{=(lm.4):{if({in({lr.4}):{uids}}==true):(1*2^4)|0}}

{=(lnum):{m:{lm.0}+{lm.1}+{lm.2}+{lm.3}+{lm.4}+{if({item.{l1}(1):|}==llamafarm):1|0}}}

{=(COMMENT):=========== 🦙🦙 Convert New # Llama Farms to Binary 🦙🦙 ===========}

{=(lbit.6):{if({lnum}>=32):1|0}}
{=(lnum.11):{if({lbit.6}==1):{m:trunc({lnum}-32)}|{lnum}}}

{=(lbit.5):{if({lnum.11}>=16):1|0}}
{=(lnum.12):{if({lbit.5}==1):{m:trunc({lnum.11}-16)}|{lnum.11}}}

{=(lbit.4):{if({lnum.12}>=8):1|0}}
{=(lnum.13):{if({lbit.4}==1):{m:trunc({lnum.12}-8)}|{lnum.12}}}

{=(lbit.3):{if({lnum.13}>=4):1|0}}
{=(lnum.14):{if({lbit.3}==1):{m:trunc({lnum.13}-4)}|{lnum.13}}}

{=(lbit.2):{if({lnum.14}>=2):1|0}}
{=(lnum.15):{if({lbit.2}==1):{m:trunc({lnum.14}-2)}|{lnum.14}}}

{=(lbit.1):{if({lnum.15}>=1):1|0}}

{=(lnum.bin):{lbit.6}{lbit.5}{lbit.4}{lbit.3}{lbit.2}{lbit.1}}


{=(COMMENT):=========== 🦸‍♀️🦙 Llama Farm Role String Generator 🦙🦸‍♀️ ===========}

{=(has.lr.0):{in({lr.0}):{uids}}}
{=(need.lr.0):{if({lbit.1}==1):true|false}}

{=(has.lr.1):{in({lr.1}):{uids}}}
{=(need.lr.1):{if({lbit.2}==1):true|false}}

{=(has.lr.2):{in({lr.2}):{uids}}}
{=(need.lr.2):{if({lbit.3}==1):true|false}}

{=(has.lr.3):{in({lr.3}):{uids}}}
{=(need.lr.3):{if({lbit.4}==1):true|false}}

{=(has.lr.4):{in({lr.4}):{uids}}}
{=(need.lr.4):{if({lbit.5}==1):true|false}}

{=(llamarole.string):{if({in(false true):{has.lr.0} {need.lr.0}}==true):+{lr.0}|{if({in(true false):{has.lr.0} {need.lr.0}}==true):-{lr.0}|}} {if({in(false true):{has.lr.1} {need.lr.1}}==true):+{lr.1}|{if({in(true false):{has.lr.1} {need.lr.1}}==true):-{lr.1}|}} {if({in(false true):{has.lr.2} {need.lr.2}}==true):+{lr.2}|{if({in(true false):{has.lr.2} {need.lr.2}}==true):-{lr.2}|}} {if({in(false true):{has.lr.3} {need.lr.3}}==true):+{lr.3}|{if({in(true false):{has.lr.3} {need.lr.3}}==true):-{lr.3}|}} {if({in(false true):{has.lr.4} {need.lr.4}}==true):+{lr.4}|{if({in(true false):{has.lr.4} {need.lr.4}}==true):-{lr.4}|}}}



{=(COMMENT):=========== 🛖🛖 Calculate Silo Balance (Max 63) 🛖🛖 ===========}
{=(sr.0):1258854915355181136}
{=(sr.1):1258854444217401455}
{=(sr.2):1258854762497970218}
{=(sr.3):1258854800951476358}
{=(sr.4):1258854971772899389}
{=(sr.5):1258855047748649122}

{=(sm.0):{if({in({sr.0}):{uids}}==true):(1*2^0)|0}}
{=(sm.1):{if({in({sr.1}):{uids}}==true):(1*2^1)|0}}
{=(sm.2):{if({in({sr.2}):{uids}}==true):(1*2^2)|0}}
{=(sm.3):{if({in({sr.3}):{uids}}==true):(1*2^3)|0}}
{=(sm.4):{if({in({sr.4}):{uids}}==true):(1*2^4)|0}}
{=(sm.5):{if({in({sr.5}):{uids}}==true):(1*2^5)|0}}

{=(snum):{m:{sm.0}+{sm.1}+{sm.2}+{sm.3}+{sm.4}+{sm.5}+{if({item.{l1}(1):|}==silo):1|0}}}

{=(COMMENT):=========== 🛖🛖 Convert New # Silos to Binary 🛖🛖 ===========}

{=(sbit.6):{if({snum}>=32):1|0}}
{=(snum.11):{if({sbit.6}==1):{m:trunc({snum}-32)}|{snum}}}

{=(sbit.5):{if({snum.11}>=16):1|0}}
{=(snum.12):{if({sbit.5}==1):{m:trunc({snum.11}-16)}|{snum.11}}}

{=(sbit.4):{if({snum.12}>=8):1|0}}
{=(snum.13):{if({sbit.4}==1):{m:trunc({snum.12}-8)}|{snum.12}}}

{=(sbit.3):{if({snum.13}>=4):1|0}}
{=(snum.14):{if({sbit.3}==1):{m:trunc({snum.13}-4)}|{snum.13}}}

{=(sbit.2):{if({snum.14}>=2):1|0}}
{=(snum.15):{if({sbit.2}==1):{m:trunc({snum.14}-2)}|{snum.14}}}

{=(sbit.1):{if({snum.15}>=1):1|0}}

{=(snum.bin):{sbit.6}{sbit.5}{sbit.4}{sbit.3}{sbit.2}{sbit.1}}

{=(COMMENT):=========== 🛖🛖 Silo Role String Generator 🛖🛖 ===========}

{=(has.sr.0):{in({sr.0}):{uids}}}
{=(need.sr.0):{if({sbit.1}==1):true|false}}

{=(has.sr.1):{in({sr.1}):{uids}}}
{=(need.sr.1):{if({sbit.2}==1):true|false}}

{=(has.sr.2):{in({sr.2}):{uids}}}
{=(need.sr.2):{if({sbit.3}==1):true|false}}

{=(has.sr.3):{in({sr.3}):{uids}}}
{=(need.sr.3):{if({sbit.4}==1):true|false}}

{=(has.sr.4):{in({sr.4}):{uids}}}
{=(need.sr.4):{if({sbit.5}==1):true|false}}

{=(has.sr.5):{in({sr.5}):{uids}}}
{=(need.sr.5):{if({sbit.6}==1):true|false}}

{=(silorole.string):{if({in(false true):{has.sr.0} {need.sr.0}}==true):+{sr.0}|{if({in(true false):{has.sr.0} {need.sr.0}}==true):-{sr.0}|}} {if({in(false true):{has.sr.1} {need.sr.1}}==true):+{sr.1}|{if({in(true false):{has.sr.1} {need.sr.1}}==true):-{sr.1}|}} {if({in(false true):{has.sr.2} {need.sr.2}}==true):+{sr.2}|{if({in(true false):{has.sr.2} {need.sr.2}}==true):-{sr.2}|}} {if({in(false true):{has.sr.3} {need.sr.3}}==true):+{sr.3}|{if({in(true false):{has.sr.3} {need.sr.3}}==true):-{sr.3}|}} {if({in(false true):{has.sr.4} {need.sr.4}}==true):+{sr.4}|{if({in(true false):{has.sr.4} {need.sr.4}}==true):-{sr.4}|}} {if({in(false true):{has.sr.5} {need.sr.5}}==true):+{sr.5}|{if({in(true false):{has.sr.5} {need.sr.5}}==true):-{sr.5}|}}}


{=(COMMENT):=========== 💰💰 Calculate New Balance and Convert to Binary 💰💰 ===========}

{=(bal.dif):{item.{l1}(3):|}}

{=(bal.new):{m:{bal.current}-{bal.dif}}}

{=(num):{bal.new}}

{=(bit.10):{if({num}>=512):1|0}}
{=(num.1):{if({bit.10}==1):{m:trunc({num}-512)}|{num}}}

{=(bit.9):{if({num.1}>=256):1|0}}
{=(num.2):{if({bit.9}==1):{m:trunc({num.1}-256)}|{num.1}}}

{=(bit.8):{if({num.2}>=128):1|0}}
{=(num.3):{if({bit.8}==1):{m:trunc({num.2}-128)}|{num.2}}}

{=(bit.7):{if({num.3}>=64):1|0}}
{=(num.4):{if({bit.7}==1):{m:trunc({num.3}-64)}|{num.3}}}

{=(bit.6):{if({num.4}>=32):1|0}}
{=(num.5):{if({bit.6}==1):{m:trunc({num.4}-32)}|{num.4}}}

{=(bit.5):{if({num.5}>=16):1|0}}
{=(num.6):{if({bit.5}==1):{m:trunc({num.5}-16)}|{num.5}}}

{=(bit.4):{if({num.6}>=8):1|0}}
{=(num.7):{if({bit.4}==1):{m:trunc({num.6}-8)}|{num.6}}}

{=(bit.3):{if({num.7}>=4):1|0}}
{=(num.8):{if({bit.3}==1):{m:trunc({num.7}-4)}|{num.7}}}

{=(bit.2):{if({num.8}>=2):1|0}}
{=(num.9):{if({bit.2}==1):{m:trunc({num.8}-2)}|{num.8}}}

{=(bit.1):{if({num.9}>=1):1|0}}

{=(num.bin):{bit.10}{bit.9}{bit.8}{bit.7}{bit.6}{bit.5}{bit.4}{bit.3}{bit.2}{bit.1}}

{=(COMMENT):=========== 🦸‍♂️🦹‍♂️ Calculate New Balance Roles 🦸‍♂️🦹‍♂️ ===========}

{=(has.br.0):{in({br.0}):{uids}}}
{=(need.br.0):{if({bit.1}==1):true|false}}

{=(has.br.1):{in({br.1}):{uids}}}
{=(need.br.1):{if({bit.2}==1):true|false}}

{=(has.br.2):{in({br.2}):{uids}}}
{=(need.br.2):{if({bit.3}==1):true|false}}

{=(has.br.3):{in({br.3}):{uids}}}
{=(need.br.3):{if({bit.4}==1):true|false}}

{=(has.br.4):{in({br.4}):{uids}}}
{=(need.br.4):{if({bit.5}==1):true|false}}

{=(has.br.5):{in({br.5}):{uids}}}
{=(need.br.5):{if({bit.6}==1):true|false}}

{=(has.br.6):{in({br.6}):{uids}}}
{=(need.br.6):{if({bit.7}==1):true|false}}

{=(has.br.7):{in({br.7}):{uids}}}
{=(need.br.7):{if({bit.8}==1):true|false}}

{=(has.br.8):{in({br.8}):{uids}}}
{=(need.br.8):{if({bit.9}==1):true|false}}

{=(has.br.9):{in({br.9}):{uids}}}
{=(need.br.9):{if({bit.10}==1):true|false}}

{=(COMMENT):=========== 🦸‍♂️🦹‍♂️ Apply New Roles 🦸‍♂️🦹‍♂️ ===========}

{=(role.string): +{potatorole.string} +{llamarole.string} +{silorole.string} {if({in(false true):{has.br.0} {need.br.0}}==true):+{br.0}|{if({in(true false):{has.br.0} {need.br.0}}==true):-{br.0}|}} {if({in(false true):{has.br.1} {need.br.1}}==true):+{br.1}|{if({in(true false):{has.br.1} {need.br.1}}==true):-{br.1}|}} {if({in(false true):{has.br.2} {need.br.2}}==true):+{br.2}|{if({in(true false):{has.br.2} {need.br.2}}==true):-{br.2}|}} {if({in(false true):{has.br.3} {need.br.3}}==true):+{br.3}|{if({in(true false):{has.br.3} {need.br.3}}==true):-{br.3}|}} {if({in(false true):{has.br.4} {need.br.4}}==true):+{br.4}|{if({in(true false):{has.br.4} {need.br.4}}==true):-{br.4}|}} {if({in(false true):{has.br.5} {need.br.5}}==true):+{br.5}|{if({in(true false):{has.br.5} {need.br.5}}==true):-{br.5}|}} {if({in(false true):{has.br.6} {need.br.6}}==true):+{br.6}|{if({in(true false):{has.br.6} {need.br.6}}==true):-{br.6}|}} {if({in(false true):{has.br.7} {need.br.7}}==true):+{br.7}|{if({in(true false):{has.br.7} {need.br.7}}==true):-{br.7}|}} {if({in(false true):{has.br.8} {need.br.8}}==true):+{br.8}|{if({in(true false):{has.br.8} {need.br.8}}==true):-{br.8}|}} {if({in(false true):{has.br.9} {need.br.9}}==true):+{br.9}|{if({in(true false):{has.br.9} {need.br.9}}==true):-{br.9}|}}}

{{if({check.afford}==true):c:role custom {user(id)} {role.string}}}

{=(comment):output control}
{=(output.error):You have been unable to complete this purchase. Please check you have enough ?wheat and that you typed the buy command properly.}
{=(output.success):Purchase successful! May the Fields of the Andes Abound🍃!}
{=(outcome):{if({check.afford}==true):success|error}}

{output.{outcome}}