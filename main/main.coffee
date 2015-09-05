
# bordercolor default: black
# logobordercolor default: no border
# we require all images to be of hight 100

weekday = (day) ->
	switch day 
		when "Monday" then 0
		when "Tuesday" then 1
		when "Wednesday" then 2
		when "Thursday" then 3
		when "Fryday" then 4
		when "Additional" then 5
		else -1

beginId = (time) ->
	(time - 800) / (timetableSettings.minDurationInH*100)

shortcuts = [
	{
		name: "mensa",
		url: "http://www.studentenwerk-saarland.de/en/Essen/Essen-in-Saarbrucken/Speiseplan-aktuell",
		bgcolor: [255, 255, 255],
		logoid: "studentenwerk",
		square: true,
	},
	{
		name: "GitHub",
		url: "http://github.com",
		bgcolor: [255, 255, 255],
		logoid: "github-alternative",
		square: true
	},
	{
		name: "amazon",
		url: "http://amazon.de",
		bgcolor: [255, 255, 255]
		logoid: "amazon",
		square: true
	},
	{
		name: "youtube",
		url: "http://youtube.com",
		bgcolor: [255, 255, 255],
		logoid: "youtube",
		square: true
	},
	{
		name: "lsf",
		url: "http://www.lsf.uni-saarland.de",
		bgcolor: [255, 255, 255],
		logoid: "uds",
		square: true
	},
	{
		name: "google+",
		url: "http://plus.google.com",
		bgcolor: [255, 255, 255],
		logoid: "g+",
		square: true
	},
	{
		name: "linkedin",
		url: "http://linkedin.com",
		bgcolor: [255, 255, 255],
		logoid: "linkedin",
		square: true
	},
	{
		name: "calendar",
		url: "http://calendar.google.com",
		bgcolor: [255, 255, 255],
		logoid: "calendar",
		square: true
	},
	{
		name: "dictcc",
		url: "http://dict.cc",
		bgcolor: [255, 255, 255],
		logoid: "dictcc",
		square: true
	}
]

timetableSettings = {
	rows: (minDurationInH) -> 10 / minDurationInH
	minDurationInH: 0.5
}

classes = [
	{
		name: "Multicore System Architecture",
		short: "SysArch II",
		color: [0, 122, 41],
		link: "https://www.lsf.uni-saarland.de/qisserver/rds?state=verpublish&status=init&vmfile=no&publishid=90532&moduleCall=webInfo&publishConfFile=webInfo&publishSubDir=veranstaltung",
		periods: [
			{
				weekday: weekday("Tuesday"),
				begin: beginId(1400),
				duration: 4,
				room: "E1.3 HS III",
				tutorial: false
			},
			{
				weekday: weekday("Fryday"),
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
		link: "https://www.lsf.uni-saarland.de/qisserver/rds?state=verpublish&status=init&vmfile=no&publishid=89924&moduleCall=webInfo&publishConfFile=webInfo&publishSubDir=veranstaltung",
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
				weekday: weekday("Fryday"),
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
				weekday: weekday("Additional"),
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
				weekday: weekday("Additional"),
				begin: beginId(1000),
				duration: 4,
				tutorial: false
			}
		]
	}
]

setBG = () ->
	r = Math.floor((Math.random() * 2) + 1)
	document.body.style.backgroundImage = "url('../images/wallpapers/wallpaper" + r + ".jpg')";
	# document.body.style.backgroundImage = "url('../images/wallpapers/default.jpg')";

split = (items, length) ->
	numberOfRows = items.length / length
	res = []
	for i in [0 ... length]
		res[i] = []
	counter = 0
	currentRow = 0
	for item in items
		res[currentRow].push(item)
		current++
		if(current >= length)
			current = 0
			currentRow++
	res

splitBy = (attribute, list) ->
	res1 = []
	res2 = []
	for item in list
		(if item[attribute] then res1 else res2).push(item)
	[res1, res2]

placeShortcuts = (shortcuts, itemsPerRow) ->
	list = $("#shortcut-list")
	for row in shortcuts
		list.append(createRow(row, itemsPerRow))

createRow = (row, itemsPerRow) ->
	jqueryRow = $("<div class='row'></div>")
	for item in row
		jqueryRow.append(createItem(item, 12/itemsPerRow))
	jqueryRow

iconclass = "text-center pagination-centered tile"
imageclass = "logo-"
icondivSkeleton = "<div class='" + iconclass + "'></div>"
imageSkeleton   = "<img class='" + imageclass + "' src='../images/logos/'></img>"

getLiSkeleton = (colSize) ->
 	"<li class='col-xs-" + colSize + "'></li>" 

getASkeleton = (url) ->
	"<a href='" + url + "' class='link-tile'></a>"

getImageSkeleton = (name, cssClass) ->
	"<img class='" + cssClass + "' src='../images/logos/" + name + ".png'></img>"

imageKindToString = (square) ->
	if square then "square" else "rect"

rgbaString = (r, g, b, o) ->
	"rgba(" + r + "," + g + "," + b + "," + o + ")"

createItem = (item, colSize) ->
	[r, g, b] = item.bgcolor
	bgcolor = item.bgcolor
	kindString = imageKindToString(item.square)
	imagename = item.logoid + "-" + kindString
	imagecssclass = imageclass + kindString

	IMG = $(getImageSkeleton(imagename, imagecssclass))
	A = $(getASkeleton(item.url))
	DIV = $(icondivSkeleton)
	LI = $(getLiSkeleton(colSize))

	DIV.css("background-color", rgbaString(r,g,b,0.5))
	IMG.css("border", "1px solid " + item.logobordercolor) if item.logobordercolor?
	DIV.css("border", "1px solid " + item.bordercolor) if item.bordercolor?

	DIV.append(IMG)
	A.append(DIV)
	LI.append(A)
	LI

makeLogos = () ->
	setBG()
	[square, full] = splitBy("square", shortcuts)
	full = split(full, 4)
	square = split(square, 6)
	placeShortcuts(full, 4)
	placeShortcuts(square, 6)

makeTooltip = (subject, period) ->
	""

makeTDString = (color, tooltip, duration, name, link, room) ->
	td = """ <td rowspan=#{duration}"> """ +
	""" <a class="class-#{duration}" """ +
	""" data-toggle="tooltip" title="#{tooltip}" """ +
	""" href=#{link} """ + 
	""" style="background-color:#{color};" > """ + 
	""" #{name} #{if room? then "<br> (#{room})" else ""} """ + 
	""" </a></td> """


makeTD = (subject, period) ->
	[r,g,b] = subject.color
	color = rgbaString(r,g,b,1.0)
	tooltip = makeTooltip(subject, period)
	name = subject.short
	link = subject.link
	duration = period.duration
	room = period.room
	makeTDString(color, tooltip, duration, name, link, room)

finalizeRow = (tds, rowIndex) ->
	# hard coded row index
	effectiveRowIndex = (rowIndex - rowIndex % 2) / 2
	parity = if effectiveRowIndex % 2 is 0 then "odd" else "even"
	hour = if (rowIndex % 4 is 0) then (8 + rowIndex / 2) else -1
	time = if hour isnt -1 then hour + ":00" else undefined
	# end
	row = """ <tr class="tr-#{parity}"> """
	row += """ <td class="table-time">#{if time? then time else ""}</td> """ 
	tds.forEach((td) -> row += td)
	row + "</tr>"

makeTableRow = (rowIndex, blocked) ->
	tds = []
	for blockValue, weekdayId in blocked when blockValue is -1
		for subject in classes
			for period in subject.periods
				if period.begin is rowIndex and period.weekday is weekdayId
					tds[weekdayId] = makeTD(subject, period) 
					blocked[weekdayId] = period.duration - 1
				else
					classString = if weekdayId is 5 then 'table-additional' else ''
					tds[weekdayId] = """ <td class="#{classString}"></td> """ unless tds[weekdayId]?
	finalizeRow(tds, rowIndex)

checkDisjointness = () -> true

makeTimeTable = () ->
	throw RuntimeException unless checkDisjointness()
	blocked = [-1,-1,-1,-1,-1, -1]
	for rowIndex in [0...timetableSettings.rows(timetableSettings.minDurationInH)]
		lastRow = $('#timetable tr:last')
		nextRow = makeTableRow(rowIndex, blocked)
		lastRow.after(nextRow)
		for value, index in blocked when value isnt -1
			blocked[index] = value-1

makeLogos()
makeTimeTable()