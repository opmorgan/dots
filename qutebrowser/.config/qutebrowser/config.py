# pywal theme
config.source('qutewal.py')

# keybindings
config.bind('H', 'tab-prev')
config.bind('L', 'tab-next')
config.bind('J', 'back')
config.bind('K', 'forward')

# scrollbar
c.scrolling.bar = 'when-searching'

## statusbar
# behavior
c.statusbar.hide = False
config.bind('b', 'config-cycle statusbar.hide')
config.bind('t', 'config-cycle tabs.show always switching')
# widgets
c.statusbar.widgets = ['keypress', 'url', 'scroll', 'progress']
# style
c.statusbar.padding = {'top': 12, 'bottom': 1, 'left': 12, 'right': 12}

## tabs
# behavior
c.tabs.last_close = 'blank'
c.tabs.show = 'multiple'
c.tabs.show_switching_delay = 1200
# style
c.tabs.favicons.show = 'never'
c.tabs.title.format = '{audio} {current_title}'
c.tabs.padding = {'top': 6, 'bottom': 6, 'left': 12, 'right': 12}
c.tabs.indicator.width = 0

# fonts
config.set('fonts.monospace', '"Source Code Pro"')
config.set('fonts.statusbar', '10pt monospace')
config.set('fonts.tabs', '12pt Avenir')
