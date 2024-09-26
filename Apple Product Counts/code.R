
# Import your libraries
library(dplyr)

# Start writing code
head(playbook_events)
df1<- playbook_events
df2<- playbook_users

merged<- merge(df1, df2, by="user_id", all.x=TRUE)

merged2<- merged%>%
mutate(company= ifelse(str_detect(device, "^iphone 5s|^macbook pro|^ipad air"), "apple", "non-apple"))


apple<- merged2%>%
filter(company=="apple")%>%
group_by(language)%>%
summarize(n_apple_users=n_distinct(user_id))%>%
arrange(desc(n_apple_users))

total<- merged%>%
select(language, user_id)%>%
group_by(language)%>%
summarize(n_total_users= n_distinct(user_id))%>%
arrange(desc(n_total_users))

final<- left_join(total, apple, by="language")%>%
mutate(n_apple_users= coalesce(n_apple_users,0))%>%
arrange(desc(n_total_users))%>%
select(language, n_total_users, n_apple_users)
