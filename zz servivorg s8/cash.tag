{=(COMMENT):Current balance calculations}
{=(uids):{user(roleids)}}
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
{=(br.10):1258090355631587410}
{=(br.11):1258090387155976264}
{=(br.12):1258090412015354007}
{=(br.13):1258090440305934439}
{=(br.14):1258090469699751978}
{=(br.15):1258090495595249704}

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
{=(m.10):{if({in({br.10}):{uids}}==true):(1*2^10)|0}}
{=(m.11):{if({in({br.11}):{uids}}==true):(1*2^11)|0}}
{=(m.12):{if({in({br.12}):{uids}}==true):(1*2^12)|0}}
{=(m.13):{if({in({br.13}):{uids}}==true):(1*2^13)|0}}
{=(m.14):{if({in({br.14}):{uids}}==true):(1*2^14)|0}}
{=(m.15):{if({in({br.15}):{uids}}==true):(1*2^15)|0}}

{=(bal.current):{m:{m.0}+{m.1}+{m.2}+{m.3}+{m.4}+{m.5}+{m.6}+{m.7}+{m.8}+{m.9}+{m.10}+{m.11}+{m.12}+{m.13}+{m.14}+{m.15}}}

{=(bal):{m:trunc({bal.current})}}