
show_preferences = () ->
	return 0

trigger_swr3 = () ->
	chrome.runtime.sendMessage(swr3_id, {intent: "trigger_swr3"})

makeSidebarDiv = (element, id) ->
	$(" <div class='sidebar-item'><img class='sidebar-icon' id='" + id + "' src='../images/sidebar/" + element.icon + "'></img></div> ")

open_translator_input_field = () ->
	0

makeDialog = () ->
	$("""
  <div class="modal fade" id="sidebar-input-dialog" role="dialog">
    <div class="modal-dialog">
    
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Enter your query:</h4>
        </div>
        <div class="modal-body">
          <input type="text" autofocus id="sidebar-input-dialog-field"> <button type="submit" id="sidebar-input-dialog-submit">Go!</button>
        </div>
      </div>
      
    </div>
  </div>""")

setGlobalShortcut = (keycode, call) ->
	$("body").keydown (event) ->
		call() if event.which is keycode and not dialogOpen()

dialogOpen = () ->
	$("#sidebar-input-dialog")?.data('bs.modal')?.isShown

# This is necessary to have the autofocus effect whenever the dialog is opened
enableAutoFocus = () ->
	$('.modal').on('shown.bs.modal', () -> 
		$(this).find('[autofocus]').focus()
	)

resetInputOnClose = () ->
	$('.modal').on('hidden.bs.modal', () -> 
		$("#sidebar-input-dialog-field").val("")
	)

setup_translator = (item, id) ->
	element = $("#" + id)
	element.attr("data-toggle", "modal")
	element.attr("data-target", "#sidebar-input-dialog")
	dialog = makeDialog() 
	$("#sidebar-body").append(dialog)
	dialog_field = $("#sidebar-input-dialog-field")
	dialog_field.keydown (event) ->
	    if (event.which is 13) # ENTER 
	        event.preventDefault()
	        content = $("#sidebar-input-dialog-field").val()
	        chrome.tabs.update { url: "http://www.dict.cc/?s=" + content }
	setGlobalShortcut(item.hotkey, () -> element.click())
	resetInputOnClose()
	enableAutoFocus()

# Due to scoping we cannot move this definition into 'model.coffee'.
sidebarContent = [
	{
		name: "preferences",
		icon: "cog.png",
		call: show_preferences
	},
	{
		name: "timetable",
		icon: "timetable.png",
		call: trigger_timetable
	},
	{
		name: "swr3",
		icon: "swr3.png",
		call: trigger_swr3
	},
	{
		name: "translator",
		icon: "translator.png",
		call: open_translator_input_field,
		setup: setup_translator
		hotkey: 84
	}
]

makeSidebar = () ->
	sidebar = $("#sidebar-body")
	for element, index in sidebarContent
		id = "sidebar-icon-" + element.name
		div = makeSidebarDiv(element, id)
		sidebar.append(div)
		$("#" + id).click element.call
		element.setup?(element, id)




