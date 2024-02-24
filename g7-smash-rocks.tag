{var(smashedRocks):1206252647510843422}
{=(cdRole):1206252647510843422}
{=(cdTime):6h}

{if({contains({smashedRocks}):{user(roleids)}}==true):
You've already smashed too many today son|You get lots of rupees!}


{=():}{{if({contains({smashedRocks}):{user(roleids)}}!=true):c:temprole {user(id)} {cdTime} {cdRole}}}