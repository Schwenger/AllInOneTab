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
