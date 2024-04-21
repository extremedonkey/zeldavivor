

{=(COMMENT): ======================================= Content ======================================== }
{silence}
{=(debugMode):false}
{=(rewardTrackerValue):15}
{=(willPlayerGetThisReward):{if({uses}<={rewardTrackerValue}):true|false}}

{=(rupeeBounty):20}{=(ru):<:rupee:1205860341666545765>}{=(r):<:rupee:1205860341666545765>{rupeeBounty}}{=(space):⠀
> }

{=(COMMENT):Balance roles, each role represents 1 bit of information in a 16 bit binary digit}
{=(uids):{target(roleids)}}
{=(br.0):1201831189133152297}{=(br.1):1201831228248948777}{=(br.2):1201831262051106816}{=(br.3):1201831292732448778}{=(br.4):1201831314987159584}{=(br.5):1201831354405224470}{=(br.6):1201831573734051891}{=(br.7):1201831591765364756}{=(br.8):1201831612820750356}{=(br.9):1201831633481895946}
{=(m.50):{if({in({br.0}):{uids}}==true):(1*2^0)|0}}{=(m.51):{if({in({br.1}):{uids}}==true):(1*2^1)|0}}{=(m.52):{if({in({br.2}):{uids}}==true):(1*2^2)|0}}{=(m.53):{if({in({br.3}):{uids}}==true):(1*2^3)|0}}{=(m.54):{if({in({br.4}):{uids}}==true):(1*2^4)|0}}{=(m.55):{if({in({br.5}):{uids}}==true):(1*2^5)|0}}{=(m.56):{if({in({br.6}):{uids}}==true):(1*2^6)|0}}{=(m.57):{if({in({br.7}):{uids}}==true):(1*2^7)|0}}{=(m.58):{if({in({br.8}):{uids}}==true):(1*2^8)|0}}{=(m.59):{if({in({br.9}):{uids}}==true):(1*2^9)|0}}

{=(bal.current):{m:{m.50}+{m.51}+{m.52}+{m.53}+{m.54}+{m.55}+{m.56}+{m.57}+{m.58}+{m.59}}}

{=(bal.dif):{if({willPlayerGetThisReward}==true):+{rupeeBounty}|+0}}


{if({debugMode}==enabled):bal.dif [{bal.dif}] <-- should be zero if someone else has already opened the chest}

{=(bal.new):{m:{bal.current}{bal.dif}}}
{if({debugMode}==enabled):bal.new [{bal.new}] <-- should be existing wallet balance}

{=(num):{bal.new}}
{if({debugMode}==enabled):num [{num}] <-- should be existing wallet balance}

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


{if({debugMode}==enabled):Role.string combo stuff starts here, danger zone! Remember, the command block will execute before all output is printed (and empty the string)}
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
}

{c:role custom {target(mention)} {role.string}}



{=(COMMENT): =========================== Embed =========================== }

You approach the waterfall and notice there's actually an alcove behind it big enough to step in...

And you spot what appears to be a treasure chest - the wood of the chest itself appears to be brindled in gold!

{if({uses}<={rewardTrackerValue}):
You crank open the chest, and at the bottom rests a large, deep red rupee, glimmering as the light from the waterfall filters through to the chest.

# <:LinkGotItem:1205815251614965770> You got 20 rupees!

|
Unfortunately, it looks like someone else has already been here.. the chest is already open, and is empty.
}