
class Sidebar

	constructor: (open_callback) ->
		for id in ["preferences", "favorites", "timetable"] 
			do (id) -> $("#sidebar-icon-#{id}").click( -> open_callback(id) )
