
/datum/computer_file/report/recipient/iseo
	logo = "\[iseologo\]"
	form_name = "ISEO-REP-00"

/datum/computer_file/report/recipient/iseo/audit
	form_name = "ISEO-REP-12"
	title = "ISEO Endeavour Department Audit"
	available_on_network = 1

/datum/computer_file/report/recipient/iseo/audit/generate_fields()
	add_field(/datum/report_field/date, "Date")
	add_field(/datum/report_field/time, "Time")
	add_field(/datum/report_field/simple_text, "Name of Department")
	add_field(/datum/report_field/pencode_text, "Positive Observations")
	add_field(/datum/report_field/pencode_text, "Negative Observations")
	add_field(/datum/report_field/pencode_text, "Other Notes")
	add_field(/datum/report_field/signature, "Signature")
	add_field(/datum/report_field/options/yes_no, "Approved")
	set_access(access_edit = access_representative, override = 0)
	set_access(access_edit = access_corporate, override = 0)
	..()

/datum/computer_file/report/recipient/iseo/crewman_incident
	form_name = "ISEO-REP-4"
	title = "Crewman Incident Report"
	available_on_network = 1

/datum/computer_file/report/recipient/iseo/crewman_incident/generate_fields()
	add_field(/datum/report_field/date, "Date")
	add_field(/datum/report_field/time, "Time")
	add_field(/datum/report_field/people/from_manifest, "Crewman Involved in Incident")
	add_field(/datum/report_field/simple_text, "Nature of Incident")
	add_field(/datum/report_field/pencode_text, "Description of incident")
	add_field(/datum/report_field/signature, "Signature")
	add_field(/datum/report_field/options/yes_no, "Approved")
	set_access(access_edit = list(access_heads, access_iseo_crew))
	..()

/datum/computer_file/report/recipient/iseo/work_visa
	form_name = "ISEO-REP-03b"
	title = "Work Visa Issuing Form"
	available_on_network = 1

/datum/computer_file/report/recipient/iseo/work_visa/generate_fields()
	var/datum/report_field/temp_field
	add_field(/datum/report_field/date, "Date")
	add_field(/datum/report_field/time, "Time")
	add_field(/datum/report_field/people/from_manifest, "Recipient of Work Visa")
	add_field(/datum/report_field/simple_text, "Species of Recipient")
	temp_field = add_field(/datum/report_field/signature, "Issuer of Work Visa Signature")
	add_field(/datum/report_field/signature, "Recipient of Work Visa Signature")
	add_field(/datum/report_field/options/yes_no, "Approved")
	temp_field.set_access(access_edit = access_representative)
	..()
