{var(hasShield):1201853062411730995}
{var(baseHP):1201782450565419038}

{=(hasBaseHP):{if({contains({baseHP}):{user(roleids)}}==true): true|false}}
{=(hasHylianShield):{if({contains({hasShield}):{user(roleids)}}==true): true|false}}
{=(maxHP):{m:trunc({if({hasBaseHP}==true):5|0}{if({hasHylianShield}==true):+3|+0})}}


{=(COMMENT):Current damage calculations}
{=(uids):{user(roleids)}}
{=(dr.0):1206484741092548609}
{=(dr.1):1206484810848010240}
{=(dr.2):1206484830657843260}
{=(dr.3):1206484850064891915}
{=(dr.4):1206484869446893578}
{=(dr.5):1206484891844354110}
{=(dr.6):1206484910479511562}
{=(dr.7):1206484934970052648}
{=(dr.8):1206484965219373076}
{=(dr.9):1206484982873333760}
{=(dr.10):1206485001303101440}
{=(dr.11):1206485026225782846}
{=(dr.12):1206485047507427349}
{=(dr.13):1206485070488010762}
{=(dr.14):1206485088074862633}
{=(dr.15):1206485107217539072}

{=(m.0):{if({in({dr.0}):{uids}}==true):(1*2^0)|0}}
{=(m.1):{if({in({dr.1}):{uids}}==true):(1*2^1)|0}}
{=(m.2):{if({in({dr.2}):{uids}}==true):(1*2^2)|0}}
{=(m.3):{if({in({dr.3}):{uids}}==true):(1*2^3)|0}}
{=(m.4):{if({in({dr.4}):{uids}}==true):(1*2^4)|0}}
{=(m.5):{if({in({dr.5}):{uids}}==true):(1*2^5)|0}}
{=(m.6):{if({in({dr.6}):{uids}}==true):(1*2^6)|0}}
{=(m.7):{if({in({dr.7}):{uids}}==true):(1*2^7)|0}}
{=(m.8):{if({in({dr.8}):{uids}}==true):(1*2^8)|0}}
{=(m.9):{if({in({dr.9}):{uids}}==true):(1*2^9)|0}}
{=(m.10):{if({in({dr.10}):{uids}}==true):(1*2^10)|0}}
{=(m.11):{if({in({dr.11}):{uids}}==true):(1*2^11)|0}}
{=(m.12):{if({in({dr.12}):{uids}}==true):(1*2^12)|0}}
{=(m.13):{if({in({dr.13}):{uids}}==true):(1*2^13)|0}}
{=(m.14):{if({in({dr.14}):{uids}}==true):(1*2^14)|0}}
{=(m.15):{if({in({dr.15}):{uids}}==true):(1*2^15)|0}}

{=(dmg.current):{m:{m.0}+{m.1}+{m.2}+{m.3}+{m.4}+{m.5}+{m.6}+{m.7}+{m.8}+{m.9}+{m.10}+{m.11}+{m.12}+{m.13}+{m.14}+{m.15}}}


{=(dmg):{m:trunc({dmg.current})}}

{var(HP):{m:trunc({maxHP}-{dmg})}}




# Players current HP!
Todo: Scope out temp dmg roles, tidy up variables - have one representing 'player has shield' etc.
> **❤️HP**: {HP} / {maxHP}

**Damage Calculations**
Damage: {dmg}

**HP Calculations:**
{if({hasBaseHP}==true):Base HP, +5HP|Base HP missing}
{if({hasHylianShield}==true):Shield is equipped, +3HP|Shield is not equipped}