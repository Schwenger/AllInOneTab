class Model

Model.favs = [
		{
			"name": "amazon"
			"icon": "https://topclassactions.com/wp-content/uploads/2015/08/amazon-logo-black-square-e1440610992440.png",
			"url": "https://amazon.com/"
		}, {
			"name": "humblebundle"
			"icon": "https://pbs.twimg.com/profile_images/609471525863976960/r3m_pjpj.png",
			"url": "https://www.humblebundle.com/"
		}, {
			"name": "youtube"
			"icon": "https://www.youtube.com/yt/about/media/images/brand-resources/icons/YouTube_icon_full-color.svg",
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
			"name": "wikipedia"
			"icon": "https://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/1024px-Wikipedia-logo-v2.svg.png",
			"url": "https://www.wikipedia.org/"
		}, {
			"name": "github"
			"icon": "https://github.com/fluidicon.png",
			"url": "https://www.github.com/"
		}, {
			"name": "twitter"
			"icon": "https://g.twimg.com/Twitter_logo_blue.png",
			"url": "https://www.twitter.com/"
		}, {
			"name": "audible"
			"icon": "https://maxcdn.icons8.com/Share/icon/color/Logos//audible1600.png",
			"url": "https://www.audible.com/"
		}, {
			"name": "twitch"
			"icon": "https://vignette3.wikia.nocookie.net/logopedia/images/8/83/Twitch_icon.svg/revision/latest?cb=20140727180700",
			"url": "https://www.twitch.tv/"
		}, {
			"name": "dict"
			"icon": "https://lh3.googleusercontent.com/fp3n8D0BTLVaV63Pwyi7BhZaoXovNjteOKxcJHZ-FiqEXN4Q2TtEy7Af-BLi7Xff5g=w300",
			"url": "https://dict.cc"
		}, {
			"name": "facebook"
			"icon": "http://img2.wikia.nocookie.net/__cb20130501121248/logopedia/images/thumb/f/fb/Facebook_icon_2013.svg/1024px-Facebook_icon_2013.svg.png",
			"url": "https://www.facebook.com/"
		}
	]


verification = 
	"name": "Verification"
	"room": "E1.3 HS002"
	"abbrev": "Ver"
	"teacher": "J. Doe"
	"color": [66, 134, 244]
	"link": "https://www.react.uni-saarland.de/teaching/"

emsys = 
	"name": "Embedded Systems",
	"room": "E2.2 HS01"
	"abbrev": "ES"
	"teacher": "J. Snow"
	"color": [138, 229, 2]
	"link": "https://www.react.uni-saarland.de/teaching/"

runtime = 
	"name": "Runtime Verification",
	"room": "E1.1 SR016"
	"abbrev": "RV"
	"teacher": "S. Mario"
	"color": [143, 63, 255]
	"link": "https://www.react.uni-saarland.de/teaching/"

hybrid = 
	"name": "Hybrid Systems",
	"room": "E1.1 SR016"
	"abbrev": "HySy"
	"teacher": "T. Flowers"
	"color": [229, 161, 2]
	"link": "https://www.react.uni-saarland.de/teaching/"

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
