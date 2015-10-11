createEmptyLecture = () ->
	$("<div class='empty-period col-md-2'></div>")

createRow = (header) ->
	$("<div class='row timetable-#{if header then "header" else "row"}'></div>")

createDayElement = (day) ->
	$("<div class='weekday col-md-2'><span>#{weekdayId(day)}</span></div>")

createLecture = (subject, period) ->
	content = "<span>"
	content += "<big><big> #{subject.short} </big></big>"
	content += "<br>" + period.room if period.room?
	content += "<br>" + period.prof if period.prof?
	content += "</span>"
	res = $("<div class='period col-md-2'>#{content}</div>")
	res.css("background", makeRGBA(subject.color, 0.9))
	res.click(() -> 
		chrome.tabs.update { url: subject.link }
	)
	res

makeRGBA = (colors, op) ->
	[r,g,b] = colors
	rgbaString(r,g,b,op)

insertLectures = (tt, subjects) ->
	for subject in subjects
		for period in subject.periods
			lec = createLecture(subject, period)
			# skip header with weekday
			tt[period.weekday][period.begin+1] = lec

displayLectures = (root, tt) ->
	rows = buildRows(tt[0].length - 1)
	for weekday in tt
		for slot, row in weekday
			rows[row].append(slot)
	for row in rows
		root.append row

buildRows = (number) ->
	res = []
	for i in [0..number] 
		res.push createRow(i is 0)
	res

makeEmptyTimeTable = (layout) ->
	res = []
	for day in [0...layout.width]
		res.push []
		res[day].push createDayElement(day)
		for slot in [0...layout.height]
			res[day].push createEmptyLecture()
	res

setHeights = (root, tt) ->
	for weekday in tt
		for slot, slotId in weekday
			h = if slotId isnt 0 then timetableLayout.slotHeight else timetableLayout.headerHeight
			slot.css("height", screen.height * h)
	root.css("padding-top", timetableLayout.padding  * screen.height)

makeTimetable = () ->
	tt = makeEmptyTimeTable(timetableLayout)
	insertLectures(tt, subjects)
	root = $("#timetable-body")
	setHeights(root, tt)
	displayLectures(root, tt)

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
