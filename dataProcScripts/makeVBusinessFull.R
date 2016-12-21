#makeVBusinessFull.R
#Last updated December 14, 2016 09:12AM
#This script converts the a JSON file containing business data 
#into a vertex file for upload into System G Graph store.
#The JSON is the original business data from the yelp
#academic dataset without any preprocessing.

#biz <- read.csv("./business1kOut.csv",head = T)
library(jsonlite)
biz <- stream_in(file("./yelp_academic_dataset_business.json"))
biz$full_address <- gsub('\n',' ',biz$full_address)
nodes <- data.frame(
    id = biz$business_id, 
    type = biz$type,
    name = biz$name,
    city = biz$city,
    state = biz$state,
    stars = biz$stars,
    latitude = biz$latitude,
    longitude = biz$longitude,
    review_count = biz$review_count,
    full_address = biz$full_address
)
write.csv(nodes, "./vBusinessFull.csv", row.names=F)
