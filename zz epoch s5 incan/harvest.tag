{override} {silent}
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

{=(COMMENT): =============== Emoji Definitions  =============== }
{=(i):<:potatofarm:1258806612580106262>}
{=(l):<:llamafarm:1259285000042582096>}
{=(s):🛖}

{=(COMMENT): =============== Emoji Print Strings  =============== }
{=(potatoFarmPrint):{i} {i}{i} {i}{i}{i} {i}{i}{i}{i} {i}{i}{i}{i}{i} {i}{i}{i}{i}{i}{i} {i}{i}{i}{i}{i}{i}{i} {i}{i}{i}{i}{i}{i}{i}{i} {i}{i}{i}{i}{i}{i}{i}{i}{i} {i}{i}{i}{i}{i}{i}{i}{i}{i}{i} {i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i} {i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i} {i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i} {i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i} {i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i} {i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}{i}}
{=(llamaFarmPrint):{l} {l}{l} {l}{l}{l} {l}{l}{l}{l} {l}{l}{l}{l}{l} {l}{l}{l}{l}{l}{l} {l}{l}{l}{l}{l}{l}{l} {l}{l}{l}{l}{l}{l}{l}{l} {l}{l}{l}{l}{l}{l}{l}{l}{l} {l}{l}{l}{l}{l}{l}{l}{l}{l}{l} {l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l} {l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l} {l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l} {l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l} {l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l} {l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}{l}}
{=(siloPrint):{s} {s}{s} {s}{s}{s} {s}{s}{s}{s} {s}{s}{s}{s}{s} {s}{s}{s}{s}{s}{s} {s}{s}{s}{s}{s}{s}{s} {s}{s}{s}{s}{s}{s}{s}{s} {s}{s}{s}{s}{s}{s}{s}{s}{s} {s}{s}{s}{s}{s}{s}{s}{s}{s}{s} {s}{s}{s}{s}{s}{s}{s}{s}{s}{s}{s} {s}{s}{s}{s}{s}{s}{s}{s}{s}{s}{s}{s}}


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


{=(seasonResults):{args(1)}}


{=(COMMENT): =============== Season - into Embed // elnino // normal  =============== }



# {{whoToCheck}(nick)}'s Harvest Results

### `Weather Conditions: {if({seasonResults}==normal):☀️ Normal}{if({seasonResults}==elnino):🌊 El Nino!}`

> ## `   Potato Farms ({potatofarms.current})   `
# {potatoFarmPrint({noEmojiToPrint})}

### Potato Farm Yield
{if({seasonResults}==normal):
+ 🥔 {m:trunc({potatofarms.current}*30)} potatoes
}
{if({seasonResults}==elnino):
+ 🥔 {m:trunc({potatofarms.current}*35)} potatoes
}

> ## `   Llama Farms ({llamafarms.current})   `
# {llamaFarmPrint({noLEmojiToPrint})}

### Llama Farm Yield
{if({seasonResults}==normal):
+ 🥔 {m:trunc({llamafarms.current}*50)} potatoes
}
{if({seasonResults}==elnino):
+ 🥔 {m:trunc({llamafarms.current}*0)} potatoes
}
> ## `   Silos ({silos.current})   `
# {siloPrint({noSEmojiToPrint})}


============================

### Potato Balance
You have `🥔{bal} Potatoes`



> ## `   Silos ({silos.current})   `
# {siloPrint({noSEmojiToPrint})}
{space}
{space}