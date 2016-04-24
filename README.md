# THE new tab page you always wanted 
First off - congratulations: You have found it. THE new tab page. Well, unless you have no weekly schedule or hate shortcuts. In these cases, you have to continue your search.

## Shortcuts
Otherwise, have fun with this handy tool allowing you to place shortcuts to your favorite and most frequently used pages, such as youtube, facebook, or github. 

![screenshot presenting the shortcut display](https://github.com/Schwenger/YetAnotherEnhancedNewTabPage/blob/master/images/screenshots/shortcuts.png)

You can customize the shortcuts to your very own needs. The only thing you need is an appropriate image. That's it.

## Timetable
Using the sidebar you can switch to the timetable display. Here, you can display your timetable, optional with the lecturer's name (or whoever is leading this meeting), and a room. Choose a color for the lecture and - if you want - include a link to the lecture's homepage. 

![screenshot presenting the shortcut display](https://github.com/Schwenger/YetAnotherEnhancedNewTabPage/blob/master/images/screenshots/shortcuts.png)

## Radio integration
Right now, there is fairly limited support to this feature, but if you're German or enjoy listening to German people, you can start a live stream to the "SWR 3" Station (South-West-Radio 3) with one click - provided you have my SWR3 extension installed (available on github). More support will be integrated if requested.

## Translation
One more feature for German speaking people or English speaking people learning German: just press 't' to open a query panel for a German <-> English translation. Type in your query and press enter - voilà! Alternatively, you can click the bottommost button on the sidebar to open the panel.

# Author
Maximilian Schwenger ([email](mailto:maximilian@mschwenger.de), [github](https://github.com/Schwenger)) 2015

# Instruction for users
Due to a lack of user interface you have to provide your data directly in the model.coffee file. There is a default provided, so you can just play the copycat and adapt appropriately. I have faith in you, you can do it!

Afterwards, make sure to run the merge.sh script to apply your changes.

# Instructions for developers
You can either work on the javascript code directly or work on the coffeescript. For installation and compilation instructions please have a look @ [coffeescript website](coffeescript.org). Same holds for the css/less code @ [less website](http://lesscss.org/).

When including icons make sure their height is 100 px and their width is appropriate.
  
## Acknowledgment
The original code base is an adaptation of Tarak Blah's work ([github](https://github.com/tarak)). Thank you for that.
  
## Version history
 * 0.1 Initial; Logos only
 * 0.2 Included timetable
 * 0.3 Updated README
 
## Future work
* Implement interface for users; no longer have to adapt code for customization