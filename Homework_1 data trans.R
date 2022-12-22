# Homework 1

# 1. Which top 3 destination 
#that had the most flight in October 2013?

flights %>%
  filter(year == 2013, month == 10) %>%
  select(dest) %>%
  count(dest) %>%
  arrange(desc(n)) %>%
  head(3)
    
  
# 2 what is the longest-shortest hour and 
# which flight in September 2013 

flights %>%
  filter(year == 2013, 
         month == 9,
         hour == 5) %>%
  count(flight)


flights %>%
  filter(year == 2013, 
         month == 9,
         hour == 23) %>%
  count(flight)
 
# 3. which carrier had the 3 fewest flight in June 2013?
 
 flights %>%
   filter( year == 2013 , month == 6) %>%
   count(carrier) %>%
   arrange(n) %>%
   left_join(airlines ,  by = "carrier") %>%
   head(3)

 
# 4. Which month had the most frequency flight in 2013?
 
 flights %>%
   filter(year == 2013) %>%
   count(month) %>%
   arrange(desc(n)) %>%
   head(1)
 
 
# 5. What is the most popular departure airport for passeners
 
 flights %>%
   filter(year == 2013) %>%
   count(origin) %>%
   arrange(desc(n))
   
   
   
   
   
   
   
   