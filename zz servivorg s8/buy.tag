{=(COMMENT):=========== 🌍🌍 Global Setup, Don't Change Unless You Understand🌍🌍 ===========}
{=():}
{silent} {override}
{=(largs):{lower:{args}}}
{=(l1):{largs(1)}}
{=(uids):{user(roleids)}}
{=(shopID):235148962103951360}
{=(didTheyTag):{if({target(id)}=={shopID}):true|false}}

{=(debugMode):disabled}

{if({didTheyTag}==false):# ❌PURCHASE UNSUCCESSFUL
You need to tag iFruit (?buy *item* <@{shopID}>)}


{=(COMMENT):=========== 🏪🏪 SHOP: Identify Item Purchase 🏪🏪 ===========}

{=(comment):list form is... item | category | price | description | 2^0 | 2^1 | 2^2} 
{=(item.{l1}):Unknown item}

{=(COMMENT):MELEE}
{=(item.ego):ego|40|🍫 Ego Chaser Acquired!|unlimited|unlimited}
{=(item.pnq):pnq|25|🍬 P's & Q's Acquired!|unlimited|unlimited}
{=(item.ecola):ecola|30|🥫 eCola Acquired!|unlimited|unlimited}

{=(COMMENT):SNACKS (check if they can be made free)}
{=(item.katana):katana|175|🔪 Katana Acquired!|1263436995116404828|1263437101366640690}
{=(item.baseballbat):baseballbat|200|🏏 Baseball Bat Acquired!|1263437536143872122|1263437704952025088}
{=(item.brassknuckles):brassknuckles|250|🧤 Brass Knuckles Acquired!|1263437811986599936}

{=(COMMENT):EXPLOSIVES}
{=(item.molotov):molotov|350|🍸 Molotov Cocktail Acquired!|1263437957998579754}
{=(item.teargas):teargas|500|🛢️ Tear Gas Acquired!|1263438045521383426}
{=(item.stickybomb):stickybomb|450|💣 Sticky Bomb Acquired!|1263438168187998231|1263438235502116996}

{=(COMMENT):WEAPONS}
{=(item.pistol):pistol|250|🔫 Pistol Acquired!|1263438302904844289|1263438360911941723|1263438477064933396}
{=(item.shotgun):shotgun|300|🔫🧨 Shotgun Acquired!|1263438565824532583|1263438637580685323}
{=(item.machinegun):machinegun|350|🔫🤖 Machine Gun Acquired!|1263438709185843253}
{=(item.grenadelauncher):grenadelauncher|350|🔫💥 Grenade Launcher Acquired!|1263438770934382624}

{=(COMMENT):MISC}
{=(item.vest):vest|750|🦺 Bulletproof Vest Acquired!|1263438850521567342|1263438909422047242}
{=(item.parachute):parachute|450|🪂 Parachute Acquired!|1263439054431846421|1263439111465865278}



{=(COMMENT):=========== 🏪⚔️ SHOP & PLAYER ITEM: Calculate Stock Levels of selected item ⚔️🏪 ===========}
{=(shopuids):{target(roleids)}}
{=(kt.0):{item.{l1}(4):|}}
{=(kt.1):{item.{l1}(5):|}}
{=(kt.2):{item.{l1}(6):|}}
{=(km.0):{if({in({kt.0}):{shopuids}}==true):(1*2^0)|0}}
{=(km.1):{if({in({kt.1}):{shopuids}}==true):(1*2^1)|0}}
{=(km.2):{if({in({kt.1}):{shopuids}}==true):(1*2^2)|0}}

{=(COMMENT):=========== 🏪🏪 SHOP: Reduce Stock By 1 🏪🏪 ===========}
{=(shopstock.dec):{m:{km.0}+{km.1}+{km.2}}}
{=(shopstock.current):{m:trunc({shopstock.dec})}}
{=(unlimitedItem):{if({kt.0}==unlimited):true|false}}
{=(shopstock.instock):{or({unlimitedItem}==true|{shopstock.current}>=1):true|false}}
{=(shopstock.old):{if({shopstock.current}>=1):true|false}}

{=(shopstock.newstock):{m:{shopstock.current}-1}}

{=(COMMENT):=========== 🏪🏪 SHOP: Convert new Quantity to Binary 🏪🏪 ===========}

{=(shopkbit.3):{if({shopstock.newstock}>=4):1|0}}
{=(shopknum.14):{if({shopkbit.3}==1):{m:trunc({shopstock.newstock}-4)}|{shopstock.newstock}}}

{=(shopkbit.2):{if({shopknum.14}>=2):1|0}}
{=(shopknum.15):{if({shopkbit.2}==1):{m:trunc({shopknum.14}-2)}|{shopknum.14}}}

{=(shopkbit.1):{if({shopknum.15}>=1):1|0}}

{=(COMMENT):=========== 🏪🏪 SHOP: Generate Role String for new Quantity 🏪🏪 ===========}

{=(has.kt.0):{in({kt.0}):{shopuids}}}
{=(need.kt.0):{if({shopkbit.1}==1):true|false}}

{=(has.kt.1):{in({kt.1}):{shopuids}}}
{=(need.kt.1):{if({shopkbit.2}==1):true|false}}

{=(has.kt.2):{in({kt.2}):{shopuids}}}
{=(need.kt.2):{if({shopkbit.3}==1):true|false}}

{=(shopstockroles.string):{if({in(false true):{has.kt.0} {need.kt.0}}==true):+{kt.0}|{if({in(true false):{has.kt.0} {need.kt.0}}==true):-{kt.0}|}} {if({in(false true):{has.kt.1} {need.kt.1}}==true):+{kt.1}|{if({in(true false):{has.kt.1} {need.kt.1}}==true):-{kt.1}|}} {if({in(false true):{has.kt.2} {need.kt.2}}==true):+{kt.2}|{if({in(true false):{has.kt.2} {need.kt.2}}==true):-{kt.2}|}}}


{=(COMMENT):=========== ⚔️⚔️ PLAYER ITEM: Generate Role String for new Quantity ⚔️⚔️ ===========}
{=(mr.0):{item.{l1}(4):|}}
{=(mr.1):{item.{l1}(5):|}}
{=(mr.2):{item.{l1}(6):|}}
{=(mm.0):{if({in({mr.0}):{uids}}==true):(1*2^0)|0}}
{=(mm.1):{if({in({mr.1}):{uids}}==true):(1*2^1)|0}}
{=(mm.2):{if({in({mr.2}):{uids}}==true):(1*2^2)|0}}
{=(mnum):{m:{mm.0}+{mm.1}+{mm.2}+1}}


{=(COMMENT):=========== ⚔️⚔️ PLAYER ITEM: Convert new Quantity to Binary ⚔️⚔️ ===========}

{=(mbit.3):{if({mnum}>=4):1|0}}
{=(mnum.14):{if({mbit.3}==1):{m:trunc({mnum}-4)}|{mnum}}}

{=(mbit.2):{if({mnum.14}>=2):1|0}}
{=(mnum.15):{if({mbit.2}==1):{m:trunc({mnum.14}-2)}|{mnum.14}}}

{=(mbit.1):{if({mnum.15}>=1):1|0}}


{=(COMMENT):=========== ⚔️⚔️ PLAYER ITEM: Generate Role String for new Quantity ⚔️⚔️ ===========}

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

{=(playeritems.string):{if({in(false true):{has.mr.0} {need.mr.0}}==true):+{mr.0}|{if({in(true false):{has.mr.0} {need.mr.0}}==true):-{mr.0}|}} {if({in(false true):{has.mr.1} {need.mr.1}}==true):+{mr.1}|{if({in(true false):{has.mr.1} {need.mr.1}}==true):-{mr.1}|}} {if({in(false true):{has.mr.2} {need.mr.2}}==true):+{mr.2}|{if({in(true false):{has.mr.2} {need.mr.2}}==true):-{mr.2}|}} {if({in(false true):{has.mr.3} {need.mr.3}}==true):+{mr.3}|{if({in(true false):{has.mr.3} {need.mr.3}}==true):-{mr.3}|}} {if({in(false true):{has.mr.4} {need.mr.4}}==true):+{mr.4}|{if({in(true false):{has.mr.4} {need.mr.4}}==true):-{mr.4}|}} {if({in(false true):{has.mr.5} {need.mr.5}}==true):+{mr.5}|{if({in(true false):{has.mr.5} {need.mr.5}}==true):-{mr.5}|}}}


{=(COMMENT):=========== 💰💰 PLAYER BAL: Calculate Current Balance (Max 1023) 💰💰 ===========}
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


{=(COMMENT):=========== 💰💰 PLAYER BAL: Calculate New Balance and Convert to Binary (Max 1023) 💰💰 ===========}

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


{=(COMMENT):=========== 💰💰 PLAYER BAL: Generate Role String for new Balance (Max 1023) 💰💰 ===========}

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

{=(COMMENT):=========== 🏪💰⚔️ ALL: Check if purchase conditions met ⚔️💰🏪 ===========}

{=(check.not.item):{in(Unknown item):{item.{l1}}}}
{=(check.afford):{and({bal.current}>={item.{l1}(2):|}|{check.not.item}==false|{shopstock.instock}==true|{didTheyTag}==true):true|false}}

{=(COMMENT):=========== 🏪💰⚔️ ALL: Apply new roles if purchase conditions met, else abort ⚔️💰🏪 ===========}

{=(role.string): {playeritems.string} {if({in(false true):{has.br.0} {need.br.0}}==true):+{br.0}|{if({in(true false):{has.br.0} {need.br.0}}==true):-{br.0}|}} {if({in(false true):{has.br.1} {need.br.1}}==true):+{br.1}|{if({in(true false):{has.br.1} {need.br.1}}==true):-{br.1}|}} {if({in(false true):{has.br.2} {need.br.2}}==true):+{br.2}|{if({in(true false):{has.br.2} {need.br.2}}==true):-{br.2}|}} {if({in(false true):{has.br.3} {need.br.3}}==true):+{br.3}|{if({in(true false):{has.br.3} {need.br.3}}==true):-{br.3}|}} {if({in(false true):{has.br.4} {need.br.4}}==true):+{br.4}|{if({in(true false):{has.br.4} {need.br.4}}==true):-{br.4}|}} {if({in(false true):{has.br.5} {need.br.5}}==true):+{br.5}|{if({in(true false):{has.br.5} {need.br.5}}==true):-{br.5}|}} {if({in(false true):{has.br.6} {need.br.6}}==true):+{br.6}|{if({in(true false):{has.br.6} {need.br.6}}==true):-{br.6}|}} {if({in(false true):{has.br.7} {need.br.7}}==true):+{br.7}|{if({in(true false):{has.br.7} {need.br.7}}==true):-{br.7}|}} {if({in(false true):{has.br.8} {need.br.8}}==true):+{br.8}|{if({in(true false):{has.br.8} {need.br.8}}==true):-{br.8}|}} {if({in(false true):{has.br.9} {need.br.9}}==true):+{br.9}|{if({in(true false):{has.br.9} {need.br.9}}==true):-{br.9}|}}}

{{if({check.afford}==true):c:role custom {user(id)} {role.string}}}

{{if({check.afford}==true):c:role custom {target(id)} {shopstockroles.string}}}


{=(comment):output control}
{=(output.error):## ❌❌ Purchase unsuccessful! ❌❌
Please check:
1) You have enough cash (see ?cash)
2) The item isn't sold out (see ?shop)
3) You typed the buy command properly (see ?shop)
4) You didn't forget to tag <@{shopID}> in your buy command (?buy *item* @iFruit)}
{=(output.success):
# {item.{l1}(3):|}
Deal closed successfully. Welcome to the high life 💵💵!}
{=(outcome):{if({check.afford}==true):success|error}}