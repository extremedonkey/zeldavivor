{=(cdRole):1259834661010538536}
{=(cdTime):5760m}
{blacklist(You need to wait {cdTime} before using the command again.):{cdRole}}
{override} {silent}
{c:temprole {user(id)} {cdTime} {cdRole}}


{=(COMMENT):Balance roles, each role represents 1 bit of information in a 16 bit binary digit}
{silence}
{=(uids):{target(roleids)}}
{=(br.0):1258089985047789680}
{=(br.1):1258090068527284224}
{=(br.2):1258090095916093633}
{=(br.3):1258090129646424165}
{=(br.4):1258090158318813194}
{=(br.5):1258090187284680785}
{=(br.6):1258090218498555985}
{=(br.7):1258090249507307613}
{=(br.8):1258090287859765248}
{=(br.9):1258090319984066724}
{=(br.10):1258090355631587410}
{=(br.11):1258090387155976264}
{=(br.12):1258090412015354007}
{=(br.13):1258090440305934439}
{=(br.14):1258090469699751978}
{=(br.15):1258090495595249704}

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

{=(bal.dif):{args(1)}}

{=(bal.new):{m:{bal.current}{bal.dif}}}

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

{=(COMMENT):role string generator}

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

{=(role.string):{if({in(false true):{has.br.0} {need.br.0}}==true):+{br.0}|{if({in(true false):{has.br.0} {need.br.0}}==true):-{br.0}|}} {if({in(false true):{has.br.1} {need.br.1}}==true):+{br.1}|{if({in(true false):{has.br.1} {need.br.1}}==true):-{br.1}|}} {if({in(false true):{has.br.2} {need.br.2}}==true):+{br.2}|{if({in(true false):{has.br.2} {need.br.2}}==true):-{br.2}|}} {if({in(false true):{has.br.3} {need.br.3}}==true):+{br.3}|{if({in(true false):{has.br.3} {need.br.3}}==true):-{br.3}|}} {if({in(false true):{has.br.4} {need.br.4}}==true):+{br.4}|{if({in(true false):{has.br.4} {need.br.4}}==true):-{br.4}|}} {if({in(false true):{has.br.5} {need.br.5}}==true):+{br.5}|{if({in(true false):{has.br.5} {need.br.5}}==true):-{br.5}|}} {if({in(false true):{has.br.6} {need.br.6}}==true):+{br.6}|{if({in(true false):{has.br.6} {need.br.6}}==true):-{br.6}|}} {if({in(false true):{has.br.7} {need.br.7}}==true):+{br.7}|{if({in(true false):{has.br.7} {need.br.7}}==true):-{br.7}|}} {if({in(false true):{has.br.8} {need.br.8}}==true):+{br.8}|{if({in(true false):{has.br.8} {need.br.8}}==true):-{br.8}|}} {if({in(false true):{has.br.9} {need.br.9}}==true):+{br.9}|{if({in(true false):{has.br.9} {need.br.9}}==true):-{br.9}|}} {if({in(false true):{has.br.10} {need.br.10}}==true):+{br.10}|{if({in(true false):{has.br.10} {need.br.10}}==true):-{br.10}|}} {if({in(false true):{has.br.11} {need.br.11}}==true):+{br.11}|{if({in(true false):{has.br.11} {need.br.11}}==true):-{br.11}|}} {if({in(false true):{has.br.12} {need.br.12}}==true):+{br.12}|{if({in(true false):{has.br.12} {need.br.12}}==true):-{br.12}|}} {if({in(false true):{has.br.13} {need.br.13}}==true):+{br.13}|{if({in(true false):{has.br.13} {need.br.13}}==true):-{br.13}|}} {if({in(false true):{has.br.14} {need.br.14}}==true):+{br.14}|{if({in(true false):{has.br.14} {need.br.14}}==true):-{br.14}|}} {if({in(false true):{has.br.15} {need.br.15}}==true):+{br.15}|{if({in(true false):{has.br.15} {need.br.15}}==true):-{br.15}|}}}

{c:role custom {target(mention)} {role.string}}

**{target}**'s now has 💵**{num}** cash.