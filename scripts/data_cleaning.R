#### Preamble ####
# Purpose: Cleaning data and graphing
# Author: Zecheng Wu
# Data: 5 April 2022
# Contact: zbill.wu@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
# Use R Projects, not setwd().

library(tidyverse)
library(ggplot2)

# Read in the raw data. 

S_P <- readr::read_csv("inputs/data/HistoricalPrices.csv")
AAPL <- readr::read_csv("inputs/data/tech_AAPL.csv")
MAR <- readr::read_csv("inputs/data/house_MAR.csv")
SAFM <- readr::read_csv("inputs/data/agri_SAFM.csv")
NEM <- readr::read_csv("inputs/data/gold_NEM.csv")
XOM <- readr::read_csv("inputs/data/gas_XOM.csv")

#Cleaning S&P
S_P$Date <- as.Date(S_P$Date, "%m/%d/%y")

#### What's next? ####

S_P_graph <- ggplot(data = S_P, aes(x = Date, y = Close)) + 
  geom_line() + 
  geom_vline(xintercept = as.numeric(as.Date("2001/01/01")), color = 'red', linetype = 2) +
  geom_vline(xintercept = as.numeric(as.Date("2002/09/30")), color = 'red', linetype = 2) + 
  geom_vline(xintercept = as.numeric(as.Date("2008/07/01")), color = 'red', linetype = 2) + 
  geom_vline(xintercept = as.numeric(as.Date("2010/06/30")), color = 'red', linetype = 2) + 
  geom_vline(xintercept = as.numeric(as.Date("2020/01/01")), color = 'red', linetype = 2) + 
  geom_vline(xintercept = as.numeric(as.Date("2021/09/30")), color = 'red', linetype = 2) 


AAPL_graph <- ggplot(data = AAPL, aes(x = Date, y = Close)) + 
  geom_line() + 
  geom_vline(xintercept = as.numeric(as.Date("2001/01/01")), color = 'red', linetype = 2) +
  geom_vline(xintercept = as.numeric(as.Date("2002/09/30")), color = 'red', linetype = 2) + 
  geom_vline(xintercept = as.numeric(as.Date("2008/07/01")), color = 'red', linetype = 2) + 
  geom_vline(xintercept = as.numeric(as.Date("2010/06/30")), color = 'red', linetype = 2) + 
  geom_vline(xintercept = as.numeric(as.Date("2020/01/01")), color = 'red', linetype = 2) + 
  geom_vline(xintercept = as.numeric(as.Date("2021/09/30")), color = 'red', linetype = 2) 

MAR_graph <- ggplot(data = MAR, aes(x = Date, y = Close)) + 
  geom_line() + 
  geom_vline(xintercept = as.numeric(as.Date("2001/01/01")), color = 'red', linetype = 2) +
  geom_vline(xintercept = as.numeric(as.Date("2002/09/30")), color = 'red', linetype = 2) + 
  geom_vline(xintercept = as.numeric(as.Date("2008/07/01")), color = 'red', linetype = 2) + 
  geom_vline(xintercept = as.numeric(as.Date("2010/06/30")), color = 'red', linetype = 2) + 
  geom_vline(xintercept = as.numeric(as.Date("2020/01/01")), color = 'red', linetype = 2) + 
  geom_vline(xintercept = as.numeric(as.Date("2021/09/30")), color = 'red', linetype = 2) 

SAFM_graph <- ggplot(data = SAFM, aes(x = Date, y = Close)) + 
  geom_line() + 
  geom_vline(xintercept = as.numeric(as.Date("2001/01/01")), color = 'red', linetype = 2) +
  geom_vline(xintercept = as.numeric(as.Date("2002/09/30")), color = 'red', linetype = 2) + 
  geom_vline(xintercept = as.numeric(as.Date("2008/07/01")), color = 'red', linetype = 2) + 
  geom_vline(xintercept = as.numeric(as.Date("2010/06/30")), color = 'red', linetype = 2) + 
  geom_vline(xintercept = as.numeric(as.Date("2020/01/01")), color = 'red', linetype = 2) + 
  geom_vline(xintercept = as.numeric(as.Date("2021/09/30")), color = 'red', linetype = 2) 

NEM_graph <- ggplot(data = NEM, aes(x = Date, y = Close)) + 
  geom_line() + 
  geom_vline(xintercept = as.numeric(as.Date("2001/01/01")), color = 'red', linetype = 2) +
  geom_vline(xintercept = as.numeric(as.Date("2002/09/30")), color = 'red', linetype = 2) + 
  geom_vline(xintercept = as.numeric(as.Date("2008/07/01")), color = 'red', linetype = 2) + 
  geom_vline(xintercept = as.numeric(as.Date("2010/06/30")), color = 'red', linetype = 2) + 
  geom_vline(xintercept = as.numeric(as.Date("2020/01/01")), color = 'red', linetype = 2) + 
  geom_vline(xintercept = as.numeric(as.Date("2021/09/30")), color = 'red', linetype = 2) 

XOM_graph <- ggplot(data = XOM, aes(x = Date, y = Close)) + 
  geom_line() + 
  geom_vline(xintercept = as.numeric(as.Date("2001/01/01")), color = 'red', linetype = 2) +
  geom_vline(xintercept = as.numeric(as.Date("2002/09/30")), color = 'red', linetype = 2) + 
  geom_vline(xintercept = as.numeric(as.Date("2008/07/01")), color = 'red', linetype = 2) + 
  geom_vline(xintercept = as.numeric(as.Date("2010/06/30")), color = 'red', linetype = 2) + 
  geom_vline(xintercept = as.numeric(as.Date("2020/01/01")), color = 'red', linetype = 2) + 
  geom_vline(xintercept = as.numeric(as.Date("2021/09/30")), color = 'red', linetype = 2) 


# Recession 1: tech bubble

r1_S_P <- S_P %>% filter(Date >= as.Date("2001/01/01") & Date <= as.Date("2002/09/30"))
r1_AAPL <- AAPL %>% filter(Date >= as.Date("2001/01/01") & Date <= as.Date("2002/09/30"))
r1_MAR <- MAR %>% filter(Date >= as.Date("2001/01/01") & Date <= as.Date("2002/09/30"))
r1_SAFM <- SAFM %>% filter(Date >= as.Date("2001/01/01") & Date <= as.Date("2002/09/30"))
r1_NEM <- NEM %>% filter(Date >= as.Date("2001/01/01") & Date <= as.Date("2002/09/30"))
r1_XOM <- XOM %>% filter(Date >= as.Date("2001/01/01") & Date <= as.Date("2002/09/30"))

#combining all tables

r1_S_P <- rename(r1_S_P, S_P = Close) %>% 
  select(Date, S_P)
r1_AAPL <- rename(r1_AAPL, AAPL = Close) %>% 
  select(Date, AAPL)
r1_MAR <- rename(r1_MAR, MAR = Close) %>% 
  select(Date, MAR)
r1_SAFM <- rename(r1_SAFM, SAFM = Close) %>% 
  select(Date, SAFM)
r1_NEM <- rename(r1_NEM, NEM = Close) %>% 
  select(Date, NEM)
r1_XOM <- rename(r1_XOM, XOM = Close) %>% 
  select(Date, XOM)

clean1 <- inner_join(r1_S_P, r1_AAPL, by = "Date")
clean2 <- inner_join(clean1, r1_MAR, by = "Date")
clean3 <- inner_join(clean2, r1_SAFM, by = "Date")
clean4 <- inner_join(clean3, r1_NEM, by = "Date")
clean5 <- inner_join(clean4, r1_XOM, by = "Date")

#creating model

model1 <- lm(S_P ~ AAPL + MAR + SAFM + NEM + XOM , data = clean5)

# Recession 2: housing bubble

r2_S_P <- S_P %>% filter(Date >= as.Date("2008/07/01") & Date <= as.Date("2010/06/30"))
r2_AAPL <- AAPL %>% filter(Date >= as.Date("2008/07/01") & Date <= as.Date("2010/06/30"))
r2_MAR <- MAR %>% filter(Date >= as.Date("2008/07/01") & Date <= as.Date("2010/06/30"))
r2_SAFM <- SAFM %>% filter(Date >= as.Date("2008/07/01") & Date <= as.Date("2010/06/30"))
r2_NEM <- NEM %>% filter(Date >= as.Date("2008/07/01") & Date <= as.Date("2010/06/30"))
r2_XOM <- XOM %>% filter(Date >= as.Date("2008/07/01") & Date <= as.Date("2010/06/30"))

#combining all tables

r2_S_P <- rename(r2_S_P, S_P = Close) %>% 
  select(Date, S_P)
r2_AAPL <- rename(r2_AAPL, AAPL = Close) %>% 
  select(Date, AAPL)
r2_MAR <- rename(r2_MAR, MAR = Close) %>% 
  select(Date, MAR)
r2_SAFM <- rename(r2_SAFM, SAFM = Close) %>% 
  select(Date, SAFM)
r2_NEM <- rename(r2_NEM, NEM = Close) %>% 
  select(Date, NEM)
r2_XOM <- rename(r2_XOM, XOM = Close) %>% 
  select(Date, XOM)

clean6 <- inner_join(r2_S_P, r2_AAPL, by = "Date")
clean7 <- inner_join(clean6, r2_MAR, by = "Date")
clean8 <- inner_join(clean7, r2_SAFM, by = "Date")
clean9 <- inner_join(clean8, r2_NEM, by = "Date")
clean10 <- inner_join(clean9, r2_XOM, by = "Date")

#creating model

model2 <- lm(S_P ~ AAPL + MAR + SAFM + NEM + XOM , data = clean10)

# Recession 3: COVID

r3_S_P <- S_P %>% filter(Date >= as.Date("2020/01/01") & Date <= as.Date("2021/09/30"))
r3_AAPL <- AAPL %>% filter(Date >= as.Date("2020/01/01") & Date <= as.Date("2021/09/30"))
r3_MAR <- MAR %>% filter(Date >= as.Date("2020/01/01") & Date <= as.Date("2021/09/30"))
r3_SAFM <- SAFM %>% filter(Date >= as.Date("2020/01/01") & Date <= as.Date("2021/09/30"))
r3_NEM <- NEM %>% filter(Date >= as.Date("2020/01/01") & Date <= as.Date("2021/09/30"))
r3_XOM <- XOM %>% filter(Date >= as.Date("2020/01/01") & Date <= as.Date("2021/09/30"))

#combining all tables

r3_S_P <- rename(r3_S_P, S_P = Close) %>% 
  select(Date, S_P)
r3_AAPL <- rename(r3_AAPL, AAPL = Close) %>% 
  select(Date, AAPL)
r3_MAR <- rename(r3_MAR, MAR = Close) %>% 
  select(Date, MAR)
r3_SAFM <- rename(r3_SAFM, SAFM = Close) %>% 
  select(Date, SAFM)
r3_NEM <- rename(r3_NEM, NEM = Close) %>% 
  select(Date, NEM)
r3_XOM <- rename(r3_XOM, XOM = Close) %>% 
  select(Date, XOM)

clean11 <- inner_join(r3_S_P, r3_AAPL, by = "Date")
clean12 <- inner_join(clean11, r3_MAR, by = "Date")
clean13 <- inner_join(clean12, r3_SAFM, by = "Date")
clean14 <- inner_join(clean13, r3_NEM, by = "Date")
clean15 <- inner_join(clean14, r3_XOM, by = "Date")

#creating model

model3 <- lm(S_P ~ AAPL + MAR + SAFM + NEM + XOM , data = clean15)


# Predicting model

p_S_P <- S_P %>% filter(Date >= as.Date("2021/04/01") & Date <= as.Date("2022/04/01"))
p_AAPL <- AAPL %>% filter(Date >= as.Date("2021/04/01") & Date <= as.Date("2022/04/01"))
p_MAR <- MAR %>% filter(Date >= as.Date("2021/04/01") & Date <= as.Date("2022/04/01"))
p_SAFM <- SAFM %>% filter(Date >= as.Date("2021/04/01") & Date <= as.Date("2022/04/01"))
p_NEM <- NEM %>% filter(Date >= as.Date("2021/04/01") & Date <= as.Date("2022/04/01"))
p_XOM <- XOM %>% filter(Date >= as.Date("2021/04/01") & Date <= as.Date("2022/04/01"))

#combining all tables

p_S_P <- rename(p_S_P, S_P = Close) %>% 
  select(Date, S_P)
p_AAPL <- rename(p_AAPL, AAPL = Close) %>% 
  select(Date, AAPL)
p_MAR <- rename(p_MAR, MAR = Close) %>% 
  select(Date, MAR)
p_SAFM <- rename(p_SAFM, SAFM = Close) %>% 
  select(Date, SAFM)
p_NEM <- rename(p_NEM, NEM = Close) %>% 
  select(Date, NEM)
p_XOM <- rename(p_XOM, XOM = Close) %>% 
  select(Date, XOM)

clean16 <- inner_join(p_S_P, p_AAPL, by = "Date")
clean17 <- inner_join(clean16, p_MAR, by = "Date")
clean18 <- inner_join(clean17, p_SAFM, by = "Date")
clean19 <- inner_join(clean18, p_NEM, by = "Date")
clean20 <- inner_join(clean19, p_XOM, by = "Date")

#creating model

model4 <- lm(S_P ~ AAPL + MAR + SAFM + NEM + XOM , data = clean20)
model5 <- lm(S_P ~ MAR + NEM + XOM , data = clean20)
model6 <- lm(S_P ~ AAPL + MAR + NEM + XOM , data = clean20)
model7 <- lm(S_P ~ AAPL + MAR + NEM , data = clean20)
model8 <- lm(S_P ~ AAPL + MAR + SAFM, data = clean20)
model9 <- lm(S_P ~ AAPL + MAR + SAFM + NEM , data = clean20)
model10 <- lm(S_P ~ AAPL + MAR + SAFM + XOM , data = clean20)
model11 <- lm(S_P ~ AAPL + NEM , data = clean20)






