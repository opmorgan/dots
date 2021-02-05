## need to update deprecated settings:
## statusbar.hide
## fonts.tabs

## Do not load config settings from GUI
config.load_autoconfig(False)

# pywal theme
config.source('qutewal-jungle.py')

# keybindings
config.unbind('d')
config.unbind('r')
config.unbind('R')
config.bind('<alt-r>', 'reload')
config.bind('<alt-R>', 'reload')
config.bind('<alt-h>', 'tab-prev')
config.bind('<alt-l>', 'tab-next')
config.bind('<alt-shift-h>', 'tab-move -')
config.bind('<alt-shift-l>', 'tab-move +')
config.bind('<alt-j>', 'back')
config.bind('<alt-k>', 'forward')
config.bind('a', 'enter-mode passthrough')
config.bind('C', 'enter-mode caret')
config.bind('v', 'hint links spawn ~/scripts/umpv {hint-url}')
config.bind('V', 'spawn ~/scripts/umpv {url}')
config.bind('<alt-d>', 'tab-close')
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

# mode switching behavior
c.input.insert_mode.auto_leave = True
c.input.insert_mode.auto_load = False
c.input.insert_mode.leave_on_load = True


# statusbar: behavior
c.statusbar.show = 'in-mode'
# config.bind('b', 'config-cycle statusbar.show always in-mode')
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
c.tabs.close_mouse_button = 'right'

# fonts
c.fonts.default_family = 'Cozette'
c.fonts.default_size = '10pt'
c.fonts.tabs.selected = '11pt ' + 'default_family'
c.fonts.tabs.unselected = '11pt ' + 'default_family'
c.fonts.contextmenu = 'default_size default_family'
c.fonts.completion.entry = 'default_size default_family'
c.fonts.completion.category = 'default_size default_family'
c.fonts.debug_console = 'default_size default_family'
c.fonts.downloads = 'default_size default_family'
c.fonts.hints = 'default_size default_family'
c.fonts.keyhint = 'default_size default_family'
c.fonts.messages.error = 'default_size default_family'
c.fonts.messages.info = 'default_size default_family'
c.fonts.messages.warning = 'default_size default_family'
c.fonts.prompts = 'default_size default_family'
c.fonts.statusbar = 'default_size default_family'

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
c.url.default_page = 'https://workflowy.com/#/86cd9fc25479'

# default search engine
c.url.searchengines = {'DEFAULT': 'https://duckduckgo.com/?q={}'}
# c.url.searchengines = {'DEFAULT': 'https://duckduckgo.com/?q=!g {}', 'ddg': 'https://duckduckgo.com/?q={}', '!': 'https://duckduckgo.com/?q=!{}'}

# start pages
c.url.start_pages = 'https://workflowy.com/#/86cd9fc25479'

# xwindow title
c.window.title_format = '{perc}{current_title} | qb'

