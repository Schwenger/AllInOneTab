
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
