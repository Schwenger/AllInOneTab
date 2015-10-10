touch bundled.coffee
rm bundled.coffee
cat util.coffee model.coffee timetable.coffee sidebar.coffee icons.coffee main.coffee > bundled.coffee
coffee -c bundled.coffee
touch style.css
rm style.css
lessc style.less > style.css
echo "executed"
