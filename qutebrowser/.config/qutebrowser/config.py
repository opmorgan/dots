# pywal theme
config.source('qutewal.py')

# keybindings
config.bind('H', 'tab-prev')
config.bind('L', 'tab-next')
config.bind('J', 'back')
config.bind('K', 'forward')

# scrollbar
c.scrolling.bar = 'when-searching'

# statusbar: behavior
c.statusbar.hide = False
config.bind('b', 'config-cycle statusbar.hide')
config.bind('t', 'config-cycle tabs.show always switching')
# statusbar: widgets
c.statusbar.widgets = ['keypress', 'url', 'scroll', 'progress']
# style
c.statusbar.padding = {'top': 12, 'bottom': 1, 'left': 12, 'right': 12}

# tabs: behavior
c.tabs.last_close = 'blank'
c.tabs.show = 'always'
c.tabs.show_switching_delay = 1200
# tabs: style
c.tabs.favicons.show = 'never'
c.tabs.title.format = '{audio} {current_title}'
c.tabs.padding = {'top': 6, 'bottom': 6, 'left': 12, 'right': 12}
c.tabs.indicator.width = 0

# fonts
c.fonts.default_family = '"Source Code Pro"'
c.fonts.default_size = '10pt'
c.fonts.tabs = '12pt Avenir'

# downloads
c.downloads.location.directory = '/home/om/temp/'
c.downloads.location.suggestion = 'both'
c.downloads.position = 'bottom'
c.downloads.remove_finished = 1200
