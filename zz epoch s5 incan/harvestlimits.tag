{silent}
{=(space):⠀}

{=(whoToCheck):{if({args}==):user|target}}

{=(uids):{{whoToCheck}(roleids)}}

{=(COMMENT): =============== Potato Farm Balance  =============== }
{=(pf.0):1257701161453093007}
{=(pf.1):1257701248031785112}
{=(pf.2):1257701363593248818}
{=(pf.3):1258650076620918856}
{=(pf.4):1258650198213660682}


{=(pm.0):{if({in({pf.0}):{uids}}==true):(1*2^0)|0}}
{=(pm.1):{if({in({pf.1}):{uids}}==true):(1*2^1)|0}}
{=(pm.2):{if({in({pf.2}):{uids}}==true):(1*2^2)|0}}
{=(pm.3):{if({in({pf.3}):{uids}}==true):(1*2^3)|0}}
{=(pm.4):{if({in({pf.4}):{uids}}==true):(1*2^4)|0}}

{=(potatofarms.dec):{m:{pm.0}+{pm.1}+{pm.2}+{pm.3}+{pm.4}}}
{=(potatofarms.current):{m:trunc({potatofarms.dec})}}

{=(COMMENT): =============== Llama Farm Balance  =============== }
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

{=(COMMENT): =============== Silo Balance  =============== }
{=(sr.0):1258854915355181136}
{=(sr.1):1258854444217401455}
{=(sr.2):1258854762497970218}
{=(sr.3):1258854800951476358}
{=(sr.4):1258854971772899389}

{=(sm.0):{if({in({sr.0}):{uids}}==true):(1*2^0)|0}}
{=(sm.1):{if({in({sr.1}):{uids}}==true):(1*2^1)|0}}
{=(sm.2):{if({in({sr.2}):{uids}}==true):(1*2^2)|0}}
{=(sm.3):{if({in({sr.3}):{uids}}==true):(1*2^3)|0}}
{=(sm.4):{if({in({sr.4}):{uids}}==true):(1*2^4)|0}}

{=(silos.dec):{m:{sm.0}+{sm.1}+{sm.2}+{sm.3}+{sm.4}}}
{=(silos.current):{m:trunc({silos.dec})}}

{=(COMMENT): =============== Emoji Print Calculations  =============== }
{=(noEmojiToPrint):{potatofarms.current}}
{=(noEmojiToPrint):{if(0=={noEmojiToPrint}):1|{if(20<{noEmojiToPrint}):20|{noEmojiToPrint}}}}

{=(noLEmojiToPrint):{llamafarms.current}}
{=(noLEmojiToPrint):{if(0=={noLEmojiToPrint}):1|{if(20<{noLEmojiToPrint}):20|{noLEmojiToPrint}}}}

{=(noSEmojiToPrint):{silos.current}}
{=(noSEmojiToPrint):{if(0=={noSEmojiToPrint}):1|{if(20<{noSEmojiToPrint}):20|{noSEmojiToPrint}}}}

{=(COMMENT): =============== Emoji Definitions RIP <:potatofarm:1258806612580106262> =============== }
{=(i):<:z_:1259557908958416979>}
{=(b):<:b_:1259657198125191218>}

{=(l):<:q_:1259558101699530853>}
{=(k):<:e_:1259659851189977118>}

{=(s):🛖}
{=(t):<:d_:1259659656557629534>}



{=(COMMENT): =============== Emoji Print Strings  =============== }
{=(potatoFarmPrint):{i} {i}{i} {i}{i}{i} {i}{i}{i}{i} {b} {b}{i} {b}{i}{i} {b}{i}{i}{i} {b}{i}{i}{i}{i} {b}{b} {b}{b}{i} {b}{b}{i}{i} {b}{b}{i}{i}{i} {b}{b}{i}{i}{i}{i} {b}{b}{b} {b}{b}{b}{i}}
{=(llamaFarmPrint):{l} {l}{l} {l}{l}{l} {l}{l}{l}{l} {k} {k}{l} {k}{l}{l} {k}{l}{l}{l} {k}{l}{l}{l}{l} {k}{k} {k}{k}{l} {k}{k}{l}{l} {k}{k}{l}{l}{l} {k}{k}{l}{l}{l}{l} {k}{k}{k} {k}{k}{k}{l} {k}{k}{k}{l}{l} {k}{k}{k}{l}{l}{l} {k}{k}{k}{l}{l}{l}{l} {k}{k}{k}{k} {k}{k}{k}{k}{l}}
{=(siloPrint):{s} {s}{s} {s}{s}{s} {s}{s}{s}{s} {s}{s}{s}{s}{s} {s}{s}{s}{s}{s}{s} {s}{s}{s}{s}{s}{s}{s} {s}{s}{s}{s}{s}{s}{s}{s} {s}{s}{s}{s}{s}{s}{s}{s}{s} {s}{s}{s}{s}{s}{s}{s}{s}{s}{s}}

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
{=(bal):{m:trunc({bal.current})}}

{=(COMMENT): =============== Try Smoosh In Edit Code  =============== }


{=(seasonResults):{args(1)}}
{=(potatoFarmYield):{if({seasonResults}==normal):{m:trunc({potatofarms.current}*30)}}{if({seasonResults}==elnino):{m:trunc({potatofarms.current}*35)}}}
{=(llamaFarmYield):{if({seasonResults}==normal):{m:trunc({llamafarms.current}*50)}}{if({seasonResults}==elnino):{m:trunc({llamafarms.current}*0)}}}
{=(totalYield):{m:trunc({potatoFarmYield}+{llamaFarmYield})}}



{=(COMMENT): =============== Try Smoosh In Edit Code  =============== }


{=(bal.dif):+{totalYield}}

{=(bal.new):{m:{bal.current}{bal.dif}}}

{=(bal.newtrunc):{m:trunc({bal.new})}}

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





{=(COMMENT): =============== Season - into Embed // elnino // normal  =============== }



# {{whoToCheck}(nick)}'s Harvest Results

### `Weather Conditions: {if({seasonResults}==normal):☀️ Normal}{if({seasonResults}==elnino):🌊 El Nino!}`
> ## `   Potato Farms ({potatofarms.current})   `
# {potatoFarmPrint({noEmojiToPrint})}

### Potato Farm Yield
+ 🥔 {potatoFarmYield} potatoes

> ## `   Llama Farms ({llamafarms.current})   `
# {llamaFarmPrint({noLEmojiToPrint})}

### Llama Farm Yield
+ 🥔 {llamaFarmYield} potatoes

> ## `   Silos ({silos.current})   `
# {siloPrint({noSEmojiToPrint})}
{space}

> # `💰New Potato Balance`
> `(Previous Potatoes + New Harvest)`
> ### 🥔 {bal.newtrunc} ({bal} + {totalYield})



============================

### Potato Balance
You have `🥔{bal} Potatoes`



> ## `   Silos ({silos.current})   `
# {siloPrint({noSEmojiToPrint})}
{space}
{space}


== UX Improvements  for self checking - won't work as role target ATM

Scrappy
{c:role custom {target(mention)} {role.string}}
{{if({check.afford}==true):c:role custom {user(id)} {role.string}}}


target(mention)
user(id)
{=(whoToCheck):{if({args}==):user|target}}
{{whoToCheck}(nick)}

{=(whoToRole):{if({args}==):user|target}}
