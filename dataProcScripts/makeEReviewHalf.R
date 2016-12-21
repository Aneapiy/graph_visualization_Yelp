#makeEReviewHalf.R
#Last updated December 14, 2016 09:14AM
#This script converts the a JSON file containing review data 
#into an edge file for upload into System G Graph store.
#The JSON contains 1 million reviews from the yelp
#academic dataset.
#Uses jsonlite to create a csv file for reviews.

library(jsonlite)
reviews <- stream_in(file("./halfReviews.json"))
#reviews$text <- gsub('\n','',reviews$text)
edges <- data.frame(
    source = reviews$user_id, 
    target = reviews$business_id,
    type = reviews$type,
    date = reviews$date,
    stars = reviews$stars,
    votes = reviews$votes,
    review_id = reviews$review_id
)
write.csv(edges, "./eReviewshalf.csv", row.names=F)
