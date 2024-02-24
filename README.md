# zeldavivor
## Battle files
Because tagscript doesn't allow calling other tags, normally programming style methods won't work.

So common battle logic is maintained in global/battleglobal.tag. This file should be maintained and updated for all common battle behaviours.

Coordinate specific enemy logic is maintained in the battle-headers file - typically enemy HP, description and attack.

Run the update_battles.bat file which will combine each file in battle-headers (enemy hp attack etc) with battleglobal.tag and put the newly combined files in battle-combined.

These can then be pasted into the relevant carl-bot tags. Remember that in the tag, Content and Embed description still need to be separately pasted in.
