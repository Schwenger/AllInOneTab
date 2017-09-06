class Model

Model.favs = [
		{
			"name": "amazon"
			"icon": "https://images-na.ssl-images-amazon.com/images/G/01/gc/designs/livepreview/a_generic_white_10_us_noto_email_v2016_us-main._CB277146614_.png",
			"url": "https://amazon.com/"
		}, {
			"name": "humblebundle"
			"icon": "https://pbs.twimg.com/profile_images/609471525863976960/r3m_pjpj.png",
			"url": "https://www.humblebundle.com/"
		}, {
			"name": "youtube"
			"icon": "https://cdn1.iconfinder.com/data/icons/logotypes/32/youtube-512.png",
			"url": "https://www.youtube.com/"
		}, {
			"name": "saarlanduniveristy"
			"icon": "https://www.szsb.uni-saarland.de/tl_files/szsb/bilder/layout/logos/unieule.png",
			"url": "http://www.uni-saarland.de/nc/startseite.html"
		}, {
			"name": "react"
			"icon": "https://avatars1.githubusercontent.com/u/12135913?v=4&s=200",
			"url": "https://www.react.uni-saarland.de/"
		}, {
			"name": "amazonmusic"
			"icon": "https://images-na.ssl-images-amazon.com/images/I/41VXGF76krL._SX425_.jpg",
			"url": "https://www.music.amazon.com/"
		}, {
			"name": "netflix"
			"icon": "https://vignette2.wikia.nocookie.net/logopedia/images/b/b2/NetflixIcon2016.jpg/revision/latest/scale-to-width-down/2000?cb=20160620223003",
			"url": "https://www.netflix.com/"
		}, {
			"name": "facebook"
			"icon": "https://img06.deviantart.net/876b/i/2009/297/b/8/facebook_icon_by_ben_anderson.png",
			"url": "https://www.facebook.com/"
		}
	]


verification = 
	"name": "Verification",
	"room": "E1.3 HS002"
	"abbrev": "Ver"
	"teacher": "J. Doe"
	"color": [66, 134, 244]

emsys = 
	"name": "Embedded Systems",
	"room": "E2.2 HS01"
	"abbrev": "ES"
	"teacher": "J. Snow"
	"color": [138, 229, 2]

runtime = 
	"name": "Runtime Verification",
	"room": "E1.1 SR016"
	"abbrev": "RV"
	"teacher": "S. Mario"
	"color": [143, 63, 255]

hybrid = 
	"name": "Hybrid Systems",
	"room": "E1.1 SR016"
	"abbrev": "HySy"
	"teacher": "T. Flowers"
	"color": [229, 161, 2]

nothing = undefined

Model.appointments = [
	[ # Monday
		nothing, verification, nothing, hybrid, nothing
	],
	[ # Tuesday
		nothing, emsys, nothing, nothing, hybrid
	],
	[ # Wednesday
		nothing, nothing, nothing, nothing, nothing
	],
	[ # Thursday
		runtime, nothing, verification, nothing, nothing
	],
	[ # Friday
		runtime, nothing, nothing, nothing, hybrid
	],
]
