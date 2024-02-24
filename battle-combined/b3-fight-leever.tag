{require(You cannot battle this enemy. Either you are exhausted and have 0 HP, you not currently in that coordinate, or you are typing this command in the wrong place - type it in your subs!):<@&1208391402413621339>}
{=(COMMENT): Battle Setup - Only thing that should change per 'encounter' - Enemy and Rupees}
{=(debugMode):disabled}
{=(eName):Leever}{var(eHP):3}{var(eAtt):1}{=(e):<:leever:1208253003111338044> **{eName}**}
{=(eDesc):You are fighting a Leever, a sand-dwelling creature known for its burrowing capability. It notices you, and starts barreling toward you at breakneck speed making an ominous rocking sound.}
{=(rupeeBounty):7}
{=(COMMENT): Reece made changes to all the things!}
{=(COMMENT): EVERYTHING BELOW HERE SHOULD STAY THE SAME ACROSS ALL ENEMY BATTLES}
{=(p):<:linkicon:1205758475867783238> **{user}**}{=(s):<:sword:1205825920863174666>}{=(ru):<:rupee:1205860341666545765>}{=(r):<:rupee:1205860341666545765>{rupeeBounty}}{=(fh):<:fh:1205968720342548481>}{=(eh):<:eh:1205968718669291611>}{=(space):⠀
> }{=(eH):{fh}{fh}{fh}}

{=(COMMENT): Player Attack, Damage, currentHP, MaxHP calculations at the start of the battle}
{=(pAtt):2}
{=(dShield):1208848371843072071}
{=(hShield):1201853062411730995}

{=(baseHP):1201782450565419038}
{=(hasBaseHP):{if({contains({baseHP}):{user(roleids)}}==true): true|false}}
{=(hasDekuShield):{if({contains({dShield}):{user(roleids)}}==true): true|false}}
{=(hasHylianShield):{if({contains({hShield}):{user(roleids)}}==true): true|false}}

{=(maxHP):{m:trunc({if({hasBaseHP}==true):5|0}{if({hasHylianShield}==true):+3|+0}{if({hasDekuShield}==true):+1|+0})}}


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

{=(dmg):{m:trunc({dmg.current})}}{var(HP):{m:trunc({maxHP}-{dmg})}}
{if({debugMode}==enabled):HP [{HP}] equals maxHP [{maxHP}] - dmg [{dmg}]}


{=(COMMENT): ====== // Attack 1: Save how much HP the enemy and player have left after attack 1 ====== }
{=(a1):{m:trunc({eHP}-{pAtt})} {m:trunc({HP}-{eAtt})}}{=(a1chk):{if({a1(1)}>=1):{a1(1)}|0} {if({a1(2)}>=1):{a1(2)}|0}}

{=(COMMENT): ====== // Attack 2: Save how much HP the enemy and player have left after attack 2 ====== }
{=(a2):{m:trunc({a1chk(1)}-{pAtt})} {m:trunc({a1chk(2)}-{eAtt})}}{=(a2chk):{if({a2(1)}>=1):{a2(1)}|0} {if({a2(2)}>=1):{a2(2)}|0}}

{=(COMMENT): ====== // Attack 3: Save how much HP the enemy and player have left after attack 3 ====== }
{=(a3):{m:trunc({a2chk(1)}-{pAtt})} {m:trunc({a2chk(2)}-{eAtt})}}{=(a3chk):{if({a3(1)}>=1):{a3(1)}|0} {if({a3(2)}>=1):{a3(2)}|0}}

{=(COMMENT): Conditionally determine winner for role string. Need to make sure conditional role command always works for damage, but only money if they win.}
{=(a1winHP):{and({a1chk(1)} == 0|{a1chk(2)} >= 1):{a1chk(2)}|0}} {if({debugMode}==enabled):a1winHP[{a1winHP}] if the player "won" on this attack, this will hold the player's new HP}
{=(a2winHP):{and({a2chk(1)} == 0|{a2chk(2)} >= 1|{a1winHP}==0):{a2chk(2)}|0}} {if({debugMode}==enabled):a2winHP[{a2winHP}] if the player "won" on this attack, this will hold the player's new HP}
{=(a3winHP):{and({a3chk(1)} == 0|{a3chk(2)} >= 1|{a1winHP}==0|{a2winHP}==0):{a3chk(2)}|0}} {if({debugMode}==enabled):a3winHP[{a3winHP}] if the player "won" on this attack, this will hold the player's new HP}
{=(didYouWinHP):{or({a1winHP}>=1|{a2winHP}>=1|{a3winHP}>=1):{m:trunc({a1winHP}+{a2winHP}+{a3winHP})}|0}} {if({debugMode}==enabled):didYouWinHP [{didYouWinHP}] holds the player's HP at the time of winning (or 0) if they lose.}

{=(becomeExhausted):{if({didYouWinHP}<=0):+1208391503463063592 -1208391402413621339}} {if({debugMode}==enabled):becomeExhausted - should be empty if won the fight, or show role IDs if lost [{becomeExhausted}].}




{=(COMMENT): Work out if the result of the battle was a 'double knock out'.}
{=(a1TKO):{and({a1chk(1)} == 0|{a1chk(2)} == 0|{didYouWinHP}<=0):true|false}} {if({debugMode}==enabled):a1TKO[{a1TKO}]}
{=(a2TKO):{and({a2chk(1)} == 0|{a2chk(2)} == 0|{a1TKO}==false|{didYouWinHP}<=0):true|false}} {if({debugMode}==enabled):a2TKO[{a2TKO}]}
{=(a3TKO):{and({a3chk(1)} == 0|{a3chk(2)} == 0|{a1TKO}==false|{a2TKO}==false|{didYouWinHP}<=0):true|false}} {if({debugMode}==enabled):a3TKO[{a3TKO}]}
{=(wasthereTKO):{or({a1TKO}==true|{a2TKO}==true|{a3TKO}==true):true|false}} {if({debugMode}==enabled):wasthereTKO[{wasthereTKO}]}


{=(COMMENT): DAMAGE CALCULATIONS AND BINARY ROLE CONVERSION.}
{=(dmg.dif):{if({didYouWinHP} >= 1):{m:trunc({HP}-{didYouWinHP})}|{HP}}}
{if({debugMode}==enabled):dmg.dif [{dmg.dif}] - should be calculating starting HP [{HP}] LESS HP at the time winning attack was done didYouWinHP [{didYouWinHP}]. Seems to just be the attack dmg done in total.}


{=(dmg.new):{m:{dmg}+{dmg.dif}}}
{if({debugMode}==enabled):dmg.new [{dmg.new}] is equal to:}
{if({debugMode}==enabled):dmg, which itself equals damage calculated coming in dmg.current [{dmg.current}] for example, 2 damage (6/8HP), PLUS}
{if({debugMode}==enabled):dmg.dif [{dmg.dif}]= Allegedly meant to be starting HP [{HP}] minus HP at the time of winning [{didYouWinHP}]}
{if({debugMode}==enabled):dmg.new [{dmg.new}] should be 3 if starting with 2 damage..}

{=(dmgdec):{dmg.new}}
{if({debugMode}==enabled):dmg.dec [{dmgdec}] seems redundant, maybe eliminate for later, but just in case, for now just being assinged the same as new (3)}


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

{=(bal.dif):{if({didYouWinHP}>=1):+{rupeeBounty}|+0}}
{if({debugMode}==enabled):bal.dif [{bal.dif}] <-- should be zero if player lost}

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
              {if({in(false true):{has.dr.0} {need.dr.0}}==true):+{dr.0}|{if({in(true false):{has.dr.0} {need.dr.0}}==true):-{dr.0}|}}
               {if({in(false true):{has.dr.1} {need.dr.1}}==true):+{dr.1}|{if({in(true false):{has.dr.1} {need.dr.1}}==true):-{dr.1}|}}
                {if({in(false true):{has.dr.2} {need.dr.2}}==true):+{dr.2}|{if({in(true false):{has.dr.2} {need.dr.2}}==true):-{dr.2}|}}
                 {if({in(false true):{has.dr.3} {need.dr.3}}==true):+{dr.3}|{if({in(true false):{has.dr.3} {need.dr.3}}==true):-{dr.3}|}}
                  {if({in(false true):{has.dr.4} {need.dr.4}}==true):+{dr.4}|{if({in(true false):{has.dr.4} {need.dr.4}}==true):-{dr.4}|}}
                   {if({in(false true):{has.dr.5} {need.dr.5}}==true):+{dr.5}|{if({in(true false):{has.dr.5} {need.dr.5}}==true):-{dr.5}|}}
                    {becomeExhausted}
}

{c:role custom {target(mention)} {role.string}}



              ___.              .___
  ____   _____\_ |__   ____   __| _/
_/ __ \ /     \| __ \_/ __ \ / __ | 
\  ___/|  Y Y  \ \_\ \  ___// /_/ | 
 \___  >__|_|  /___  /\___  >____ | 
     \/      \/    \/     \/     \/ 

==============================================
> {eDesc}{if({a1TKO}==true):## Attack 1{space}Both {p} and {e} leap toward each other, knocking each other out at the exact same time! It's a **double knock-out!**}
{all({a1chk(1)}==0|{a1chk(2)}>=1):## Attack 1{space}{p} dealt a finishing blow to {e} with {pAtt} attack, {p} has {a1chk(2)} HP remaining. {e} dropped {r} Rupees!}
{all({a1chk(2)}==0|{a1chk(1)}>=1):## Attack 1{space}{e} struck the final blow to {p}, {e} has {a1chk(1)}HP remaining.}
{all({a1chk(1)}>=1|{a1chk(2)}>=1):## Attack 1{space}{p} did {pAtt} attack to {e}, leaving it with {a1chk(1)} HP.
> {e} did {eAtt} attack to {p}, leaving {p} with {a1chk(2)} HP.}
{if({a2TKO}==true):## Attack 2{space}Both {p} and {e} leap toward each other, knocking each other out at the exact same time! **It's a double knock-out!**}
{all({a2chk(1)}==0|{a2chk(2)}>=1|{a1chk(1)}!=0):## Attack 2{space}{p} dealt a finishing blow to {e} with {pAtt} attack, {p} has {a2chk(2)} HP remaining. {e} dropped {r} Rupees!}
{all({a2chk(2)}==0|{a2chk(1)}>=1|{a1chk(2)}!=0):## Attack 2{space}{e} struck the final blow to {p}, {e} has {a2chk(1)}HP remaining.}
{all({a2chk(1)}>=1|{a2chk(2)}>=1):## Attack 2{space}{p} did {pAtt} attack to {e}, leaving it with {a2chk(1)} HP.
> {e} did {eAtt} attack to {p}, leaving {p} with {a2chk(2)} HP.}
{if({a3TKO}==true):## Attack 3{space}Both {p} and {e} leap toward each other, knocking each other out at the exact same time! **It's a double knock-out!**}
{all({a3chk(1)}==0|{a3chk(2)}>=1|{a2chk(1)}!=0):## Attack 3{space}{p} dealt a finishing blow to {e} with {pAtt} attack, {p} has {a3chk(2)} HP remaining. {e} dropped {r} Rupees!}
{all({a3chk(2)}==0|{a3chk(1)}>=1|{a2chk(2)}!=0):## Attack 3{space}{e} struck the final blow to {p}, {e} has {a3chk(1)}HP remaining.}
{all({a3chk(1)}>=1|{a3chk(2)}>=1):## Attack 3{space}{p} did {pAtt} attack to {e}, leaving it with {a3chk(1)} HP.
> {e} did {eAtt} attack to {p}, leaving {p} with {a3chk(2)} HP.}