## Do not load config settings from GUI
config.load_autoconfig(False)

# Pywal theme
config.source('qutewal.py')

# Keybindings
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
config.bind('a', 'mode-enter passthrough')
config.bind('C', 'mode-enter caret')
config.bind('v', 'hint links spawn ~/scripts/umpv {hint-url}')
config.bind('V', 'spawn ~/scripts/umpv {url}')
config.bind('<alt-d>', 'tab-close')
config.bind('S', 'view-source')
config.bind('s', 'config-source')
config.bind('<Ctrl-=>', 'zoom-in')
config.bind('<Ctrl-->', 'zoom-out')
config.bind('z', 'zotero')
config.bind('Z', 'Zotero')

# Aliases
c.aliases = {
        'zotero': 'hint links userscript zotero',
        'Zotero': 'spawn --userscript zotero'
        }


# Save session?
c.auto_save.session = True

# Scrollbar
c.scrolling.bar = 'when-searching'

# Zoom
c.zoom.default = '100%'
## Available zoom levels.
## Type: List of Perc
c.zoom.levels = ['25%', '33%', '50%', '67%', '75%', '90%', '100%', '110%', '125%', '150%', '175%', '200%', '250%', '300%', '400%', '500%']

# Mode switching behavior
c.input.insert_mode.auto_leave = True
c.input.insert_mode.auto_load = False
c.input.insert_mode.leave_on_load = True


# Statusbar: behavior
c.statusbar.show = 'in-mode'
# config.bind('b', 'config-cycle statusbar.show always in-mode')
config.bind('t', 'config-cycle tabs.show always switching')
# Statusbar: widgets
c.statusbar.widgets = ['keypress', 'url', 'scroll', 'progress']
# Style
c.statusbar.padding = {'top': 12, 'bottom': 1, 'left': 12, 'right': 12}

# Tabs: behavior
c.tabs.last_close = 'close'
c.tabs.background = True
c.tabs.show = 'always'
c.tabs.show_switching_delay = 1200
# Tabs: style
c.tabs.favicons.show = 'never'
c.tabs.title.format = '{perc}{audio} [{index}] {current_title}'
# Mute tabs by default?
c.content.mute = True
c.tabs.padding = {'top': 6, 'bottom': 6, 'left': 12, 'right': 12}
c.tabs.indicator.width = 0
c.tabs.close_mouse_button = 'right'

# Fonts

c.fonts.default_family = 'Gill Sans Light'
# c.fonts.default_family = 'IBM Plex Mono'
# c.fonts.default_family = 'IBM Plex Sans'
c.fonts.default_size = '10pt'
c.fonts.tabs.selected = '10pt ' + 'default_family'
c.fonts.tabs.unselected = '10pt ' + 'default_family'
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

# Downloads
c.downloads.location.directory = '/home/om/temp/'
c.downloads.location.suggestion = 'both'
c.downloads.position = 'bottom'
c.downloads.remove_finished = 1200
c.confirm_quit = ['downloads']

# Hints
## Padding (in pixels) for hints.
## Type: Padding
c.hints.padding = {'top': 2, 'bottom': 2, 'left': 4, 'right': 4}
## Rounding radius (in pixels) for the edges of hints.
## Type: Int
c.hints.radius = 0
## Make characters in hint strings uppercase.
## Type: Bool
c.hints.uppercase = False 

# Default page
# c.url.default_page = 'https://workflowy.com/#/86cd9fc25479'
c.url.default_page = 'https://writenow.facultydiversity.org/session/273/group/17154/home'

# Default search engine
c.url.searchengines = {'DEFAULT': 'searx.be/?q={}'}
# c.url.searchengines = {'DEFAULT': 'https://duckduckgo.com/?q={}'}
# c.url.searchengines = {'DEFAULT': 'https://duckduckgo.com/?q=!g {}', 'ddg': 'https://duckduckgo.com/?q={}', '!': 'https://duckduckgo.com/?q=!{}'}

# Start pages
# c.url.start_pages = 'https://workflowy.com/#/86cd9fc25479'
c.url.start_pages = 'https://writenow.facultydiversity.org/session/273/group/17154/home'

# Xwindow title
c.window.title_format = '{perc}{current_title} | qb'

