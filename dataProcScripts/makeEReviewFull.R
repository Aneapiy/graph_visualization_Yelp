#makeEReviewFull.R
#Last updated December 14, 2016 12:59 
#This script converts the a JSON file containing review data 
#into an edge file for upload into System G Graph store.
#The JSON contains all reviews from the yelp
#academic dataset.
#Uses jsonlite to create a csv file for reviews.

library(jsonlite)
reviews <- stream_in(file("./yelp_academic_dataset_review.json"))
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
write.csv(edges, "./eReviewsFull.csv", row.names=F)
