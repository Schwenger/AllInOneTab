
num2day = (i) ->
	switch i
		when 0 then "Monday"
		when 1 then "Tuesday"
		when 2 then "Wednesday"
		when 3 then "Thursday"
		when 4 then "Friday"
		when 5 then "Saturday"
		when 6 then "Sunday"
		else "Uh.... There are not enough days in the weeks..."

class TimeTable

	DAYS: 5
	SLOTS: 5
	PADDING_PERCENT: 2

	CellContent:
		"everything": 2 
		"noteacher": 1
		"nameonly": 0

	emptyCell: ->
		$("<div class='timetable-cell timetable-cell-#{@SLOTS} timetable-cell-empty'>")

	constructor: () ->
		0 # Nothing to do, really.

	resize: () ->
		root = $('#timetable')
		narrow = root.width() / @DAYS < 190 # MAGIC! Or, well, empirical evidence... MAGIC!!
		content = @CellContent.everything
		# Strange solution: 
		# Try for each amount of content whether it fits by adding cells, then computing heights.
		# Also: First try with full name, then try abbreviation.
		for needSpace in [false, true]
			for content in [@CellContent.everything, @CellContent.noteacher, @CellContent.nameonly]
				sample = @addCells(root, content, narrow or needSpace)
				if (not needSpace) and (sample.width() < sample.children().first().width())
					needSpace = true
					break
				sumHeights = (accu, element) -> accu + $(element).height()
				if sample.height() >= sample.children().toArray().reduce(sumHeights, 0)
					return
		console.log "Oh boy, there is really not much I can do with so little space, sorry. :/"
		
	 
	addCells: (root, content, narrow) ->
		root.empty()
		sample = undefined	
		for appointments, i in Model.appointments 
			day_obj = @createDay num2day(i), narrow
			cells = (@createCell(period, content, narrow) for period in appointments)
			for [cell, handler] in cells
				day_obj.append cell 
				day_obj.click(handler)
			root.append(day_obj)
			[..., sample] = cells unless sample? # Pick any non-header cell as sample.
		return sample # return any representative cell, i.e. not a header cell.

	createDay: (day, narrow) ->
		day_obj = $("<div class='timetable-day timetable-day-#{@DAYS}' id='timetable-day-#{day}'>")
		day_obj.append( 
			$("<div class='timetable-cell timetable-cell-header timetable-cell-header-#{@SLOTS}'> #{if narrow then day[...3] else day} </div>") 
			)
		return day_obj

	createCell: (period, content, narrow) -> 
		return @emptyCell() unless period?
		color = "rgba(#{period.color[0]}, #{period.color[1]}, #{period.color[2]}, 0.8)"
		cell = $("<div class='timetable-cell timetable-cell-#{@SLOTS}' style='background-color: #{color};'>")
		cell.append( $("<span class='title'> #{if narrow then period.abbrev else period.name} </span>") ) 
		if content > @CellContent.nameonly
			cell.append( $("<span class='room'> #{period.room} </span>") )
		if content > @CellContent.noteacher
			cell.append( $("<span class='prof'> #{period.teacher} </span>") ) 
		handler = () -> chrome.tabs.update({ url: period.link }) if period.link?
		return [cell, handler]
