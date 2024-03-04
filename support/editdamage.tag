{=(COMMENT):Damage roles, each role represents 1 dmgbit of information in a 16 dmgbit binary digit}
{silence}
{=(uids):{target(roleids)}}
{=(dr.0):1206484741092548609}
{=(dr.1):1206484810848010240}
{=(dr.2):1206484830657843260}
{=(dr.3):1206484850064891915}
{=(dr.4):1206484869446893578}
{=(dr.5):1206484891844354110}
{=(dr.6):1206484910479511562}
{=(dr.7):1206484934970052648}
{=(dr.8):1206484965219373076}
{=(dr.9):1206484982873333760}
{=(dr.10):1206485001303101440}
{=(dr.11):1206485026225782846}
{=(dr.12):1206485047507427349}
{=(dr.13):1206485070488010762}
{=(dr.14):1206485088074862633}
{=(dr.15):1206485107217539072}

{=(m.0):{if({in({dr.0}):{uids}}==true):(1*2^0)|0}}
{=(m.1):{if({in({dr.1}):{uids}}==true):(1*2^1)|0}}
{=(m.2):{if({in({dr.2}):{uids}}==true):(1*2^2)|0}}
{=(m.3):{if({in({dr.3}):{uids}}==true):(1*2^3)|0}}
{=(m.4):{if({in({dr.4}):{uids}}==true):(1*2^4)|0}}
{=(m.5):{if({in({dr.5}):{uids}}==true):(1*2^5)|0}}
{=(m.6):{if({in({dr.6}):{uids}}==true):(1*2^6)|0}}
{=(m.7):{if({in({dr.7}):{uids}}==true):(1*2^7)|0}}
{=(m.8):{if({in({dr.8}):{uids}}==true):(1*2^8)|0}}
{=(m.9):{if({in({dr.9}):{uids}}==true):(1*2^9)|0}}
{=(m.10):{if({in({dr.10}):{uids}}==true):(1*2^10)|0}}
{=(m.11):{if({in({dr.11}):{uids}}==true):(1*2^11)|0}}
{=(m.12):{if({in({dr.12}):{uids}}==true):(1*2^12)|0}}
{=(m.13):{if({in({dr.13}):{uids}}==true):(1*2^13)|0}}
{=(m.14):{if({in({dr.14}):{uids}}==true):(1*2^14)|0}}
{=(m.15):{if({in({dr.15}):{uids}}==true):(1*2^15)|0}}

{=(dmg.current):{m:{m.0}+{m.1}+{m.2}+{m.3}+{m.4}+{m.5}+{m.6}+{m.7}+{m.8}+{m.9}+{m.10}+{m.11}+{m.12}+{m.13}+{m.14}+{m.15}}}

{=(dmg.dif):{args(1)}}

{=(dmg.new):{m:{dmg.current}{dmg.dif}}}

{=(dmgdec):{dmg.new}}

{=(dmgbit.16):{if({dmgdec}>=32768):1|0}}
{=(dmgdec.1):{if({dmgbit.16}==1):{m:trunc({dmgdec}-32768)}|{dmgdec}}}

{=(dmgbit.15):{if({dmgdec.1}>=16384):1|0}}
{=(dmgdec.2):{if({dmgbit.15}==1):{m:trunc({dmgdec.1}-16384)}|{dmgdec.1}}}

{=(dmgbit.14):{if({dmgdec.2}>=8192):1|0}}
{=(dmgdec.3):{if({dmgbit.14}==1):{m:trunc({dmgdec.2}-8192)}|{dmgdec.2}}}

{=(dmgbit.13):{if({dmgdec.3}>=4096):1|0}}
{=(dmgdec.4):{if({dmgbit.13}==1):{m:trunc({dmgdec.3}-4096)}|{dmgdec.3}}}

{=(dmgbit.12):{if({dmgdec.4}>=2048):1|0}}
{=(dmgdec.5):{if({dmgbit.12}==1):{m:trunc({dmgdec.4}-2048)}|{dmgdec.4}}}

{=(dmgbit.11):{if({dmgdec.5}>=1024):1|0}}
{=(dmgdec.6):{if({dmgbit.11}==1):{m:trunc({dmgdec.5}-1024)}|{dmgdec.5}}}

{=(dmgbit.10):{if({dmgdec.6}>=512):1|0}}
{=(dmgdec.7):{if({dmgbit.10}==1):{m:trunc({dmgdec.6}-512)}|{dmgdec.6}}}

{=(dmgbit.9):{if({dmgdec.7}>=256):1|0}}
{=(dmgdec.8):{if({dmgbit.9}==1):{m:trunc({dmgdec.7}-256)}|{dmgdec.7}}}

{=(dmgbit.8):{if({dmgdec.8}>=128):1|0}}
{=(dmgdec.9):{if({dmgbit.8}==1):{m:trunc({dmgdec.8}-128)}|{dmgdec.8}}}

{=(dmgbit.7):{if({dmgdec.9}>=64):1|0}}
{=(dmgdec.10):{if({dmgbit.7}==1):{m:trunc({dmgdec.9}-64)}|{dmgdec.9}}}

{=(dmgbit.6):{if({dmgdec.10}>=32):1|0}}
{=(dmgdec.11):{if({dmgbit.6}==1):{m:trunc({dmgdec.10}-32)}|{dmgdec.10}}}

{=(dmgbit.5):{if({dmgdec.11}>=16):1|0}}
{=(dmgdec.12):{if({dmgbit.5}==1):{m:trunc({dmgdec.11}-16)}|{dmgdec.11}}}

{=(dmgbit.4):{if({dmgdec.12}>=8):1|0}}
{=(dmgdec.13):{if({dmgbit.4}==1):{m:trunc({dmgdec.12}-8)}|{dmgdec.12}}}

{=(dmgbit.3):{if({dmgdec.13}>=4):1|0}}
{=(dmgdec.14):{if({dmgbit.3}==1):{m:trunc({dmgdec.13}-4)}|{dmgdec.13}}}

{=(dmgbit.2):{if({dmgdec.14}>=2):1|0}}
{=(dmgdec.15):{if({dmgbit.2}==1):{m:trunc({dmgdec.14}-2)}|{dmgdec.14}}}

{=(dmgbit.1):{if({dmgdec.15}>=1):1|0}}

{=(dmgdec.bin):{dmgbit.16}{dmgbit.15}{dmgbit.14}{dmgbit.13}{dmgbit.12}{dmgbit.11}{dmgbit.10}{dmgbit.9}{dmgbit.8}{dmgbit.7}{dmgbit.6}{dmgbit.5}{dmgbit.4}{dmgbit.3}{dmgbit.2}{dmgbit.1}}

{=(COMMENT):role string generator}

{=(has.dr.0):{in({dr.0}):{uids}}}
{=(need.dr.0):{if({dmgbit.1}==1):true|false}}

{=(has.dr.1):{in({dr.1}):{uids}}}
{=(need.dr.1):{if({dmgbit.2}==1):true|false}}

{=(has.dr.2):{in({dr.2}):{uids}}}
{=(need.dr.2):{if({dmgbit.3}==1):true|false}}

{=(has.dr.3):{in({dr.3}):{uids}}}
{=(need.dr.3):{if({dmgbit.4}==1):true|false}}

{=(has.dr.4):{in({dr.4}):{uids}}}
{=(need.dr.4):{if({dmgbit.5}==1):true|false}}

{=(has.dr.5):{in({dr.5}):{uids}}}
{=(need.dr.5):{if({dmgbit.6}==1):true|false}}

{=(has.dr.6):{in({dr.6}):{uids}}}
{=(need.dr.6):{if({dmgbit.7}==1):true|false}}

{=(has.dr.7):{in({dr.7}):{uids}}}
{=(need.dr.7):{if({dmgbit.8}==1):true|false}}

{=(has.dr.8):{in({dr.8}):{uids}}}
{=(need.dr.8):{if({dmgbit.9}==1):true|false}}

{=(has.dr.9):{in({dr.9}):{uids}}}
{=(need.dr.9):{if({dmgbit.10}==1):true|false}}

{=(has.dr.10):{in({dr.10}):{uids}}}
{=(need.dr.10):{if({dmgbit.11}==1):true|false}}

{=(has.dr.11):{in({dr.11}):{uids}}}
{=(need.dr.11):{if({dmgbit.12}==1):true|false}}

{=(has.dr.12):{in({dr.12}):{uids}}}
{=(need.dr.12):{if({dmgbit.13}==1):true|false}}

{=(has.dr.13):{in({dr.13}):{uids}}}
{=(need.dr.13):{if({dmgbit.14}==1):true|false}}

{=(has.dr.14):{in({dr.14}):{uids}}}
{=(need.dr.14):{if({dmgbit.15}==1):true|false}}

{=(has.dr.15):{in({dr.15}):{uids}}}
{=(need.dr.15):{if({dmgbit.16}==1):true|false}}

{=(role.string):{if({in(false true):{has.dr.0} {need.dr.0}}==true):+{dr.0}|{if({in(true false):{has.dr.0} {need.dr.0}}==true):-{dr.0}|}} {if({in(false true):{has.dr.1} {need.dr.1}}==true):+{dr.1}|{if({in(true false):{has.dr.1} {need.dr.1}}==true):-{dr.1}|}} {if({in(false true):{has.dr.2} {need.dr.2}}==true):+{dr.2}|{if({in(true false):{has.dr.2} {need.dr.2}}==true):-{dr.2}|}} {if({in(false true):{has.dr.3} {need.dr.3}}==true):+{dr.3}|{if({in(true false):{has.dr.3} {need.dr.3}}==true):-{dr.3}|}} {if({in(false true):{has.dr.4} {need.dr.4}}==true):+{dr.4}|{if({in(true false):{has.dr.4} {need.dr.4}}==true):-{dr.4}|}} {if({in(false true):{has.dr.5} {need.dr.5}}==true):+{dr.5}|{if({in(true false):{has.dr.5} {need.dr.5}}==true):-{dr.5}|}} {if({in(false true):{has.dr.6} {need.dr.6}}==true):+{dr.6}|{if({in(true false):{has.dr.6} {need.dr.6}}==true):-{dr.6}|}} {if({in(false true):{has.dr.7} {need.dr.7}}==true):+{dr.7}|{if({in(true false):{has.dr.7} {need.dr.7}}==true):-{dr.7}|}} {if({in(false true):{has.dr.8} {need.dr.8}}==true):+{dr.8}|{if({in(true false):{has.dr.8} {need.dr.8}}==true):-{dr.8}|}} {if({in(false true):{has.dr.9} {need.dr.9}}==true):+{dr.9}|{if({in(true false):{has.dr.9} {need.dr.9}}==true):-{dr.9}|}} {if({in(false true):{has.dr.10} {need.dr.10}}==true):+{dr.10}|{if({in(true false):{has.dr.10} {need.dr.10}}==true):-{dr.10}|}} {if({in(false true):{has.dr.11} {need.dr.11}}==true):+{dr.11}|{if({in(true false):{has.dr.11} {need.dr.11}}==true):-{dr.11}|}} {if({in(false true):{has.dr.12} {need.dr.12}}==true):+{dr.12}|{if({in(true false):{has.dr.12} {need.dr.12}}==true):-{dr.12}|}} {if({in(false true):{has.dr.13} {need.dr.13}}==true):+{dr.13}|{if({in(true false):{has.dr.13} {need.dr.13}}==true):-{dr.13}|}} {if({in(false true):{has.dr.14} {need.dr.14}}==true):+{dr.14}|{if({in(true false):{has.dr.14} {need.dr.14}}==true):-{dr.14}|}} {if({in(false true):{has.dr.15} {need.dr.15}}==true):+{dr.15}|{if({in(true false):{has.dr.15} {need.dr.15}}==true):-{dr.15}|}}}

{c:role custom {target(mention)} {role.string}}

**{target}**'s damage is now **{dmgdec}**.