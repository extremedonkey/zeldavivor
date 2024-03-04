{=():}
{=(serverID):ServerID}
{=(role.1):Role1ID}
{=(role.2):Role2ID}
{=(ur):{user(roleids)}}
{=(hasRole):{contains({role.1}):{ur}} {contains({role.2}):{ur}}}
{=(roleCheck):{in(true true):{hasRole}}}
{{if({roleCheck}==false):blacklist(You cannot use this Tag):{serverID}}