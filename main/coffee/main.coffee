

start = () ->
	return unless favsSetUp and timetableSetUp 
	favs = new Favorites
	timetable = new TimeTable
	# prefs = new Preferences

	id2obj = (pageId) -> 
		switch pageId
			when "favorites" then favs
			# when "preferences" then prefs
			when "timetable" then timetable
			else console.log "Something went horribly wrong. Unknown page #{pageId}. Panic mode ENABLED!"

	defaultPage = "favorites"

	currentPage = defaultPage

	refresh = (id) -> id2obj(id).resize()

	openPage = (pageId) ->
		$('#' + currentPage).addClass("invisible")
		$('#' + pageId).removeClass("invisible")
		# For correct size computations we have to make the window visible before resizing.
		refresh pageId
		$("#sidebar-icon-#{currentPage}").removeClass("sidebar-item-active")
		$("#sidebar-icon-#{pageId}").addClass("sidebar-item-active")
		currentPage = pageId

	sidebar = new Sidebar openPage

	$(window).resize(-> refresh(currentPage))
	openPage(defaultPage)


# Check that all required data is available in the chrome storeage. If not, set it using Model.

favsSetUp = false
timetableSetUp = false

setupFirstOpen = () ->
	chrome.storage.sync.set({ "favorites": Model.favs         }, () -> favsSetUp      = true; start())
	chrome.storage.sync.set({ "timetable": Model.appointments }, () -> timetableSetUp = true; start())

chrome.storage.sync.get(["favorites", "timetable"], (data) -> 
		favsSetUp = data["favorites"]? 
		timetableSetUp = data["timetable"]?
		if favsSetUp and timetableSetUp
			start()
		else
			setupFirstOpen
	)