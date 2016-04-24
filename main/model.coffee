shortcuts = [
	{
		name: "calendar",
		url: "http://calendar.google.com",
		bgcolor: [255, 255, 255],
		logoid: "calendar"
	},
	{
		name: "mensa",
		url: "about:blank",
		bgcolor: [255, 255, 255],
		logoid: "studentenwerk"
	},
	{
		name: "amazon",
		url: "http://amazon.de",
		bgcolor: [255, 255, 255],
		logoid: "amazon"
	},
	{
		name: "GitHub",
		url: "http://github.com",
		bgcolor: [255, 255, 255],
		logoid: "github-alternative"
	},
	{
		name: "lsf",
		url: "about:blank",
		bgcolor: [255, 255, 255],
		logoid: "uds"
	},
	{
		name: "dictcc",
		url: "http://dict.cc",
		bgcolor: [255, 255, 255],
		logoid: "dictcc"
	},
	{
		name: "linkedin",
		url: "http://linkedin.com",
		bgcolor: [255, 255, 255],
		logoid: "linkedin"
	},
	{
		name: "youtube",
		url: "http://youtube.com",
		bgcolor: [255, 255, 255],
		logoid: "youtube"
	},
	{
		name: "GooglePlus",
		url: "http://plus.google.com",
		bgcolor: [255, 255, 255],
		logoid: "g+"
	},
	{
		name: "humblebundle",
		url: "http://www.humblebundle.com/",
		bgcolor: [255, 255, 255],
		logoid: "humblebundle"
	}
]

timetableLayout = {
	width: 6,
	height: 5,
	slotHeight: 0.15,
	headerHeight: 0.1,
	padding: 0
	# padding: 0.05 # 100-(5*17 + 10)
}

subjects = [
	{
		name: "Introduction to Database Systems",
		short: "Databases",
		color: [0, 153, 51],
		link: "about:blank",
		periods: [
			{
				weekday: weekday("Wednesday"),
				begin: beginId(1000),
				duration: 4,
				room: "Lecture Hall III",
				prof: "Prof. Doe",
				tutorial: false
			},
			{
				weekday: weekday("Monday"),
				begin: beginId(1400),
				duration: 4,
				room: "Lecture Hall I",
				prof: "Prof. Doe",
				tutorial: false
			},
			{
				weekday: weekday("Friday"),
				begin: beginId(1200),
				duration: 4,
				room: "Lecture Hall I",
				prof: "John Doette",
				tutorial: false
			},
		]
	},
	{
		name: "Artificial Intelligence",
		short: "AI",
		color: [255, 165, 0],
		link: "about:blank",
		periods: [
			{
				weekday: weekday("Monday"),
				begin: beginId(1200),
				duration: 4,
				tutorial: false,
				room: "Seminar Room 301",
				prof: "Dr. Yasmin Doe",
			},
			{
				weekday: weekday("Wednesday"),
				begin: beginId(1200),
				duration: 4,
				tutorial: false,
				room: "Seminar Room 334",
				prof: "Dr. Yasmin Doe",
			}
		]
	},
	{
		name: "System Architecture II",
		short: "SysArch",
		color: [63, 110, 255],
		link: "about:blank",
		periods: [
			{
				weekday: weekday("Monday"),
				begin: beginId(1000),
				duration: 4,
				tutorial: false,
				room: "Great Hall",
				prof: "Prof. Imagine",
			},
			{
				weekday: weekday("Thursday"),
				begin: beginId(1000),
				duration: 4,
				tutorial: false,
				room: "Great Hall",
				prof: "Prof. Imagine",
			}
		]
	},
	{
		name: "Project Work",
		short: "Project Work",
		color: [210, 29, 0],
		periods: [
			{
				weekday: weekday("Thursday"),
				begin: beginId(1400),
				duration: 4,
				tutorial: false
			}
		]
	},
	{
		name: "Theory of Distributed Systems",
		short: "Distributed Systems",
		color: [242, 134, 255],
		link: "https://www.mpi-inf.mpg.de/de/departments/algorithms-complexity/teaching/winter-20152016/theory-of-distributed-systems/"
		periods: [
			{
				weekday: weekday("Seminar"),
				begin: beginId(800),
				duration: 4,
				tutorial: false,
				prof: "Dr. Thingy"
			}
		]
	}
]

swr3_id = "cbbeihlbfknckekkafdljfonbjgaelkb"

# Either 'call' or 'function_name' should be defined. 'call' is used when the action has no side effects on the extension's page.
# Note that it might influence other extensions or redirect the page entirely.
# 'function_name' is used when the logic is defined in the sidebar file and the function name allows to call the respective function.
# sidebarContent = [
# 	{
# 		name: "preferences",
# 		icon: "cog.png",
# 		call: "show_preferences"
# 	},
# 	{
# 		name: "timetable",
# 		icon: "timetable.png",
# 		call: "show_timetable"
# 	},
# 	{
# 		name: "swr3",
# 		icon: "swr3.png",
# 		call: () -> 
			
# 			undefined
# 	},
# 	{
# 		name: "translator",
# 		icon: "translator.png",
# 		function_name: open_translator_input_field,
# 		setup: "setup_translator"
# 	}
# ]
