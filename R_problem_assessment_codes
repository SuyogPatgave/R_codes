df<- ms_download_facts%>%
select(date, user_id, downloads)%>%
left_join(ms_user_dimension, by="user_id")%>%
left_join(ms_acc_dimension, by="acc_id")%>%
group_by(date, paying_customer)%>%
summarize(total_downloads= sum(downloads))%>%
pivot_wider(names_from= paying_customer, values_from=total_downloads, values_fill=0)%>%
select(date, yes, no)%>%
filter(no>yes)%>%
arrange(date)
head(df)
