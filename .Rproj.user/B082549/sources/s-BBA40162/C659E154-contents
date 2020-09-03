library('rvest')
#library(xlsx)
library('stringi')
#install.packages('stringi')

url<-"https://www.imdb.com/chart/bottom?pf_rd_m=A2FGELUUNOQJNL&pf_rd_p=4da9d9a5-d299-43f2-9c53-f0efa18182cd&pf_rd_r=Z2TFMCSJZQMJS52FPA69&pf_rd_s=right-4&pf_rd_t=15506&pf_rd_i=moviemeter&ref_=chtmvm_ql_8" #need to prime with working link, #6
webpage<-read_html(url)



#nrow(job_links_DF)

  
title_html <- html_nodes(webpage,'tr~ tr+ tr a , tr:nth-child(1) a')
title <- html_text(title_html)
title

title <- stri_remove_empty(title, na_empty = TRUE)
title <- as.data.frame(title)
clean_title<-title[!(is.na(title) | title==""), ]

clean_title


rating_html <- html_nodes(webpage,'strong')
rating <- html_text(rating_html)
rating

rating <- as.data.frame(rating)
title<-as.data.frame(title)

text.DF<-data.frame(clean_title,rating)

















