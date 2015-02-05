r <- getOption("repos")             # hard code the US repo for CRAN
r["CRAN"] <- "http://cran.us.r-project.org"
options(repos = r)
rm(r)


####################################################
# Set up a "hidden" environment of utility functions
.e <- new.env()

.e$files <- function(p, ...) {
    list.files(pattern = p, ...)
}

.e$reset <- function() {
    vars = ls(env = .GlobalEnv)
    keep = c(".e", ls(env = .e))
    to_delete = vars[!(vars %in% keep)]
    rm(list = to_delete, envir=.GlobalEnv)
    .e$setup()
}

.e$setup <- function() {
    #cat(ls(envir=.e))
    for(var in ls(envir=.e)) {
        assign(var, get(var, envir = .e), env = .GlobalEnv)
    }
}

.e$exit <- function() { q(save="no") }
##################################################

.e$setup()
