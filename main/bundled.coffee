beginId = (time) ->
	(time - 800) / (timetableSettings.minDurationInH*100)

timetableSettings = {
	rows: (minDurationInH) -> 10 / minDurationInH
	minDurationInH: 2
}

weekday = (day) ->
	switch day 
		when "Monday" then 0
		when "Tuesday" then 1
		when "Wednesday" then 2
		when "Thursday" then 3
		when "Friday" then 4
		when "Seminar" then 5
		else -1

weekdayId = (day) ->
	switch day 
		when 0 then "Monday"
		when 1 then "Tuesday"
		when 2 then "Wednesday"
		when 3 then "Thursday"
		when 4 then "Friday"
		when 5 then "Seminar"
		else -1

rgbaString = (r, g, b, o) ->
	"rgba(" + r + "," + g + "," + b + "," + o + ")"

# split = (items, length) ->
# 	numberOfRows = Math.ceil(items.length / length)
# 	res = []
# 	for i in [0 ... numberOfRows]
# 		startIndex = i * length
# 		res[i] = items.slice(startIndex, startIndex + length)	

# splitBy = (attribute, list) ->
# 	res1 = []
# 	res2 = []
# 	for item in list
# 		(if item[attribute] then res1 else res2).push(item)
# 	[res1, res2]

shortcuts = [
	{
		name: "calendar",
		url: "http://calendar.google.com",
		bgcolor: [255, 255, 255],
		logoid: "calendar"
	},
	{
		name: "mensa",
		url: "http://www.studentenwerk-saarland.de/en/Essen/Essen-in-Saarbrucken/Speiseplan-aktuell",
		bgcolor: [255, 255, 255],
		logoid: "studentenwerk"
	},
	{
		name: "amazon",
		url: "http://amazon.de",
		bgcolor: [255, 255, 255],
		logoid: "amazon"
	},
	{
		name: "GitHub",
		url: "http://github.com",
		bgcolor: [255, 255, 255],
		logoid: "github-alternative"
	},
	{
		name: "lsf",
		url: "http://www.lsf.uni-saarland.de",
		bgcolor: [255, 255, 255],
		logoid: "uds"
	},
	{
		name: "dictcc",
		url: "http://dict.cc",
		bgcolor: [255, 255, 255],
		logoid: "dictcc"
	},
	{
		name: "linkedin",
		url: "http://linkedin.com",
		bgcolor: [255, 255, 255],
		logoid: "linkedin"
	},
	{
		name: "youtube",
		url: "http://youtube.com",
		bgcolor: [255, 255, 255],
		logoid: "youtube"
	},
	{
		name: "GooglePlus",
		url: "http://plus.google.com",
		bgcolor: [255, 255, 255],
		logoid: "g+"
	},
	{
		name: "humblebundle",
		url: "http://www.humblebundle.com/",
		bgcolor: [255, 255, 255],
		logoid: "humblebundle"
	}
]

timetableLayout = {
	width: 6,
	height: 5
}

subjects = [
	{
		name: "Multicore System Architecture",
		short: "SysArch II",
		color: [0, 122, 41],
		link: "http://www-wjp.cs.uni-saarland.de/lehre/vorlesung/rechnerarchitektur/ws15/",
		periods: [
			{
				weekday: weekday("Tuesday"),
				begin: beginId(1400),
				duration: 4,
				room: "E1.3 HS III",
				tutorial: false
			},
			{
				weekday: weekday("Friday"),
				begin: beginId(1000),
				duration: 4,
				room: "E1.3 HS III",
				tutorial: false
			}
		]
	}
	{
		name: "Database Management Systems",
		short: "DBMS",
		color: [255, 204, 0],
		link: "https://infosys.uni-saarland.de/teaching/ws15/dbms.php",
		periods: [
			{
				weekday: weekday("Thursday"),
				begin: beginId(1000),
				duration: 4,
				room: "E1.3 HS II",
				tutorial: false
			}
		]
	},
	{
		name: "Automated Reasoning",
		short: "Reasoning",
		color: [153, 0, 0],
		link: "https://www.mpi-inf.mpg.de/departments/automation-of-logic/teaching/winter-20142015/automated-reasoning/",
		periods: [
			{
				weekday: weekday("Monday"),
				begin: beginId(1600),
				duration: 4,
				room: "E1.3 HS III",
				tutorial: false
			},
			{
				weekday: weekday("Thursday"),
				begin: beginId(1200),
				duration: 4,
				room: "E1.3 HS III",
				tutorial: false
			}
		]
	},
	{
		name: "Machine Learning",
		short: "ML",
		color: [0, 102, 255],
		link: "http://www.ml.uni-saarland.de/Lectures/ML1516/ML1516.htm",
		periods: [
			{
				weekday: weekday("Wednesday"),
				begin: beginId(1400),
				duration: 4,
				room: "E1.3 HS I",
				tutorial: false
			},
			{
				weekday: weekday("Friday"),
				begin: beginId(1000),
				duration: 4,
				room: "E1.3 HS I",
				tutorial: false
			}
		]
	},
	{
		name: "Deep Learning",
		short: "Deep Learning",
		color: [204, 204, 204],
		link: "https://infosys.uni-saarland.de/teaching/ws15/deep%20learning.php",
		periods: [
			{
				weekday: weekday("Seminar"),
				begin: beginId(800),
				duration: 4,
				tutorial: false
			}
		]
	},
	{
		name: "Admissible Search Enhancements",
		short: "Planning",
		color: [204, 204, 204],
		link: "http://fai.cs.uni-saarland.de/teaching/winter15-16/search-enhancements.html",
		periods: [
			{
				weekday: weekday("Seminar"),
				begin: beginId(1000),
				duration: 4,
				tutorial: false
			}
		]
	},
	{
		name: "Theory of Distributed Systems",
		short: "Distributed Systems",
		color: [0,0,255],
		link: "https://www.mpi-inf.mpg.de/de/departments/algorithms-complexity/teaching/winter-20152016/theory-of-distributed-systems/"
		periods: [
			{
				weekday: weekday("Monday"),
				begin: beginId(1200),
				duration: 4,
				tutorial: false,
				prof: "Christoph Lenzen",
				room: "E1.4 023"
			}
		]
	}
]

swr3_id = "cbbeihlbfknckekkafdljfonbjgaelkb"

# Either 'call' or 'function_name' should be defined. 'call' is used when the action has no side effects on the extension's page.
# Note that it might inflence other extensions or redirect the page entirely.
# 'function_name' is used when the logic is defined in the sidebar file and the function name allows to call the respective function.
# sidebarContent = [
# 	{
# 		name: "preferences",
# 		icon: "cog.png",
# 		call: "show_preferences"
# 	},
# 	{
# 		name: "timetable",
# 		icon: "timetable.png",
# 		call: "show_timetable"
# 	},
# 	{
# 		name: "swr3",
# 		icon: "swr3.png",
# 		call: () -> 
			
# 			undefined
# 	},
# 	{
# 		name: "translator",
# 		icon: "translator.png",
# 		function_name: open_translator_input_field,
# 		setup: "setup_translator"
# 	}
# ]
createEmptyLecture = () ->
	$("<div class='empty-period'></div>")

makeRGBA = (colors, op) ->
	[r,g,b] = colors
	rgbaString(r,g,b,op)

createLecture = (subject, period) ->
	content = "<span>"
	content += "<big><big> #{subject.short} </big></big>"
	content += "<br>" + period.room if period.room?
	content += "<br>" + period.prof if period.prof?
	content += "</span>"
	res = $("<div class='period'>#{content}</div>")
	res.css("background", makeRGBA(subject.color, 0.9))
	res.click(() -> 
		chrome.tabs.update { url: subject.link }
	)
	res

insertLectures = (tt, subjects) ->
	for subject in subjects
		for period in subject.periods
			lec = createLecture(subject, period)
			# skip header with weekday
			tt[period.weekday][period.begin+1] = lec

displayLectures = (tt) ->
	root = $("#timetable-body")
	for weekday in tt
		for slot in weekday
			root.append(slot)

createDayElement = (day) ->
	console.log(day)
	$("<div class=weekday><span>#{weekdayId(day)}</span></div>")

makeEmptyTimeTable = (layout) ->
	res = []
	for day in [0...layout.width]
		res.push []
		res[day].push createDayElement(day)
		for slot in [0...layout.height]
			res[day].push createEmptyLecture()
	res

makeTimetable = () ->
	tt = makeEmptyTimeTable(timetableLayout)
	insertLectures(tt, subjects)
	displayLectures(tt)

displayElement = (identifier) ->
	$("#" + identifier).removeClass("invisible")

removeElement = (identifier) ->
	$("#" + identifier).addClass("invisible")

showTimetable = () ->
	displayElement("timetable-body")
	removeElement("icon-body")

removeTimetable = () ->
	removeElement("timetable-body")
	displayElement("icon-body")

timetableOpen = false
timetableObject = undefined

trigger_timetable = () ->
	if timetableOpen then removeTimetable() else showTimetable()
	timetableOpen = not timetableOpen

show_preferences = () ->
	return 0

trigger_swr3 = () ->
	chrome.runtime.sendMessage(swr3_id, {intent: "trigger_swr3"})

makeSidebarDiv = (element, id) ->
	$(" <div class='sidebar-item'><img class='sidebar-icon' id='" + id + "' src='../images/sidebar/" + element.icon + "'></img></div> ")

open_translator_input_field = () ->
	0

makeDialog = () ->
	$("""
  <div class="modal fade" id="sidebar-input-dialog" role="dialog">
    <div class="modal-dialog">
    
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Enter your query:</h4>
        </div>
        <div class="modal-body">
          <input type="text" autofocus id="sidebar-input-dialog-field"> <button type="submit" id="sidebar-input-dialog-submit">Go!</button>
        </div>
      </div>
      
    </div>
  </div>""")

setGlobalShortcut = (keycode, call) ->
	$("body").keydown (event) ->
		call() if event.which is keycode and not dialogOpen()

dialogOpen = () ->
	$("#sidebar-input-dialog")?.data('bs.modal')?.isShown

# This is necessary to have the autofocus effect whenever the dialog is opened
enableAutoFocus = () ->
	$('.modal').on('shown.bs.modal', () -> 
		$(this).find('[autofocus]').focus()
	)

resetInputOnClose = () ->
	$('.modal').on('hidden.bs.modal', () -> 
		$("#sidebar-input-dialog-field").val("")
	)

setup_translator = (item, id) ->
	element = $("#" + id)
	element.attr("data-toggle", "modal")
	element.attr("data-target", "#sidebar-input-dialog")
	dialog = makeDialog() 
	$("#sidebar-body").append(dialog)
	dialog_field = $("#sidebar-input-dialog-field")
	dialog_field.keydown (event) ->
	    if (event.which is 13) # ENTER 
	        event.preventDefault()
	        content = $("#sidebar-input-dialog-field").val()
	        chrome.tabs.update { url: "http://www.dict.cc/?s=" + content }
	setGlobalShortcut(item.hotkey, () -> element.click())
	resetInputOnClose()
	enableAutoFocus()

# Due to scoping we cannot move this definition into 'model.coffee'.
sidebarContent = [
	{
		name: "preferences",
		icon: "cog.png",
		call: show_preferences
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

makeSidebar = () ->
	sidebar = $("#sidebar-body")
	for element, index in sidebarContent
		id = "sidebar-icon-" + element.name
		div = makeSidebarDiv(element, id)
		sidebar.append(div)
		$("#" + id).click element.call
		element.setup?(element, id)





createTile = (item) ->
	[r, g, b] = item.bgcolor
	id = "shortcut-tile-" + item.name

	HELPER = $("<span class='alignment-helper'></span>")
	IMG = $("<img src='../images/logos/#{item.logoid}.png'></img>")
	TILE = $("<div class='tile' id='#{id}'></div>" )

	TILE.css("background-color", rgbaString(r,g,b,0.5))
	IMG.css("border", "1px solid " + item.logobordercolor) if item.logobordercolor?
	TILE.css("border", "1px solid " + item.bordercolor) if item.bordercolor?

	# This is crucial: HELPER and IMG are siblings!
	TILE.append(HELPER)
	TILE.append(IMG)
	handler = () -> 
		console.log("called")
		chrome.tabs.update { url: item.url }
	[TILE, id, handler]

attackHandler = (id, handler) ->
	$("#" + id).click(handler)

placeTile = (root, tile) ->
	root.append(tile)

createTileContainer = (root) ->
	$("<div class='tile-container'></div>")

makeLogos = () ->
	root = $("#icon-body")
	for item in shortcuts
		[tile, id, handler] = createTile(item)
		placeTile(root, tile)
		attackHandler(id, handler)

makeSidebar([undefined, undefined, trigger_swr3, open_translator_input_field], [undefined, undefined, undefined, setup_translator])
makeLogos()
makeTimetable()
