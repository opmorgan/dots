# pywal theme
config.source('qutewal-koi.py')

# keybindings
config.bind('H', 'tab-prev')
config.bind('L', 'tab-next')
config.bind('J', 'back')
config.bind('K', 'forward')
config.bind('I', 'enter-mode passthrough')
config.bind('C', 'enter-mode caret')
config.bind('v', 'hint links spawn ~/scripts/umpv {hint-url}')
config.bind('V', 'spawn ~/scripts/umpv {url}')
config.bind('d', 'tab-close')
config.bind('S', 'view-source')
config.bind('s', 'config-source')
config.bind('<Ctrl-=>', 'zoom-in')
config.bind('<Ctrl-->', 'zoom-out')
config.bind('z', 'zotero')
config.bind('Z', 'Zotero')

# aliases
c.aliases = {
        'zotero': 'hint links userscript zotero',
        'Zotero': 'spawn --userscript zotero'
        }


# save session?
c.auto_save.session = True

# scrollbar
c.scrolling.bar = 'when-searching'

# zoom
c.zoom.default = '100%'
## Available zoom levels.
## Type: List of Perc
c.zoom.levels = ['25%', '33%', '50%', '67%', '75%', '90%', '100%', '110%', '125%', '150%', '175%', '200%', '250%', '300%', '400%', '500%']

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
c.tabs.title.format = '{perc}{audio} [{index}] {current_title}'
# mute tabs by default?
c.content.mute = True
c.tabs.padding = {'top': 6, 'bottom': 6, 'left': 12, 'right': 12}
c.tabs.indicator.width = 0

# fonts
#c.fonts.default_family = 'Avenir'
#c.fonts.default_size = '10pt'
#c.fonts.tabs = '12pt Avenir'
#c.fonts.contextmenu = '12pt Avenir'
#c.fonts.hints = 'default_size default_family'
font_family = 'Avenir'
font = '10pt' + font_family
c.fonts.completion.entry = font
c.fonts.completion.category = font
c.fonts.debug_console = font
c.fonts.downloads = font
c.fonts.hints = '10pt Avenir'
c.fonts.keyhint = font
c.fonts.messages.error = font
c.fonts.messages.info = font
c.fonts.messages.warning = font
c.fonts.prompts = font
c.fonts.statusbar = font
c.fonts.tabs = '12pt ' + font_family

# downloads
c.downloads.location.directory = '/home/om/temp/'
c.downloads.location.suggestion = 'both'
c.downloads.position = 'bottom'
c.downloads.remove_finished = 1200
c.confirm_quit = ['downloads']

# hints
## Padding (in pixels) for hints.
## Type: Padding
c.hints.padding = {'top': 2, 'bottom': 2, 'left': 4, 'right': 4}
## Rounding radius (in pixels) for the edges of hints.
## Type: Int
c.hints.radius = 0
## Make characters in hint strings uppercase.
## Type: Bool
c.hints.uppercase = False 

# default page
c.url.default_page = 'news.google.com'

# default search engine
c.url.searchengines = {'DEFAULT': 'https://duckduckgo.com/?q={}'}
# c.url.searchengines = {'DEFAULT': 'https://duckduckgo.com/?q=!g {}', 'ddg': 'https://duckduckgo.com/?q={}', '!': 'https://duckduckgo.com/?q=!{}'}

# start pages
c.url.start_pages = 'news.google.com'

# xwindow title
c.window.title_format = '{perc}{current_title} | qb'
