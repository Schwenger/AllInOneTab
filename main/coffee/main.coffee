
#= require <sidebar.coffee>
#= require <timetable.coffee>
#= require <icons.coffee>
#= require <preferences.coffee>

# Either 'call' or 'function_name' should be defined. 'call' is used when the action has no side effects on the extension's page.
# Note that it might influence other extensions or redirect the page entirely.
# 'function_name' is used when the logic is defined in the sidebar file and the function name allows to call the respective function.
sidebarContent = [
	{
		name: "preferences",
		icon: "cog.png",
		call: trigger_preferences
	},
	{
		name: "timetable",
		icon: "timetable.png",
		call: trigger_timetable
	},
	{
		name: "swr3",
		icon: "swr3.png",
		call: trigger_swr3
	},
	{
		name: "translator",
		icon: "translator.png",
		call: open_translator_input_field,
		setup: setup_translator
		hotkey: 84
	}
]

# This is necessary to make sure that the calls are actually defined.
model.sidebarContent = sidebarContent

pages = ["icons", "preferences", "timetable"]
defaultPage = "icons"

display = (identifier) ->
	for page in pages
		if page is identifier
			displayElement page
		else
			removeElement page

displayDefault = () ->
	display defaultPage

displayElement = (identifier) ->
	$("#" + identifier + "-body").removeClass("invisible")

removeElement = (identifier) ->
	$("#" + identifier + "-body").addClass("invisible")

makeSidebar()
makeLogos()
makeTimetable()
makePreferences()
displayDefault()

