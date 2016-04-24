
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
		chrome.tabs.update { url: item.url }
	[TILE, id, handler]

attachHandler = (id, handler) ->
	$("#" + id).click(handler)

placeTile = (root, tile) ->
	root.append(tile)

createTileContainer = (root) ->
	$("<div class='tile-container'></div>")

makeLogos = () ->
	root = $("#icons-body")
	more_than_one_row = false
	for item in shortcuts
		[tile, id, handler] = createTile(item)
		placeTile(root, tile)
		new_position = $("#" + id).position().top
		if position?
			more_than_one_row = true if position isnt new_position
		else
			position = new_position
		attachHandler(id, handler)
	root.append $("<div style='height: 100%;'>") unless more_than_one_row