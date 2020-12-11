# set welcome message
#message("Welcome, Owen. Working directory is: ", "\n", getwd())

# customize r prompt
options(prompt = "R > ")

# set default CRAN mirror
# r <- getOption("repos")
# r["CRAN"] <- "https://cran.us.r-project.org"
# options(repos = r)
# rm(r)

# other options
options(digits=4, show.signif.stars=FALSE)
options("digits.secs"=3) # show sub-second time stamps

# binding to restart r session
makeActiveBinding("refresh", function() { shell("Rgui"); q(save="no") }, .GlobalEnv)
makeActiveBinding("refresh", function() { system("R"); q(save="no") }, .GlobalEnv)

options("pdfviewer"="zathura")

# default graphics options
# setHook(packageEvent("grDevices", "onLoad"),
#         function(...) grDevices::X11.options(width=8, height=8, 
#                                              xpos=0, pointsize=10, 
#                                              #type="nbcairo"))  # Cairo device
#                                              #type="cairo"))    # other Cairo dev
#                                              type="xlib"))      # old default

# default graphics options
setHook(packageEvent("grDevices", "onLoad"),
        function(...) grDevices::X11.options(width=5, height=5, 
                                             xpos=500, pointsize=10, 
                                             type="nbcairo"  # Cairo device
                                             #type="cairo"    # other Cairo dev
                                             #type="xlib"      # old default
                                             ))
