
class Favorites

	TILE_DIM_SMALL: 200
	TILE_DIM_LARGE: 350
	TILE_MARGIN: 25
	PER_ROW_MAX: 7
	PER_ROW_MIN: 3
	ROOT_PADDING: 10
	NUM_ROWS: 2
	FAVS: []
	FAVORITES_READY: false

	constructor: ->
		@root = $('#favorites')
		@prepareFavsRating() # Will display items after retrieval

	resize: ->
		if not @FAVORITES_READY # Wait until ratings are ready...
			self = @ # Circumvent CSP in a benevolent way.
			setTimeout((() -> self.resize()), 100) # Busy waiting is the best kind of waiting.
			return

		# Compute how many tiles we want to display and how large they are supposed to be.
		full_size_small = (@TILE_DIM_SMALL + 2 * @TILE_MARGIN)
		full_size_large = (@TILE_DIM_LARGE + 2 * @TILE_MARGIN)
		per_row_small = (@root.width() - 2 * @ROOT_PADDING) / full_size_small
		per_row_large = (@root.width() - 2 * @ROOT_PADDING) / full_size_large
		[per_row, tile_dim] = @getPerRowCount(Math.floor(per_row_small), Math.floor(per_row_large))
		# Mess around with the order from time to time so the user has a chance to click on otherwise hidden items.
		if Math.random() > 0.7
			numTiles = @NUM_ROWS * per_row
			@switcheroo(numTiles)
		rows = @createRows(per_row, tile_dim)
		@root.empty()
		@root.append row for row in rows

	getPerRowCount: (small, large) ->
		# Prefer large over small unless large would lead to less than MIN tiles.
		if large < @PER_ROW_MIN
			[small, "small"]
		else 
			# Prevent exceeding PER_ROW_MAX
			[(if large > @PER_ROW_MAX then @PER_ROW_MAX else large), "large"]

	createRows: (number, dim) ->
		for rowId in [0...@NUM_ROWS]
			row = @createRow(rowId)
			lower = rowId * number
			upper = (rowId + 1) * (number)
			elems = @FAVS[lower...upper]
			self = @ # Allows access in loop closure
			for elem in elems 
				do (elem) ->
					tile = self.createTile(elem, dim)
					row.append(tile)
					tile.click( () -> 
						for fav, i in self.FAVS when fav.name is elem.name
							self.FAVS[i].count = self.FAVS[i].count + 1
						self.saveFavs()
						if chrome.tabs?
							chrome.tabs.update { url: elem.url }
						else 
							document.location.href = elem.url
					)
			row

	createRow: (id) -> $("<div class='tile_row' id='tile_row_#{id}'>")
		
	createTile: (fav, dim) ->
		div = $("<div class='tile tile-#{dim}' id='tile-#{fav.name}'>")
		helper = $('<div class="alignment-helper">')
		img = $("<img src='#{fav.icon}'>")
		div.append(helper)
		div.append(img)
		return div

	prepareFavsRating: () ->
		self = @ # Make @ accessible in closure.
		chrome.storage.sync.get("favorites", (data) -> self.setFavs(data.favorites))

	setFavs: (favs) ->
		# Sort retrieved data by click count, mark as available.
		sorted = favs.sort((a,b) -> b.count - a.count)
		console.log "Currently the rating is as follows:"
		console.log sorted
		@FAVS = sorted
		@FAVORITES_READY = true

	saveFavs: (callback = undefined) ->
		chrome.storage.sync.set({ "favorites": @FAVS }, callback)

	switcheroo: (numTiles) ->
		randomTailIndex = numTiles + Math.floor(Math.random() * (@FAVS.length - numTiles))
		# Switch a random hidden element with the last displayed entry.
		[@FAVS[numTiles-1], @FAVS[randomTailIndex]] = [@FAVS[randomTailIndex], @FAVS[numTiles-1]]

