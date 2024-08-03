=IF(AND(270 <= 350, 750 > 0), 270, MAX(0, 270 - MAX(0, 750 - 350)))

=IF(AND(TotalWheatHold <= SiloProtection, MaxLocustDmg > 0), TotalWheatHeld, MAX(0, 270 - MAX(0, MaxLocustDmg - SiloProtection)))

=IF(TotalWheatHold <= SiloProtection, TotalWheatHeld, MAX(0, 270 - MAX(0, MaxLocustDmg - SiloProtection)))

MAX(0,R8-MAX(0,T8-O8)))



Locust 		750 damage
Silo Protection 350 damage
In the Bank = 	270 wheat



PlayerNewWheat = PlayerWheat - LocustAttack
		270 = 270 - 750



=IF(
    AND(R8<=O8,T8>0),R8, If the player's wheat is less than the silo protection, and the locus damage was above 0, val = wheatheld
    MAX(0,R8-MAX(0,T8-O8)))