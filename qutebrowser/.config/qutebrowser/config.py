# pywal theme
config.source('qutewal.py')

# keybindings
config.bind('H', 'tab-prev')
config.bind('L', 'tab-next')
config.bind('J', 'back')
config.bind('K', 'forward')
config.bind('I', 'enter-mode passthrough')
config.bind('c', 'enter-mode caret')
config.bind('v', 'hint links spawn ~/bin/umpv {hint-url}')
config.bind('V', 'spawn ~/bin/umpv {url}')
config.bind('d', 'tab-close')

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
c.tabs.last_close = 'close'
c.tabs.background = True
c.tabs.show = 'always'
c.tabs.show_switching_delay = 1200
# tabs: style
c.tabs.favicons.show = 'never'
c.tabs.title.format = '{perc} [{index}] {current_title}'
# mute tabs by default
c.content.mute = True
c.tabs.padding = {'top': 6, 'bottom': 6, 'left': 12, 'right': 12}
c.tabs.indicator.width = 0

# fonts
c.fonts.default_family = '"Source Code Pro"'
c.fonts.default_size = '10pt'
c.fonts.tabs = '12pt Avenir'
c.fonts.contextmenu = '12pt Avenir'

# downloads
c.downloads.location.directory = '/home/om/temp/'
c.downloads.location.suggestion = 'both'
c.downloads.position = 'bottom'
c.downloads.remove_finished = 1200
c.confirm_quit = ['downloads']

# default page
c.url.default_page = 'about:blank'

# default search engine
c.url.searchengines = {'DEFAULT': 'https://duckduckgo.com/?q={}'}
# c.url.searchengines = {'DEFAULT': 'https://duckduckgo.com/?q=!g {}', 'ddg': 'https://duckduckgo.com/?q={}', '!': 'https://duckduckgo.com/?q=!{}'}

# start pages
c.url.start_pages = 'about:blank'

# xwindow title
c.window.title_format = '{perc}{current_title} | qb'
