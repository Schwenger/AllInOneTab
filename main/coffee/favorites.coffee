
class Favorites

	TILE_DIM_SMALL: 200
	TILE_DIM_LARGE: 350
	TILE_MARGIN: 25
	PER_ROW_MAX: 7
	PER_ROW_MIN: 3
	ROOT_PADDING: 10
	NUM_ROWS: 2

	constructor: ->
		@root = $('#favorites')

	resize: ->
		full_size_small = (@TILE_DIM_SMALL + 2 * @TILE_MARGIN)
		full_size_large = (@TILE_DIM_LARGE + 2 * @TILE_MARGIN)
		per_row_small = (@root.width() - 2 * @ROOT_PADDING) / full_size_small
		per_row_large = (@root.width() - 2 * @ROOT_PADDING) / full_size_large
		[per_row, tile_dim] = @getPerRowCount(Math.floor(per_row_small), Math.floor(per_row_large))
		rows = @createRows(per_row, tile_dim)
		@root.empty()
		@root.append row for row in rows

	getPerRowCount: (small, large) ->
		console.log "Either we create #{small} small tiles, #{large} large ones."
		# Prefer large over small unless large would lead to less than MIN tiles.
		if large < @PER_ROW_MIN
			[small, "small"]
		else 
			# Prevent exceeding PER_ROW_MAX
			[(if large > @PER_ROW_MAX then @PER_ROW_MAX else large), "large"]

	createRows: (number, dim) ->
		console.log "Creating #{@NUM_ROWS} rows with #{number} #{dim} tiles each."
		for rowId in [0...@NUM_ROWS]
			row = @createRow(rowId)
			lower = rowId * number
			upper = (rowId + 1) * (number)
			elems = Model.favs[lower...upper]
			self = @ # Allows access in loop closure
			for elem in elems 
				do (elem) ->
					tile = self.createTile(elem, dim)
					row.append(tile)
					tile.click( () -> 
						Favorites.updateStats(elem.name)
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


Favorites.updateStats = (name) ->
	console.log "Clicked on #{name}. We might want to use this information..."
