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

