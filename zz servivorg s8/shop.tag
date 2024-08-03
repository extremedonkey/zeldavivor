{override} {silent}
{=(space):⠀}

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




> ## `   🔪 Katana (Vote Block)                  `
Block 1 vote at any one tribal. Expires F7.
Katanas in stock in shop: {katana.current}

> ## `   🏏 Baseball Bat (Extra Vote)           `
Extra Vote - cast 2 votes at tribal. Expires F6.
Baseball Bats in stock in shop: {baseball.current}

> ## `   🧤 Brass Knuckles (Knowledge is Power) `
Steal an advantage from someone as long as you ask the right person for the right thing.
Brass Knuckles in stock in shop: {brass.current}






{=(COMMENT): =============== xx =============== }
{=(xx.0):xx}
{=(xx.1):xx}

{=(xx.0):{if({in({xx.0}):{uids}}==true):(1*2^0)|0}}
{=(xx.1):{if({in({xx.1}):{uids}}==true):(1*2^1)|0}}

{=(xx.dec):{m:{xx.0}+{xx.1}}}
{=(katxxana.current):{m:trunc({xx.dec})}}

