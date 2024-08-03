{=():}
{silent} {override}
{=(largs):{lower:{args}}}
{=(l1):{largs(1)}}
{=(debugMode):disabled}

{=(COMMENT):============================ Current balance calculations ============================}
{=(uids):{user(roleids)}}
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


{=(comment):Item categories}
{=(comment):list form is... item | category | price | description | related role ID} 
{=(item.{l1}):Unknown item}
{=(item.potatofarm):potatofarm|vanity|30|A nice stable potato farm.|1258793216027787295}
{=(item.llamafarm):Llama Farm|vanity|30|An out there Llama farm.|1201853110725918741}
{=(item.silo):Silo|consumable|25|Somewhere to store your potato harvest.|1201853149501980672}
{=(item.locust):Locust Attack|consumable|15|Destroy your rivals with these locusts.|1201853174449979452} 
{=(item.magic-bean):Magic Bean|consumable|150|Bound to be something good!|1201853208725831712}
{=(item.deku-stick):Deku Stick|effect|20|Bound to come in handy!|1201853256033386526}




{=(check.not.item):{in(Unknown item):{item.{l1}}}}
{=(check.new.buy):{and({in({item.{l1}(5):|}):{user(roleids)}}==false|{check.not.item}==false):true|false}}
{=(check.afford):{and({bal.current}>={item.{l1}(3):|}|{check.new.buy}==true):true|false}}


{=(COMMENT):============================ Checks if user already has the role..? ============================}

{if({debugMode}==enabled):
{
Full item: {item.{l1}}
Item Price: item.l1(3):|: {item.{l1}(3):|}

== Check.Afford Calc:
bal.current: {bal.current} AND item l1 3: {item.{l1}(3)} AND check.new.buy: {check.new.buy}
check.afford: {check.afford}
check.new.buy: {check.new.buy}
AND
check.new.buy: {check.new.buy}
}
}

{=(COMMENT):============================ 🥔🥔 Current Potato Farms ============================}

{=(COMMENT):Current Potato Farm Balance - supports upto 63 which is well above what players need}
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

{=(potatofarms.new):{m:{potatofarms.current}+1}}


{if({debugMode}==enabled):
potatofarms.current: {potatofarms.current}
potatofarms.new: {potatofarms.new}
}




{=(COMMENT):============================ 🥔🥔🥔 Convert New Potato Farm Position to pbits  ============================}

{=(pnum):{potatofarms.new}}

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

{=(COMMENT):role string generator}


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


{=(COMMENT): =============== 🦙🦙🦙Llama Farm Balance  =============== }
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

{=(llamafarms.dec):{m:{lm.0}+{lm.1}+{lm.2}+{lm.3}+{lm.4}}}
{=(llamafarms.current):{m:trunc({llamafarms.dec})}}
{=(llamafarms.new):{m:{llamafarms.current}+1}}

Current Llama Farms: {llamafarms.current}
New Llama Farms: {llamafarms.new}

{=(COMMENT):============================ 🥔🥔🥔 New Llama Position to pbits  ============================}

{=(lnum):{llamafarms.new}}

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

lnum.bin: {lnum.bin}



{=(COMMENT):============================ UPDATE NEW MONEY  ============================}

{=(bal.dif):{item.{l1}(3):|}}

{=(bal.new):{m:{bal.current}-{bal.dif}}}

{=(num):{bal.new}}

{=(bit.16):{if({num}>=32768):1|0}}
{=(num.1):{if({bit.16}==1):{m:trunc({num}-32768)}|{num}}}

{=(bit.15):{if({num.1}>=16384):1|0}}
{=(num.2):{if({bit.15}==1):{m:trunc({num.1}-16384)}|{num.1}}}

{=(bit.14):{if({num.2}>=8192):1|0}}
{=(num.3):{if({bit.14}==1):{m:trunc({num.2}-8192)}|{num.2}}}

{=(bit.13):{if({num.3}>=4096):1|0}}
{=(num.4):{if({bit.13}==1):{m:trunc({num.3}-4096)}|{num.3}}}

{=(bit.12):{if({num.4}>=2048):1|0}}
{=(num.5):{if({bit.12}==1):{m:trunc({num.4}-2048)}|{num.4}}}

{=(bit.11):{if({num.5}>=1024):1|0}}
{=(num.6):{if({bit.11}==1):{m:trunc({num.5}-1024)}|{num.5}}}

{=(bit.10):{if({num.6}>=512):1|0}}
{=(num.7):{if({bit.10}==1):{m:trunc({num.6}-512)}|{num.6}}}

{=(bit.9):{if({num.7}>=256):1|0}}
{=(num.8):{if({bit.9}==1):{m:trunc({num.7}-256)}|{num.7}}}

{=(bit.8):{if({num.8}>=128):1|0}}
{=(num.9):{if({bit.8}==1):{m:trunc({num.8}-128)}|{num.8}}}

{=(bit.7):{if({num.9}>=64):1|0}}
{=(num.10):{if({bit.7}==1):{m:trunc({num.9}-64)}|{num.9}}}

{=(bit.6):{if({num.10}>=32):1|0}}
{=(num.11):{if({bit.6}==1):{m:trunc({num.10}-32)}|{num.10}}}

{=(bit.5):{if({num.11}>=16):1|0}}
{=(num.12):{if({bit.5}==1):{m:trunc({num.11}-16)}|{num.11}}}

{=(bit.4):{if({num.12}>=8):1|0}}
{=(num.13):{if({bit.4}==1):{m:trunc({num.12}-8)}|{num.12}}}

{=(bit.3):{if({num.13}>=4):1|0}}
{=(num.14):{if({bit.3}==1):{m:trunc({num.13}-4)}|{num.13}}}

{=(bit.2):{if({num.14}>=2):1|0}}
{=(num.15):{if({bit.2}==1):{m:trunc({num.14}-2)}|{num.14}}}

{=(bit.1):{if({num.15}>=1):1|0}}

{=(num.bin):{bit.16}{bit.15}{bit.14}{bit.13}{bit.12}{bit.11}{bit.10}{bit.9}{bit.8}{bit.7}{bit.6}{bit.5}{bit.4}{bit.3}{bit.2}{bit.1}}


{=(COMMENT):MONEY role string generator}

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

{=(has.br.10):{in({br.10}):{uids}}}
{=(need.br.10):{if({bit.11}==1):true|false}}

{=(has.br.11):{in({br.11}):{uids}}}
{=(need.br.11):{if({bit.12}==1):true|false}}

{=(has.br.12):{in({br.12}):{uids}}}
{=(need.br.12):{if({bit.13}==1):true|false}}

{=(has.br.13):{in({br.13}):{uids}}}
{=(need.br.13):{if({bit.14}==1):true|false}}

{=(has.br.14):{in({br.14}):{uids}}}
{=(need.br.14):{if({bit.15}==1):true|false}}

{=(has.br.15):{in({br.15}):{uids}}}
{=(need.br.15):{if({bit.16}==1):true|false}}


{=(COMMENT):============================ END MONEY ============================}

{=(role.string): +{potatorole.string} {if({in(false true):{has.br.0} {need.br.0}}==true):+{br.0}|{if({in(true false):{has.br.0} {need.br.0}}==true):-{br.0}|}} {if({in(false true):{has.br.1} {need.br.1}}==true):+{br.1}|{if({in(true false):{has.br.1} {need.br.1}}==true):-{br.1}|}} {if({in(false true):{has.br.2} {need.br.2}}==true):+{br.2}|{if({in(true false):{has.br.2} {need.br.2}}==true):-{br.2}|}} {if({in(false true):{has.br.3} {need.br.3}}==true):+{br.3}|{if({in(true false):{has.br.3} {need.br.3}}==true):-{br.3}|}} {if({in(false true):{has.br.4} {need.br.4}}==true):+{br.4}|{if({in(true false):{has.br.4} {need.br.4}}==true):-{br.4}|}} {if({in(false true):{has.br.5} {need.br.5}}==true):+{br.5}|{if({in(true false):{has.br.5} {need.br.5}}==true):-{br.5}|}} {if({in(false true):{has.br.6} {need.br.6}}==true):+{br.6}|{if({in(true false):{has.br.6} {need.br.6}}==true):-{br.6}|}} {if({in(false true):{has.br.7} {need.br.7}}==true):+{br.7}|{if({in(true false):{has.br.7} {need.br.7}}==true):-{br.7}|}} {if({in(false true):{has.br.8} {need.br.8}}==true):+{br.8}|{if({in(true false):{has.br.8} {need.br.8}}==true):-{br.8}|}} {if({in(false true):{has.br.9} {need.br.9}}==true):+{br.9}|{if({in(true false):{has.br.9} {need.br.9}}==true):-{br.9}|}} {if({in(false true):{has.br.10} {need.br.10}}==true):+{br.10}|{if({in(true false):{has.br.10} {need.br.10}}==true):-{br.10}|}} {if({in(false true):{has.br.11} {need.br.11}}==true):+{br.11}|{if({in(true false):{has.br.11} {need.br.11}}==true):-{br.11}|}} {if({in(false true):{has.br.12} {need.br.12}}==true):+{br.12}|{if({in(true false):{has.br.12} {need.br.12}}==true):-{br.12}|}} {if({in(false true):{has.br.13} {need.br.13}}==true):+{br.13}|{if({in(true false):{has.br.13} {need.br.13}}==true):-{br.13}|}} {if({in(false true):{has.br.14} {need.br.14}}==true):+{br.14}|{if({in(true false):{has.br.14} {need.br.14}}==true):-{br.14}|}} {if({in(false true):{has.br.15} {need.br.15}}==true):+{br.15}|{if({in(true false):{has.br.15} {need.br.15}}==true):-{br.15}|}}}



{{if({check.afford}==true):c:role custom {user(id)} {role.string}}}


{if({debugMode}==enabled):{potatorole.string: {potatorole.string}}}


{=(comment):output control}
{=(output.error):You have been unable to complete this purchase. Please check you have enough ?wheat and that you typed the buy command properly.}
{=(output.success):Purchase successful! May the Fields of the Andes Abound🍃!}
{=(outcome):{if({check.afford}==true):success|error}}

{output.{outcome}}