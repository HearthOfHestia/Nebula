#if !defined(using_map_DATUM)

	#include "../../mods/content/mundane.dm"
	#include "../../mods/content/corporate/_corporate.dme"
	#include "../../mods/content/government/_government.dme"
	#include "../../mods/content/psionics/_psionics.dme"
	#include "../../mods/content/modern_earth/_modern_earth.dme"
	#include "../../mods/content/xenobiology/_xenobiology.dme"

	#include "../../mods/content/baychems/_baychems.dme"
	#include "../../mods/content/hydroponics/_hydroponics.dme"
	#include "../../mods/content/supplypacks/_supplypacks.dme"

	#include "../../mods/content/neural_laces/_laces.dme"
	#include "../../mods/content/genemodding/_genemodding.dme"
	#include "../../mods/content/hearthfoods/_hearthfoods.dme"
	#include "../../mods/content/hearthdrinks/_hearthdrinks.dme"
	#include "../../mods/content/shards/_shards.dme"

	#include "../../mods/verbs/antighost/_subtle_antighost.dme"

	#include "../../mods/utility/ooc_notes/_ooc_notes.dme"
	#include "../../mods/utility/tgsv4_integration/___tgs.dme"
	#include "../../mods/content/hearth_content/_hearth_content.dme"

	#include "../../mods/species/ascent/_ascent.dme"
	#include "../../mods/species/utility_frames/_utility_frames.dme"
	#include "../../mods/species/tajaran/_tajaran.dme"
	#include "../../mods/species/lizard/_lizard.dme"
	#include "../../mods/species/vox/_vox.dme"
	#include "../../mods/species/adherent/_adherent.dme"
	#include "../../mods/species/skrell/_skrell.dme"

	#include "../../mods/content/hearth_culture/_hearth_culture.dme"
	#include "../../mods/content/iseo/_iseo.dme"

	#include "../../mods/utility/centcomdb/_centcomdb.dme"

    #include "lobby/endeavour_music.dm"
	#include "endeavour_lobby.dm"

	#include "endeavour_announcements.dm"
	#include "endeavour_areas.dm"
	#include "endeavour_branches.dm"
	#include "endeavour_departments.dm"
	#include "endeavour_overmap.dm"
	#include "endeavour_paint.dm"
	#include "endeavour_pets.dm"
	#include "endeavour_presets.dm"
	#include "endeavour_procs.dm"
	#include "endeavour_setup.dm"
	#include "endeavour_turfs.dm"

	#include "job/command_jobs.dm"
	#include "job/corporate_jobs.dm"
	#include "job/endeavour_access.dm"
	#include "job/endeavour_jobs.dm"
	#include "job/engineering_jobs.dm"
	#include "job/exploration_jobs.dm"
	#include "job/medical_jobs.dm"
	#include "job/misc_jobs.dm"
	#include "job/research_jobs.dm"
	#include "job/security_jobs.dm"
	#include "job/service_jobs.dm"
	#include "job/shard_jobs.dm"
	#include "job/supply_jobs.dm"
	#include "job/outfits/command_outfits.dm"
	#include "job/outfits/corporate_outfits.dm"
	#include "job/outfits/endeavour_outfits.dm"
	#include "job/outfits/engineering_outfits.dm"
	#include "job/outfits/exploration_outfits.dm"
	#include "job/outfits/medical_outfits.dm"
	#include "job/outfits/misc_outfits.dm"
	#include "job/outfits/research_outfits.dm"
	#include "job/outfits/security_outfits.dm"
	#include "job/outfits/service_outfits.dm"
	#include "job/outfits/supply_outfits.dm"

	#include "../../mods/content/hearth_maps/_hearth_maps.dme"

	#include "endeavour-1.dmm"
	#include "endeavour-2.dmm"
	#include "endeavour-3.dmm"

	#define USING_MAP_DATUM /datum/map/endeavour

#elif !defined(MAP_OVERRIDE)
	#warn A map has already been included, ignoring ISEO Endeavour
#endif