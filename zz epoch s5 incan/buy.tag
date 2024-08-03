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
{=(item.potatofarm):potatofarm|30|1257701161453093007|1257701248031785112|1257701363593248818|1258650076620918856|1258650198213660682|1258650325666238474}
{=(item.llamafarm):llamafarm|30|1258846831291400364|1258846892075516007|1258846924048433254|1258847084858183680|1258847160703910041|1258847207671595049}
{=(item.silo):silo|25|1258854915355181136|1258854444217401455|1258854762497970218|1258854800951476358|1258854971772899389|1258855047748649122}
{=(item.locust):locust|15|1|1|1|1|1|1} 


{=(check.not.item):{in(Unknown item):{item.{l1}}}}
{=(check.afford):{and({bal.current}>={item.{l1}(2):|}|{check.not.item}==false):true|false}}


{=(COMMENT):=========== 🥔🦙🛖 Calculate Quantity (Max 63) 🛖🦙🥔 ===========}
{=(mr.0):{item.{l1}(3):|}}
{=(mr.1):{item.{l1}(4):|}}
{=(mr.2):{item.{l1}(5):|}}
{=(mr.3):{item.{l1}(6):|}}
{=(mr.4):{item.{l1}(7):|}}
{=(mr.5):{item.{l1}(8):|}}

{=(mm.0):{if({in({mr.0}):{uids}}==true):(1*2^0)|0}}
{=(mm.1):{if({in({mr.1}):{uids}}==true):(1*2^1)|0}}
{=(mm.2):{if({in({mr.2}):{uids}}==true):(1*2^2)|0}}
{=(mm.3):{if({in({mr.3}):{uids}}==true):(1*2^3)|0}}
{=(mm.4):{if({in({mr.4}):{uids}}==true):(1*2^4)|0}}
{=(mm.5):{if({in({mr.5}):{uids}}==true):(1*2^5)|0}}

{=(mnum):{m:{mm.0}+{mm.1}+{mm.2}+{mm.3}+{mm.4}+{mm.5}+1}}

{=(COMMENT):=========== 🦙🛖 Convert New # Purchases to Binary 🛖🦙 ===========}

{=(mbit.6):{if({mnum}>=32):1|0}}
{=(mnum.11):{if({mbit.6}==1):{m:trunc({mnum}-32)}|{mnum}}}

{=(mbit.5):{if({mnum.11}>=16):1|0}}
{=(mnum.12):{if({mbit.5}==1):{m:trunc({mnum.11}-16)}|{mnum.11}}}

{=(mbit.4):{if({mnum.12}>=8):1|0}}
{=(mnum.13):{if({mbit.4}==1):{m:trunc({mnum.12}-8)}|{mnum.12}}}

{=(mbit.3):{if({mnum.13}>=4):1|0}}
{=(mnum.14):{if({mbit.3}==1):{m:trunc({mnum.13}-4)}|{mnum.13}}}

{=(mbit.2):{if({mnum.14}>=2):1|0}}
{=(mnum.15):{if({mbit.2}==1):{m:trunc({mnum.14}-2)}|{mnum.14}}}

{=(mbit.1):{if({mnum.15}>=1):1|0}}

{=(COMMENT):=========== 🦸‍♀️🦙🛖 Building Role String Generator 🛖🦙🦸‍♀️ ===========}

{=(has.mr.0):{in({mr.0}):{uids}}}
{=(need.mr.0):{if({mbit.1}==1):true|false}}

{=(has.mr.1):{in({mr.1}):{uids}}}
{=(need.mr.1):{if({mbit.2}==1):true|false}}

{=(has.mr.2):{in({mr.2}):{uids}}}
{=(need.mr.2):{if({mbit.3}==1):true|false}}

{=(has.mr.3):{in({mr.3}):{uids}}}
{=(need.mr.3):{if({mbit.4}==1):true|false}}

{=(has.mr.4):{in({mr.4}):{uids}}}
{=(need.mr.4):{if({mbit.5}==1):true|false}}

{=(has.mr.5):{in({mr.5}):{uids}}}
{=(need.mr.5):{if({mbit.6}==1):true|false}}

{=(buildingroles.string):{if({in(false true):{has.mr.0} {need.mr.0}}==true):+{mr.0}|{if({in(true false):{has.mr.0} {need.mr.0}}==true):-{mr.0}|}} {if({in(false true):{has.mr.1} {need.mr.1}}==true):+{mr.1}|{if({in(true false):{has.mr.1} {need.mr.1}}==true):-{mr.1}|}} {if({in(false true):{has.mr.2} {need.mr.2}}==true):+{mr.2}|{if({in(true false):{has.mr.2} {need.mr.2}}==true):-{mr.2}|}} {if({in(false true):{has.mr.3} {need.mr.3}}==true):+{mr.3}|{if({in(true false):{has.mr.3} {need.mr.3}}==true):-{mr.3}|}} {if({in(false true):{has.mr.4} {need.mr.4}}==true):+{mr.4}|{if({in(true false):{has.mr.4} {need.mr.4}}==true):-{mr.4}|}} {if({in(false true):{has.mr.5} {need.mr.5}}==true):+{mr.5}|{if({in(true false):{has.mr.5} {need.mr.5}}==true):-{mr.5}|}}}


{=(COMMENT):=========== 💰💰 Calculate New Balance and Convert to Binary 💰💰 ===========}

{=(bal.dif):{item.{l1}(2):|}}

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

{=(role.string): +{buildingroles.string} {if({in(false true):{has.br.0} {need.br.0}}==true):+{br.0}|{if({in(true false):{has.br.0} {need.br.0}}==true):-{br.0}|}} {if({in(false true):{has.br.1} {need.br.1}}==true):+{br.1}|{if({in(true false):{has.br.1} {need.br.1}}==true):-{br.1}|}} {if({in(false true):{has.br.2} {need.br.2}}==true):+{br.2}|{if({in(true false):{has.br.2} {need.br.2}}==true):-{br.2}|}} {if({in(false true):{has.br.3} {need.br.3}}==true):+{br.3}|{if({in(true false):{has.br.3} {need.br.3}}==true):-{br.3}|}} {if({in(false true):{has.br.4} {need.br.4}}==true):+{br.4}|{if({in(true false):{has.br.4} {need.br.4}}==true):-{br.4}|}} {if({in(false true):{has.br.5} {need.br.5}}==true):+{br.5}|{if({in(true false):{has.br.5} {need.br.5}}==true):-{br.5}|}} {if({in(false true):{has.br.6} {need.br.6}}==true):+{br.6}|{if({in(true false):{has.br.6} {need.br.6}}==true):-{br.6}|}} {if({in(false true):{has.br.7} {need.br.7}}==true):+{br.7}|{if({in(true false):{has.br.7} {need.br.7}}==true):-{br.7}|}} {if({in(false true):{has.br.8} {need.br.8}}==true):+{br.8}|{if({in(true false):{has.br.8} {need.br.8}}==true):-{br.8}|}} {if({in(false true):{has.br.9} {need.br.9}}==true):+{br.9}|{if({in(true false):{has.br.9} {need.br.9}}==true):-{br.9}|}}}

{{if({check.afford}==true):c:role custom {user(id)} {role.string}}}

{=(comment):output control}
{=(output.error):❌ You have been unable to complete this purchase. Please check you have enough potatoes (?my-farm-empire) and that you typed the buy command properly (see ?market).}
{=(output.success): 🍃 Purchase successful! May the Fields of the Andes Abound!}
{=(outcome):{if({check.afford}==true):success|error}}