{=(COMMENT): RUPEEMAX: 1023 (br9) // DAMAGEMAX: 63 (dr5)}
{=(COMMENT):Damage roles, each role represents 1 dmgbit of information in a 16 dmgbit binary digit}
{silence}
{=(uids):{target(roleids)}}
{=(dr.0):1206484741092548609}
{=(dr.1):1206484810848010240}
{=(dr.2):1206484830657843260}
{=(dr.3):1206484850064891915}
{=(dr.4):1206484869446893578}
{=(dr.5):1206484891844354110}

{=(m.0):{if({in({dr.0}):{uids}}==true):(1*2^0)|0}}
{=(m.1):{if({in({dr.1}):{uids}}==true):(1*2^1)|0}}
{=(m.2):{if({in({dr.2}):{uids}}==true):(1*2^2)|0}}
{=(m.3):{if({in({dr.3}):{uids}}==true):(1*2^3)|0}}
{=(m.4):{if({in({dr.4}):{uids}}==true):(1*2^4)|0}}
{=(m.5):{if({in({dr.5}):{uids}}==true):(1*2^5)|0}}

{=(dmg.current):{m:{m.0}+{m.1}+{m.2}+{m.3}+{m.4}+{m.5}}}

{=(dmg.dif):{args(1)}}

{=(dmg.new):{m:{dmg.current}{dmg.dif}}}

{=(dmgdec):{dmg.new}}

{=(dmgbit.6):{if({dmgdec}>=32):1|0}}
{=(dmgdec.1):{if({dmgbit.6}==1):{m:trunc({dmgdec}-32)}|{dmgdec}}}

{=(dmgbit.5):{if({dmgdec.1}>=16):1|0}}
{=(dmgdec.2):{if({dmgbit.5}==1):{m:trunc({dmgdec.1}-16)}|{dmgdec.1}}}

{=(dmgbit.4):{if({dmgdec.2}>=8):1|0}}
{=(dmgdec.3):{if({dmgbit.4}==1):{m:trunc({dmgdec.2}-8)}|{dmgdec.2}}}

{=(dmgbit.3):{if({dmgdec.3}>=4):1|0}}
{=(dmgdec.4):{if({dmgbit.3}==1):{m:trunc({dmgdec.3}-4)}|{dmgdec.3}}}

{=(dmgbit.2):{if({dmgdec.4}>=2):1|0}}
{=(dmgdec.5):{if({dmgbit.2}==1):{m:trunc({dmgdec.4}-2)}|{dmgdec.4}}}

{=(dmgbit.1):{if({dmgdec.5}>=1):1|0}}

{=(dmgdec.bin):{dmgbit.5}+{dmgbit.4}{dmgbit.3}{dmgbit.2}{dmgbit.1}}

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


{=(COMMENT):Balance roles, each role represents 1 bit of information in a 16 bit binary digit}

{=(br.0):1201831189133152297}
{=(br.1):1201831228248948777}
{=(br.2):1201831262051106816}
{=(br.3):1201831292732448778}
{=(br.4):1201831314987159584}
{=(br.5):1201831354405224470}
{=(br.6):1201831573734051891}
{=(br.7):1201831591765364756}
{=(br.8):1201831612820750356}
{=(br.9):1201831633481895946}


{=(m.50):{if({in({br.0}):{uids}}==true):(1*2^0)|0}}
{=(m.51):{if({in({br.1}):{uids}}==true):(1*2^1)|0}}
{=(m.52):{if({in({br.2}):{uids}}==true):(1*2^2)|0}}
{=(m.53):{if({in({br.3}):{uids}}==true):(1*2^3)|0}}
{=(m.54):{if({in({br.4}):{uids}}==true):(1*2^4)|0}}
{=(m.55):{if({in({br.5}):{uids}}==true):(1*2^5)|0}}
{=(m.56):{if({in({br.6}):{uids}}==true):(1*2^6)|0}}
{=(m.57):{if({in({br.7}):{uids}}==true):(1*2^7)|0}}
{=(m.58):{if({in({br.8}):{uids}}==true):(1*2^8)|0}}
{=(m.59):{if({in({br.9}):{uids}}==true):(1*2^9)|0}}


{=(bal.current):{m:{m.50}+{m.51}+{m.52}+{m.53}+{m.54}+{m.55}+{m.56}+{m.57}+{m.58}+{m.59}}}

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

Combo
{=(role.string):
    {if({in(false true):{has.br.0} {need.br.0}}==true):+{br.0}|{if({in(true false):{has.br.0} {need.br.0}}==true):-{br.0}|}}
     {if({in(false true):{has.br.1} {need.br.1}}==true):+{br.1}|{if({in(true false):{has.br.1} {need.br.1}}==true):-{br.1}|}}
      {if({in(false true):{has.br.2} {need.br.2}}==true):+{br.2}|{if({in(true false):{has.br.2} {need.br.2}}==true):-{br.2}|}}
       {if({in(false true):{has.br.3} {need.br.3}}==true):+{br.3}|{if({in(true false):{has.br.3} {need.br.3}}==true):-{br.3}|}}
        {if({in(false true):{has.br.4} {need.br.4}}==true):+{br.4}|{if({in(true false):{has.br.4} {need.br.4}}==true):-{br.4}|}}
         {if({in(false true):{has.br.5} {need.br.5}}==true):+{br.5}|{if({in(true false):{has.br.5} {need.br.5}}==true):-{br.5}|}}
          {if({in(false true):{has.br.6} {need.br.6}}==true):+{br.6}|{if({in(true false):{has.br.6} {need.br.6}}==true):-{br.6}|}}
           {if({in(false true):{has.br.7} {need.br.7}}==true):+{br.7}|{if({in(true false):{has.br.7} {need.br.7}}==true):-{br.7}|}}
            {if({in(false true):{has.br.8} {need.br.8}}==true):+{br.8}|{if({in(true false):{has.br.8} {need.br.8}}==true):-{br.8}|}}
             {if({in(false true):{has.br.9} {need.br.9}}==true):+{br.9}|{if({in(true false):{has.br.9} {need.br.9}}==true):-{br.9}|}}
              {if({in(false true):{has.dr.0} {need.dr.0}}==true):+{dr.0}|{if({in(true false):{has.dr.0} {need.dr.0}}==true):-{dr.0}|}}
               {if({in(false true):{has.dr.1} {need.dr.1}}==true):+{dr.1}|{if({in(true false):{has.dr.1} {need.dr.1}}==true):-{dr.1}|}}
                {if({in(false true):{has.dr.2} {need.dr.2}}==true):+{dr.2}|{if({in(true false):{has.dr.2} {need.dr.2}}==true):-{dr.2}|}}
                 {if({in(false true):{has.dr.3} {need.dr.3}}==true):+{dr.3}|{if({in(true false):{has.dr.3} {need.dr.3}}==true):-{dr.3}|}}
                  {if({in(false true):{has.dr.4} {need.dr.4}}==true):+{dr.4}|{if({in(true false):{has.dr.4} {need.dr.4}}==true):-{dr.4}|}}
                   {if({in(false true):{has.dr.5} {need.dr.5}}==true):+{dr.5}|{if({in(true false):{has.dr.5} {need.dr.5}}==true):-{dr.5}|}}
}

{c:role custom {target(mention)} {role.string}}

**{target}**'s balance is now **{num}**.
**{target}**'s damage is now **{dmgdec}**.
