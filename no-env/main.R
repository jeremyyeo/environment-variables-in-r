curr_dir <- getwd()
this_dir <- dirname(parent.frame(2)$ofile)
setwd(this_dir)

if (file.exists(".env")) {readRenviron(".env")} else {Sys.setenv("R_SCRIPT_ENVIRONMENT_SECRET" = "default")}
print(Sys.getenv("R_SCRIPT_ENVIRONMENT_SECRET"))

setwd(curr_dir)
