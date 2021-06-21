#if !defined(USING_MAP_DATUM)

	#include "hearth_areas.dm"
	#include "hearth_shuttles.dm"
	#include "hearth_unit_testing.dm"
	#include "hearth_define.dm"

	#include "hearth-1.dmm"
	#include "hearth-2.dmm"
	#include "hearth-3.dmm"
	#include "hearth-4.dmm"

	#define USING_MAP_DATUM /datum/map/hearth

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Hearth of Hestia

#endif
