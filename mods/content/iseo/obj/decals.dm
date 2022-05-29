/obj/structure/sign/ecplaque
	name = "\improper ISEO Directives"
	desc = "A plaque with Expeditionary Corps logo etched in it."
	icon = 'mods/content/iseo/icons/obj/iseo-decals.dmi'
	icon_state = "ecplaque"
	var/directives = {"<hr><center>
		1. <b>Exploring the unknown is your Primary Mission</b><br>

		You are to look for land and resources that can be used by Humanity to advance and prosper. Explore. Document. Explain. Knowledge is the most valuable resource.<br>

		2. <b>Every member of the Expeditionary Corps is an explorer</b><br>

		Some are Explorers by rank or position, but everyone has to be one when duty calls. You should always expect being assigned to an expedition if needed. You have already volunteered when you signed up.<br>

		3. <b>Danger is a part of the mission - avoid it, don't run away</b> <br>

		Keep your crew alive and hull intact, but remember - you are not here to sightsee. Dangers are obstacles to be cleared, not the roadblocks. Weigh risks carefully and keep your Primary Mission in mind.
		</center><hr>"}

/obj/structure/sign/ecplaque/examine(mob/user)
	. = ..()
	to_chat(user, "The founding principles of EC are written there: <A href='?src=\ref[src];show_info=1'>Expeditionary Directives</A>")

/obj/structure/sign/ecplaque/CanUseTopic()
	return STATUS_INTERACTIVE

/obj/structure/sign/ecplaque/OnTopic(href, href_list)
	if(href_list["show_info"])
		to_chat(usr, directives)
		return TOPIC_HANDLED

/obj/structure/sign/ecplaque/attackby(var/obj/I, var/mob/user)
	if(istype(I, /obj/item/grab))
		var/obj/item/grab/G = I
		var/mob/M = G.get_affecting_mob()
		if(!ishuman(M))
			return
		M.apply_damage(5, BRUTE, BP_HEAD, used_weapon="Metal Plaque")
		visible_message("<span class='warning'>[G.assailant] smashes [G.assailant] into \the [src] face-first!</span>")
		playsound(get_turf(src), 'sound/weapons/tablehit1.ogg', 50)
		to_chat(M, "<span class='danger'>[directives]</span>")
		admin_attack_log(user, M, "educated victim on \the [src].", "Was educated on \the [src].", "used \a [src] to educate")
		G.force_drop()
	else
		..()

/obj/effect/floor_decal/iseologo
	icon = 'mods/content/iseo/icons/obj/iseo-floor.dmi'
	icon_state = "center"

/obj/structure/sign/iseo
	name = "\improper ISEO Seal"
	desc = "A sign which signifies who this vessel belongs to."
	icon = 'mods/content/iseo/icons/obj/iseo-decals.dmi'
	icon_state = "iseoseal"

/obj/structure/sign/double/iseoflag
	name = "ISEO Flag"
	desc = "The flag of the ISEO, a symbol of many things to many people."
	icon = 'mods/content/iseo/icons/obj/iseo-decals.dmi'

/obj/structure/sign/double/iseoflag/left
	icon_state = "iseoflag_left"

/obj/structure/sign/double/iseoflag/center
	icon_state = "iseoflag_middle"

/obj/structure/sign/double/iseoflag/right
	icon_state = "iseoflag_right"