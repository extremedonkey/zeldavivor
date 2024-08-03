{=(COMMENT):Balance roles, each role represents 1 bit of information in a 16 bit binary digit}
{silence}
{=(uids):{target(roleids)}}
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

{=(bal.current):{m:{m.0}+{m.1}+{m.2}+{m.3}+{m.4}+{m.5}+{m.6}+{m.7}+{m.8}+{m.9}}}{=(COMMENT):=========== 💰💰 Calculate New Balance and Convert to Binary 💰💰 ===========}

{=(bal.dif):-{m:trunc({args(1)}*25)}}

{=(bal.new):{m:{bal.current}{bal.dif}}}

{=(baltrunc):{m:trunc({bal.new})}}

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

{=(role.string): {if({in(false true):{has.br.0} {need.br.0}}==true):+{br.0}|{if({in(true false):{has.br.0} {need.br.0}}==true):-{br.0}|}} {if({in(false true):{has.br.1} {need.br.1}}==true):+{br.1}|{if({in(true false):{has.br.1} {need.br.1}}==true):-{br.1}|}} {if({in(false true):{has.br.2} {need.br.2}}==true):+{br.2}|{if({in(true false):{has.br.2} {need.br.2}}==true):-{br.2}|}} {if({in(false true):{has.br.3} {need.br.3}}==true):+{br.3}|{if({in(true false):{has.br.3} {need.br.3}}==true):-{br.3}|}} {if({in(false true):{has.br.4} {need.br.4}}==true):+{br.4}|{if({in(true false):{has.br.4} {need.br.4}}==true):-{br.4}|}} {if({in(false true):{has.br.5} {need.br.5}}==true):+{br.5}|{if({in(true false):{has.br.5} {need.br.5}}==true):-{br.5}|}} {if({in(false true):{has.br.6} {need.br.6}}==true):+{br.6}|{if({in(true false):{has.br.6} {need.br.6}}==true):-{br.6}|}} {if({in(false true):{has.br.7} {need.br.7}}==true):+{br.7}|{if({in(true false):{has.br.7} {need.br.7}}==true):-{br.7}|}} {if({in(false true):{has.br.8} {need.br.8}}==true):+{br.8}|{if({in(true false):{has.br.8} {need.br.8}}==true):-{br.8}|}} {if({in(false true):{has.br.9} {need.br.9}}==true):+{br.9}|{if({in(true false):{has.br.9} {need.br.9}}==true):-{br.9}|}}}

{c:role custom {target(mention)} {role.string}}