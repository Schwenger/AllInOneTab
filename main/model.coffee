shortcuts = [
	{
		name: "calendar",
		url: "http://calendar.google.com",
		bgcolor: [255, 255, 255],
		logoid: "calendar"
	},
	{
		name: "mensa",
		url: "http://www.studentenwerk-saarland.de/en/Essen/Essen-in-Saarbrucken/Speiseplan-aktuell",
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
		url: "http://www.lsf.uni-saarland.de",
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
		name: "Multicore System Architecture",
		short: "SysArch II",
		color: [0, 153, 51],
		link: "http://www-wjp.cs.uni-saarland.de/lehre/vorlesung/rechnerarchitektur/ws15/",
		periods: [
			{
				weekday: weekday("Tuesday"),
				begin: beginId(1400),
				duration: 4,
				room: "E1.3 HS III",
				tutorial: false
			},
			{
				weekday: weekday("Friday"),
				begin: beginId(1000),
				duration: 4,
				room: "E1.3 HS III",
				tutorial: false
			},
			{
				weekday: weekday("Wednesday"),
				begin: beginId(1200),
				duration: 4,
				room: "E1.3 328",
				prof: "Jonas Donia"
				tutorial: true
			}
		]
	}
	{
		name: "Database Management Systems",
		short: "DBMS",
		color: [255, 204, 0],
		link: "https://islecture.cs.uni-saarland.de/course/view.php?id=11",
		periods: [
			{
				weekday: weekday("Thursday"),
				begin: beginId(1000),
				duration: 4,
				room: "E1.3 HS II",
				tutorial: false
			},
			{
				weekday: weekday("Monday"),
				begin: beginId(1400),
				duration: 4,
				room: "E1.1 3.06",
				tutorial: true,
				prof: "Marcel Maltry"
			}
		]
	},
	# {
	# 	name: "Machine Learning",
	# 	short: "ML",
	# 	color: [0, 102, 255],
	# 	link: "http://www.ml.uni-saarland.de/Lectures/ML1516/ML1516.htm",
	# 	periods: [
	# 		{
	# 			weekday: weekday("Wednesday"),
	# 			begin: beginId(1400),
	# 			duration: 4,
	# 			room: "E2.5 HS I",
	# 			tutorial: false
	# 		},
	# 		{
	# 			weekday: weekday("Friday"),
	# 			begin: beginId(1000),
	# 			duration: 4,
	# 			room: "E1.3 HS II",
	# 			tutorial: false
	# 		},
	# 		{
	# 			weekday: weekday("Friday"),
	# 			begin: beginId(1400),
	# 			duration: 4,
	# 			room: "E1.3 SR 15",
	# 			tutorial: true
	# 		}
	# 	]
	# },
	{
		name: "House of Tweets",
		short: "HoT",
		color: [0, 102, 255],
		link: "http://umtl.cs.uni-saarland.de/index.php?id=276",
		periods: [
			{
				weekday: weekday("Seminar"),
				begin: beginId(800),
				duration: 4,
				tutorial: false
			},
			{
				weekday: weekday("Tuesday"),
				begin: beginId(1200),
				duration: 4,
				tutorial: false
			}
		]
	},
	{
		name: "Admissible Search Enhancements",
		short: "ASE",
		color: [210, 29, 0],
		link: "http://fai.cs.uni-saarland.de/teaching/winter15-16/search-enhancements.html",
		periods: [
			{
				weekday: weekday("Seminar"),
				begin: beginId(1000),
				duration: 4,
				tutorial: false
			}
		]
	},
	{
		name: "Hoffmann",
		short: "Hoffmann",
		color: [172, 40, 172],
		link: "http://fai.cs.uni-saarland.de/",
		periods: [
			{
				weekday: weekday("Thursday"),
				begin: beginId(1600),
				duration: 4,
				tutorial: false
			}
		]
	}
	# {
	# 	name: "Theory of Distributed Systems",
	# 	short: "Distributed Systems",
	# 	color: [242, 134, 255],
	# 	link: "https://www.mpi-inf.mpg.de/de/departments/algorithms-complexity/teaching/winter-20152016/theory-of-distributed-systems/"
	# 	periods: [
	# 		{
	# 			weekday: weekday("Monday"),
	# 			begin: beginId(1200),
	# 			duration: 4,
	# 			tutorial: false,
	# 			prof: "Christoph Lenzen",
	# 			room: "E1.4 023"
	# 		}
	# 	]
	# }
]

swr3_id = "cbbeihlbfknckekkafdljfonbjgaelkb"

# Either 'call' or 'function_name' should be defined. 'call' is used when the action has no side effects on the extension's page.
# Note that it might inflence other extensions or redirect the page entirely.
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
