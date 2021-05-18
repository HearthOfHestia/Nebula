/*
////////////////////////////
/  =--------------------=  /
/  == Tail Definitions ==  /
/  =--------------------=  /
////////////////////////////
*/

/datum/sprite_accessory/tail
	name = "You should not see this..."
	icon = 'mods/content/genemodding/icons/mob/tails.dmi'
	do_colouration = TRUE //Set to 1 to enable coloration using the tail color.

	blend = ICON_MULTIPLY // Only appliciable if do_coloration = 1
	var/extra_overlay // Icon state of an additional overlay to blend in.

/datum/sprite_accessory/tail/invisible
	name = "hide species-sprite tail"
	icon = null
	icon_state = null

/datum/sprite_accessory/tail/squirrel
	name = "squirrel, colorable"
	icon_state = "squirrel"

/datum/sprite_accessory/tail/kitty
	name = "kitty, colorable, downwards"
	icon_state = "kittydown"

/datum/sprite_accessory/tail/kittyup
	name = "kitty, colorable, upwards"
	icon_state = "kittyup"

/datum/sprite_accessory/tail/tiger_white
	name = "tiger, colorable"
	icon_state = "tiger"
	extra_overlay = "tigerinnerwhite"

/datum/sprite_accessory/tail/stripey
	name = "stripey taj, colorable"
	icon_state = "stripeytail"
	extra_overlay = "stripeytail_mark"

/datum/sprite_accessory/tail/chameleon
	name = "Chameleon, colorable"
	icon_state = "chameleon"

/datum/sprite_accessory/tail/bunny
	name = "bunny, colorable"
	icon_state = "bunny"
	do_colouration = TRUE
	blend = ICON_ADD

/datum/sprite_accessory/tail/bear
	name = "bear, colorable"
	icon_state = "bear"

/datum/sprite_accessory/tail/dragon
	name = "dragon, colorable"
	icon_state = "dragon"

/datum/sprite_accessory/tail/wolf
	name = "wolf, colorable"
	icon_state = "wolf"
	extra_overlay = "wolfinner"

/datum/sprite_accessory/tail/mouse
	name = "mouse, colorable"
	icon_state = "mouse"

/datum/sprite_accessory/tail/horse
	name = "horse tail, colorable"
	icon_state = "horse"

/datum/sprite_accessory/tail/cow
	name = "cow tail, colorable"
	icon_state = "cow"

/datum/sprite_accessory/tail/fantail
	name = "avian fantail, colorable"
	icon_state = "fantail"

/datum/sprite_accessory/tail/wagtail
	name = "avian wagtail, colorable"
	icon_state = "wagtail"

/datum/sprite_accessory/tail/crossfox
	name = "cross fox"
	icon_state = "crossfox"
	do_colouration = FALSE

/datum/sprite_accessory/tail/beethorax
	name = "bee thorax"
	icon_state = "beethorax"
	do_colouration = FALSE

/datum/sprite_accessory/tail/doublekitsune
	name = "double kitsune tail, colorable"
	icon_state = "doublekitsune"

/datum/sprite_accessory/tail/spade_color
	name = "spade-tail (colorable)"
	icon_state = "spadetail-black"
	blend = ICON_ADD

/datum/sprite_accessory/tail/snag
	name = "xenomorph tail 1"
	icon_state = "snag"

/datum/sprite_accessory/tail/xenotail
	name = "xenomorph tail 2"
	icon_state = "xenotail"

/datum/sprite_accessory/tail/eboop
	name = "EGN mech tail (dual color)"
	icon_state = "eboop"
	extra_overlay = "eboop_mark"

/datum/sprite_accessory/tail/ringtail
	name = "ringtail, colorable"
	icon_state = "ringtail"
	extra_overlay = "ringtail_mark"

/datum/sprite_accessory/tail/satyr
	name = "goat legs, colorable"
	icon_state = "satyr"

/datum/sprite_accessory/tail/curltail
	name = "curltail (vwag)"
	icon_state = "curltail"
	extra_overlay = "curltail_mark"

/datum/sprite_accessory/tail/shorttail
	name = "shorttail (vwag)"
	icon_state = "straighttail"

/datum/sprite_accessory/tail/sneptail
	name = "Snep/Furry Tail (vwag)"
	icon_state = "sneptail"
	extra_overlay = "sneptail_mark"

/datum/sprite_accessory/tail/tiger_new
	name = "tiger tail (vwag)"
	icon_state = "tigertail"
	extra_overlay = "tigertail_mark"

/datum/sprite_accessory/tail/vulp_new
	name = "new vulp tail (vwag)"
	icon_state = "vulptail"
	extra_overlay = "vulptail_mark"

/datum/sprite_accessory/tail/otietail
	name = "otie tail (vwag)"
	icon_state = "otie"

/datum/sprite_accessory/tail/ztail
	name = "jagged flufftail"
	icon_state = "ztail"

/datum/sprite_accessory/tail/snaketail
	name = "snake tail, colorable"
	icon_state = "snaketail"

/datum/sprite_accessory/tail/vulpan_alt
	name = "vulpkanin alt style, colorable"
	icon_state = "vulptail_alt"

/datum/sprite_accessory/tail/sergaltaildc
	name = "sergal, dual-color"
	icon_state = "sergal"
	extra_overlay = "sergal_mark"

/datum/sprite_accessory/tail/skunktail
	name = "skunk, dual-color"
	icon_state = "skunktail"
	extra_overlay = "skunktail_mark"

/datum/sprite_accessory/tail/deertail
	name = "deer, dual-color"
	icon_state = "deertail"
	extra_overlay = "deertail_mark"

/datum/sprite_accessory/tail/special/tajaran
	name = "tajaran tail"
	icon_state = "tajtail_loop1"

/datum/sprite_accessory/tail/zenghu_taj
	name = "Zeng-Hu Tajaran Synth tail"
	icon_state = "zenghu_taj"
	do_colouration = FALSE

/datum/sprite_accessory/tail/tail_smooth
	name = "Smooth Lizard Tail, Colorable"
	icon_state = "tail_smooth"

/datum/sprite_accessory/tail/tripplekitsune_colorable_yw
	name = "Kitsune 3 tails - colorable"
	icon_state = "triplekitsune"
	extra_overlay = "triplekitsune_tips"

/datum/sprite_accessory/tail/lizard_tail_smooth
	name = "Lizard Tail (Smooth)"
	icon_state = "lizard_tail_smooth"

/datum/sprite_accessory/tail/lizard_tail_dark_tiger
	name = "Lizard Tail (Dark Tiger)"
	icon_state = "lizard_tail_dark_tiger"

/datum/sprite_accessory/tail/lizard_tail_light_tiger
	name = "Lizard Tail (Light Tiger)"
	icon_state = "lizard_tail_light_tiger"

/datum/sprite_accessory/tail/lizard_tail_spiked
	name = "Lizard Tail (Spiked)"
	icon_state = "lizard_tail_spiked"

/datum/sprite_accessory/tail/wolf_tail
	name = "Wolf Tail"
	icon_state = "wolf_tail"

/datum/sprite_accessory/tail/ninekitsune_colorable_yw
	name = "Kitsune 9 tails - colorable"
	icon_state = "ninekitsune"
	extra_overlay = "ninekitsune-tips"

/datum/sprite_accessory/tail/vulpkanin_alt_color
	name = "Vulpkanin alt"
	icon_state = "vulpkanin_alt_color"
	extra_overlay = "vulpkanin_alt_color_tips"

/datum/sprite_accessory/tail/raccoon_tail
	name = "Raccoon gray tail"
	icon_state = "raccoon_tail"

/datum/sprite_accessory/tail/Easterntail
	name = "Eastern Dragon (Animated)"
	icon_state = "Easterntail"
	extra_overlay = "EasterntailColorTip"

/datum/sprite_accessory/tail/m_tail_synthliz_BEHINDstatic
	name = "Synthetic lizard tail"
	icon_state = "m_tail_synthliz_BEHIND"

/datum/sprite_accessory/tail/m_tail_synthliz_BEHIND
	name = "Synthetic lizard tail, animated"
	icon_state = "m_tail_synthliz_BEHIND"

/datum/sprite_accessory/tail/Segmentedtail
	name = "Segmented tail, animated"
	icon_state = "Segmentedtail"
	extra_overlay = "Segmentedtailmarking"

/datum/sprite_accessory/tail/Segmentedlights
	name = "Segmented tail, animated synth"
	icon_state = "Segmentedtail"
	extra_overlay = "Segmentedlights"

/datum/sprite_accessory/tail/fox_tail_s
	name = "Fox tail"
	icon_state = "fox_tail_s"

/datum/sprite_accessory/tail/fennec_tail_s
	name = "Fennec tail"
	icon_state = "fennec_tail_s"