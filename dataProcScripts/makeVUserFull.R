#makeVUserFull.R
#Last updated December 14, 2016 09:13AM
#This script converts the a CSV file containing user data 
#into a vertex file for upload into System G Graph store.
#The user CSV file was created by a json to CSV python script
#provided with the yelp academic data set

user <- read.csv("./yelp_academic_dataset_user.csv",head = T)
nodes <- data.frame(
    id = user$user_id, 
    type=user$type,
    name=user$name,
    review_count=user$review_count,
    average_stars=user$average_stars,
    yelping_since=user$yelping_since,
    fans=user$fans,
    votes.useful=user$votes.useful,
    votes.cool=user$votes.cool,
    votes.funny=user$votes.funny
)
write.csv(nodes, "./vUserFull.csv", row.names=F)
