# list of jquery objects representing the displayed subjects
_subjects = []
_root = $("#preferences-body")

listSubjects = (subjects) ->
	for subject in subjects
		listSubject(subject)

makeButton = (icon, call) ->
	btn = $("<button class='btn preferences-btn'><img class='button-icon' src='../images/preferences/#{icon}.png'></img></button>")
	btn.click(call)
	return btn

createAddButton = () ->
	makeButton("plus", addEmptySubject)

createSaveButton = () ->
	makeButton("tick", saveData)

addEmptySubject = () ->
	console.log("Adding Empty Subject")

saveData = () ->
	console.log("Saving Data")

displayButton = (obj) ->
	if _subjects.length is 0
		_root.append(obj) 
	else 
		_subjects[_subjects.length - 1].after(obj)

displayContent = (data) ->
	listSubjects data.subjects
	addButton = createAddButton()
	displayButton addButton
	saveButton = createSaveButton()
	displayButton saveButton

makePreferences = () ->
	chrome.storage.sync.get({"subjects": []}, displayContent)

preferencesOpen = false

trigger_preferences = () ->
	if preferencesOpen then displayDefault() else display "preferences"
	preferencesOpen = not preferencesOpen
