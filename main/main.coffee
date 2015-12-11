
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