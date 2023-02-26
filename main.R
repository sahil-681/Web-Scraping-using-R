### MAIN SCRAPING CODE

#########################
#  ---RUN ONLY ONCE---  #
#########################

# # Main page
# x <- scan("https://www.azlyrics.com/b/beatles.html", what = "", sep = "\n")
# 
# ## Getting all urls from the main page for each song
# urls <- list()
# for (i in 1:length(x)) {
#   # extract URLs using regular expressions
#   urls[[i]] <- ifelse(grepl('href="/lyrics/beatles', x[i]),
#                       paste0("https://www.azlyrics.com", ## Completing link
#                              gsub('.*href="(/lyrics/beatles.*?)".*',
#                                   '\\1',
#                                   x[i])),
#                       NA)
# }
# urls <- urls[is.na(urls) == F] # Dropping NAs
# 
# ## Getting lyrics from all the urls
# 
# lyrics <- list()
# 
# # Define the time interval in seconds for loop delay
# time_interval <- 330 # 5.5 minutes
# 
# # Running loop at specified time intervals as IP Address updates in background
# for (j in 1:48) {
#   # Scraping each link to extract the lyrics
#   for (i in (length(lyrics)+1):(length(lyrics)+9)) {
#     y <- scan(urls[[i]], what = "", sep = "\n")
#     a <- grep("<!-- Usage of azlyrics.com content by any third-party lyrics provider is prohibited by our licensing agreement. Sorry about that. -->", y)
#     b <- grep("</div>", y[a+1:length(y)])[1] + a
#     slyrics <- y[(a+1):(b-1)]
#     lyrics[[i]] <- lapply(slyrics, function(x) gsub("<br>", "", x))
#   }
#   # Pause the execution of the loop for 5.5 minutes to update IP Address
#   Sys.sleep(time_interval)
# }
# 
# # saving file for future use
# saveRDS(lyrics, file="lyrics")

##########################
# ^^^ DONT RUN AGAIN ^^^ #
##########################