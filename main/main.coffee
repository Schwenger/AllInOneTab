itemsPerRow = 4
logokind = {full: 0, half: 1, square: 2}

# bordercolor default: black
# logobordercolor default: no border
shortcuts = [
	{
		name: "mensa",
		url: "http://www.studentenwerk-saarland.de/en/Essen/Essen-in-Saarbrucken/Speiseplan-aktuell",
		bgcolor: "#fff",
		logoid: "studentenwerk",
		logokind: logokind.full,
	},
	{
		name: "GitHub",
		url: "http://github.com",
		bgcolor: "#fff",
		logoid: "github",
		logokind: logokind.full
	},
	{
		name: "amazon",
		url: "http://amazon.de",
		bgcolor: "#fff",
		logoid: "amazon",
		logokind: logokind.full
	},
	{
		name: "youtube",
		url: "http://youtube.com",
		bgcolor: "#fff",
		logoid: "youtube",
		logokind: logokind.full
	}
]

setBG = () ->
	r = Math.floor((Math.random() * 2) + 1)
	document.body.style.backgroundImage = "url('../images/wallpapers/wallpaper" + r + ".jpg')";

split = (items) ->
	numberOfRows = items.length / 4
	res = []
	for i in [0 ... itemsPerRow]
		res[i] = []
	counter = 0
	currentRow = 0
	for item in items
		res[currentRow].push(item)
		current++
		if(current >= 4)
			current = 0
			currentRow++
	res

placeShortcuts = (shortcuts) ->
	list = $("#shortcut-list")
	for row in shortcuts
		list.append(createRow(row))

createRow = (row) ->
	jqueryRow = $("<div class='row'></div>")
	for item in row
		jqueryRow.append(createItem(item))
	jqueryRow

iconclass = "text-center pagination-centered tile"
imageclass = "logo-"
liSkeletion     = "<li class='col-xs-3'></li>" 
icondivSkeleton = "<div class='" + iconclass + "'></div>"
imageSkeleton   = "<img class='" + imageclass + "' src='../images/logos/'></img>"

getASkeleton = (url) ->
	"<a href='" + url + "' class='link-tile'></a>"

getImageSkeleton = (name, cssClass) ->
	"<img class='" + cssClass + "' src='../images/logos/" + name + "px.png'></img>"

transfromIntoPixelSize = (kind) ->
	switch kind
		when 0 then "200"
		when 1 then "100"
		when 2 then "50"

createItem = (item) ->
	bgcolor = item.bgcolor
	pixelCount = transfromIntoPixelSize(item.logokind)
	imagename = item.logoid + "-" + (pixelCount)
	imagecssclass = imageclass + pixelCount

	IMG = $(getImageSkeleton(imagename, imagecssclass))
	A = $(getASkeleton(item.url))
	DIV = $(icondivSkeleton)
	LI = $(liSkeletion)

	DIV.css("background-color", item.bgcolor)
	IMG.css("border", "1px solid " + item.logobordercolor) if item.logobordercolor?
	DIV.css("border", "1px solid " + item.bordercolor) if item.bordercolor?

	DIV.append(IMG)
	A.append(DIV)
	LI.append(A)
	LI
	

setBG()
splitShortcuts = split(shortcuts)
placeShortcuts(splitShortcuts)

