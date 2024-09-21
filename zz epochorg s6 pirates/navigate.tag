{=(COMMENT):=========== 🌍🌍 Global Setup, Don't Change Unless You Understand🌍🌍 ===========}
{=(cdRole):1286727693672517766}
{=(cdTime):5m}
{blacklist(Your crew is currently anchored and resting after a hard day of sailing. You need to wait {cdTime} before using ?navigate again.):{cdRole}}
{override} {silent}
{c:temprole {user(id)} {cdTime} {cdRole}}

{=(navigateLocation):{lower:{args}}}
{=(uids):{user(roleids)}}


{=(a3):{if({navigateLocation}==a3):true|false}}
{if({a3}==true):# YOU FOUND THE IDOL}
{if({a3}==false): It seems like there's nothing here.}