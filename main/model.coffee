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
	height: 5
}

subjects = [
	{
		name: "Multicore System Architecture",
		short: "SysArch II",
		color: [0, 122, 41],
		link: "https://www.lsf.uni-saarland.de/qisserver/rds?state=verpublish&status=init&vmfile=no&publishid=90532&moduleCall=webInfo&publishConfFile=webInfo&publishSubDir=veranstaltung",
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
			}
		]
	}
	{
		name: "Database Management Systems",
		short: "DBMS",
		color: [255, 204, 0],
		link: "https://infosys.uni-saarland.de/teaching/ws15/dbms.php",
		periods: [
			{
				weekday: weekday("Thursday"),
				begin: beginId(1000),
				duration: 4,
				room: "E1.3 HS II",
				tutorial: false
			}
		]
	},
	{
		name: "Automated Reasoning",
		short: "Reasoning",
		color: [153, 0, 0],
		link: "https://www.lsf.uni-saarland.de/qisserver/rds?state=verpublish&status=init&vmfile=no&publishid=89924&moduleCall=webInfo&publishConfFile=webInfo&publishSubDir=veranstaltung",
		periods: [
			{
				weekday: weekday("Monday"),
				begin: beginId(1600),
				duration: 4,
				room: "E1.3 HS III",
				tutorial: false
			},
			{
				weekday: weekday("Thursday"),
				begin: beginId(1200),
				duration: 4,
				room: "E1.3 HS III",
				tutorial: false
			}
		]
	},
	{
		name: "Machine Learning",
		short: "ML",
		color: [0, 102, 255],
		link: "http://www.ml.uni-saarland.de/Lectures/ML1516/ML1516.htm",
		periods: [
			{
				weekday: weekday("Wednesday"),
				begin: beginId(1400),
				duration: 4,
				room: "E1.3 HS I",
				tutorial: false
			},
			{
				weekday: weekday("Friday"),
				begin: beginId(1000),
				duration: 4,
				room: "E1.3 HS I",
				tutorial: false
			}
		]
	},
	{
		name: "Deep Learning",
		short: "Deep Learning",
		color: [204, 204, 204],
		link: "https://infosys.uni-saarland.de/teaching/ws15/deep%20learning.php",
		periods: [
			{
				weekday: weekday("Seminar"),
				begin: beginId(800),
				duration: 4,
				tutorial: false
			}
		]
	},
	{
		name: "Admissible Search Enhancements",
		short: "Planning",
		color: [204, 204, 204],
		link: "http://fai.cs.uni-saarland.de/teaching/winter15-16/search-enhancements.html",
		periods: [
			{
				weekday: weekday("Seminar"),
				begin: beginId(1000),
				duration: 4,
				tutorial: false
			}
		]
	}
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
