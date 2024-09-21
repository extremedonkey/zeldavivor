{override} {silent}
{=(space):⠀}

{=(shopID):235148962103951360}
{=(didTheyTag):{if({target(id)}=={shopID}):true|false}}


{=(whoToCheck):{if({args}==):user|target}}

{=(uids):{{whoToCheck}(roleids)}}

{=(COMMENT): =============== Katana  =============== }
{=(kt.0):1263436995116404828}
{=(kt.1):1263437101366640690}

{=(km.0):{if({in({kt.0}):{uids}}==true):(1*2^0)|0}}
{=(km.1):{if({in({kt.1}):{uids}}==true):(1*2^1)|0}}

{=(katana.dec):{m:{km.0}+{km.1}}}
{=(katana.current):{m:trunc({katana.dec})}}


{=(COMMENT): =============== Baseball Ball =============== }
{=(ba.0):1263437536143872122}
{=(ba.1):1263437704952025088}

{=(bam.0):{if({in({ba.0}):{uids}}==true):(1*2^0)|0}}
{=(bam.1):{if({in({ba.1}):{uids}}==true):(1*2^1)|0}}

{=(baseball.dec):{m:{bam.0}+{bam.1}}}
{=(baseball.current):{m:trunc({baseball.dec})}}


{=(COMMENT): =============== Brass Knuckles =============== }
{=(bk.0):1263437811986599936}

{=(bkm.0):{if({in({bk.0}):{uids}}==true):(1*2^0)|0}}

{=(brass.dec):{m:{bkm.0}}}
{=(brass.current):{m:trunc({brass.dec})}}


{=(COMMENT): =============== Molotov =============== }
{=(mo.0):1263437957998579754}

{=(mom.0):{if({in({mo.0}):{uids}}==true):(1*2^0)|0}}

{=(molotov.dec):{m:{mom.0}}}
{=(molotov.current):{m:trunc({molotov.dec})}}

{=(COMMENT): =============== Tear Gas=============== }
{=(te.0):1263438045521383426}
{=(tem.0):{if({in({te.0}):{uids}}==true):(1*2^0)|0}}

{=(teargas.dec):{m:{tem.0}}}
{=(teargas.current):{m:trunc({teargas.dec})}}

{=(COMMENT): =============== Sticky Bomb =============== }
{=(st.0):1263438168187998231}
{=(st.1):1263438235502116996}

{=(stm.0):{if({in({st.0}):{uids}}==true):(1*2^0)|0}}
{=(stm.1):{if({in({st.1}):{uids}}==true):(1*2^1)|0}}

{=(stickybomb.dec):{m:{stm.0}+{stm.1}}}
{=(stickybomb.current):{m:trunc({stickybomb.dec})}}

{=(COMMENT): =============== Pistol =============== }
{=(pi.0):1263438302904844289}
{=(pi.1):1263438360911941723}
{=(pi.2):1263438477064933396}

{=(pim.0):{if({in({pi.0}):{uids}}==true):(1*2^0)|0}}
{=(pim.1):{if({in({pi.1}):{uids}}==true):(1*2^1)|0}}
{=(pim.2):{if({in({pi.2}):{uids}}==true):(1*2^2)|0}}

{=(pistol.dec):{m:{pim.0}+{pim.1}+{pim.2}}}
{=(pistol.current):{m:trunc({pistol.dec})}}

{=(COMMENT): =============== Shotgun =============== }
{=(sh.0):1263438565824532583}
{=(sh.1):1263438637580685323}

{=(shm.0):{if({in({sh.0}):{uids}}==true):(1*2^0)|0}}
{=(shm.1):{if({in({sh.1}):{uids}}==true):(1*2^1)|0}}

{=(shotgun.dec):{m:{shm.0}+{shm.1}}}
{=(shotgun.current):{m:trunc({shotgun.dec})}}

{=(COMMENT): =============== Machine Gun =============== }
{=(ma.0):1263438709185843253}

{=(mam.0):{if({in({ma.0}):{uids}}==true):(1*2^0)|0}}

{=(machinegun.dec):{m:{mam.0}}}
{=(machinegun.current):{m:trunc({machinegun.dec})}}


{=(COMMENT): =============== Grenade Launcher =============== }
{=(gr.0):1263438770934382624}

{=(grm.0):{if({in({gr.0}):{uids}}==true):(1*2^0)|0}}

{=(grenadelauncher.dec):{m:{grm.0}}}
{=(grenadelauncher.current):{m:trunc({grenadelauncher.dec})}}


{=(COMMENT): =============== Bulletproof Vest =============== }
{=(bu.0):1263438850521567342}
{=(bu.1):1263438909422047242}

{=(bum.0):{if({in({bu.0}):{uids}}==true):(1*2^0)|0}}
{=(bum.1):{if({in({bu.1}):{uids}}==true):(1*2^1)|0}}

{=(vest.dec):{m:{bum.0}+{bum.1}}}
{=(vest.current):{m:trunc({vest.dec})}}


{=(COMMENT): =============== Parachute =============== }
{=(pa.0):1263439054431846421}
{=(pa.1):1263439111465865278}

{=(pam.0):{if({in({pa.0}):{uids}}==true):(1*2^0)|0}}
{=(pam.1):{if({in({pa.1}):{uids}}==true):(1*2^1)|0}}

{=(parachute.dec):{m:{pam.0}+{pam.1}}}
{=(parachute.current):{m:trunc({parachute.dec})}}


{=(content):
# SNACKS
> ## `🍫 Ego Chaser (Challenge advantage)`
Provides a minor boost in any one challenge until the final 7.
Unlimited Stock
`?buy ego @{target}`
> 💵 $40

> ## `🍬 P & Qa (Conf guest)`
Allows you to invite one person to speak with you in your confessional.
Unlimited Stock
`?buy pnq @{target}`
> 💵 $25

> ## `🥫 eCola (Tribal viewer)`
Grants the ability to observe any one tribal council of your choice. You will not be hidden.
Unlimited Stock
`?buy ecola @{target}`
> 💵 $30

# MELEE ITEMS
> ## `🔪 Katana (Vote Block)`
Block 1 vote at any one tribal. Expires F7.
Katanas in stock in shop: {katana.current}
`?buy katana @{target}`
> 💵 $175

> ## `🏏 Baseball Bat (Extra Vote)`
Extra Vote - cast 2 votes at tribal. Expires F6.
Baseball Bats in stock in shop: {baseball.current}
`?buy baseballbat @{target}`
> 💵 $200

> ## `🧤 Brass Knuckles (KIP)`
Steal an advantage from someone as long as you ask the right person for the right thing.
Brass Knuckles in stock in shop: {brass.current}
`?buy brassknuckles @{target}`
> 💵 $250

# EXPLOSIVES
> ## `🍸 Molotov (firemaker)`
Forces the top two vote-getters (excluding those with idol immunity) into a fire-making challenge.
Molotovs in stock in shop: {molotov.current}
`?buy molotov @{target}`
> 💵 $350

> ## `🛢️ Tear Gas (SWoP)`
Allows you to leave tribal council immediately and be safe. You cannot vote.
Tear Gas in stock in shop: {teargas.current}
`?buy teargas @{target}`
> 💵 $500

> ## `💣 Sticky Bomb (3 Vote Blocker)`
Allows you to block up to three votes.
Sticky Bombs in stock in shop: {stickybomb.current}
`?buy stickybomb @{target}`
> 💵 $450


# WEAPONS
> ## `🔫 Pistol (SitD)`
Gives a 1 in 6 chance of surviving tribal council.
Pistols in stock in shop: {pistol.current}
`?buy pistol @{target}`
> 💵 $250

> ## `🔫🧨 Shotgun (SaV)`
Lets you steal any player's vote to use as your own.
Shotguns in stock in shop: {shotgun.current}
`?buy shotgun @{target}`
> 💵 $300

> ## `🔫🤖 Machine Gun (50/50 idol)`
Offers a chance to either gain safety or lose your vote.
Machine Guns in stock in shop: {machinegun.current}
`?buy machinegun @{target}`
> 💵 $350

> ## `🔫💥 Grenade Launcher (rock breaker)`
Allows you to remove yourself from a rock-drawing scenario.
Grenade Launchers in stock in shop: {grenadelauncher.current}
`?buy grenadelauncher @{target}`
> 💵 $350

# MISC
> ## `🦺 Bulletproof Vest (Idol)`
Provides immunity and keeps you safe.
Bulletproof Vests in stock in shop: {vest.current}
`?buy vest @{target}`
> 💵 $750

> ## `🪂 Parachute (Vote Viewer)`
Enables you to see votes in real time. You cannot share this information with others.
Parachutes in stock in shop: {parachute.current}
`?buy parachute @{target}`
> 💵 $450
}












=========================== EMBED ===========================  
{"url":"https://open.spotify.com/playlist/6DgiDBgyHTWhd997CR8SHK?si=8a5b16b5edeb4962","title":":flag_us: WELCOME TO AMMU-NATION :flag_us: ","description":"{if({didTheyTag}==false):# ❌DENIED ENTRY ❌\nYou need to tag iFruit to get into the shop (*?shop <@{shopID}>*)\n|\n> ## `🔪 Katana (Vote Block)`\nBlock 1 vote at any one tribal. Expires F7.\nKatanas in stock in shop: {katana.current}\n`?buy katana`\n> 💵 35 dollars\n\n> ## `🏏 Baseball Bat (Extra Vote)`\nExtra Vote - cast 2 votes at tribal. Expires F6.\nBaseball Bats in stock in shop: {baseball.current}\n`?buy baseballbat`\n> 💵 30 dollars\n\n> ## `🧤 Brass Knuckles (KIP)`\nSteal an advantage from someone as long as you ask the right person for the right thing.\nBrass Knuckles in stock in shop: {brass.current}\n`?buy brassknuckles`\n> 💵 25 dollars\n}","image":{"url":"https://cdn.discordapp.com/attachments/1139780561804726362/1266063756195008575/image.png?ex=66a3c941&is=66a277c1&hm=e4e5dd6c9ccb678f9eaa90190ac1327f05068ebd72e1385a102c2b40dfc88e9c&"},"color":4886754,"footer":{"icon_url":"https://cdn.discordapp.com/attachments/1139780561804726362/1266080708779048991/bald.png?ex=66a3d90b&is=66a2878b&hm=c93fff61632c7ca8ddd1a6f7b2869511a3350139528702c5adeeb1e27c10830d&","text":"\"If the cops ask, you didn't get a deal, ok?\""}}


{if({didTheyTag}==false):# ❌DENIED ENTRY ❌
You need to tag iFruit to get into the shop (*?shop <@{shopID}>*)
|
{content}
}