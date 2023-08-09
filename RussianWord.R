

# load source
source("config.R")

############################################
###  Google Search Trends: 52 Weeks      ###
############################################

# Time: 3/21/21- 3/13/22 (22 weeks)

# load data 
keywords <- fread("data/keywords_all.csv")


#----------------------1. war-related keyword search
ggplot(keywords, 
       aes(week_number)) + 
  geom_line(aes(y = War, 
                colour = "War (война)")) + 
  geom_line(aes(y = Nuclear, 
                colour = "Nuclear (ядерный)")) + 
  geom_line(aes(y = Z, 
                colour = "Z (Z)")) + 
  geom_line(aes(y = Invasion, 
                colour = "Invasion (вторжение)")) + 
  geom_line(aes(y = Soldiers, 
                colour = "Soldiers (солдаты)")) +
  geom_line(aes(y = Sons, 
                colour = "Sons (сыновья)")) +
  scale_color_manual(
    # specify legend title
    name = "War-Related Keywords",
    # specify each line color
    values = c("War (война)" = "#b5c3db",
               "Nuclear (ядерный)" = "#7c9dad",
               "Z (Z)" = "#63b5cc",
               "Invasion (вторжение)" = "#315b94",
               "Soldiers (солдаты)" = "#e17b83",
               "Sons (сыновья)" = "#df9ca4")) + 
  xlab("Week") + 
  ylab("Google Search Trends") + 
  theme

#018DE9
#DB0D20
#----------------------2. Money-related keyword search
ggplot(keywords, 
       aes(week_number)) + 
  geom_line(aes(y = Inflation, 
                colour = "Inflation (инфляция)")) + 
  geom_line(aes(y = Bank, 
                colour = "Bank (банк)")) + 
  geom_line(aes(y = Money, 
                colour = "Money (Деньги)")) + 
  geom_line(aes(y = ExchangeRate, 
                colour = "Exchange Rate (обменный курс)")) +
  geom_line(aes(y = Rouble, 
                colour = "Rouble (рубль)")) +
  xlab("Week") + 
  ylab("Google Search Trends") + 
  scale_color_manual(
    # specify legend title
    name = "Money-Related Keywords",
    # specify each line color
    values = c("Inflation (инфляция)" = "#e17b83",
               "Bank (банк)" = "#7c9dad",
               "Money (Деньги)" = "#63b5cc",
               "Exchange Rate (обменный курс)" = "#315b94",
               "Rouble (рубль)" = "#b5c3db")) + 
  theme

#----------------------3. Politics-related keyword search
ggplot(keywords, 
       aes(week_number)) + 
  geom_line(aes(y = Putin, 
                colour = "Putin (Путин)")) + 
  geom_line(aes(y = Nazi, 
                colour = "Nazi (нацист)")) + 
  geom_line(aes(y = MartialLaw, 
                colour = "Martial Law (военное положение)")) + 
  geom_line(aes(y = Sanction, 
                colour = "Sanction (санкция)")) +
  geom_line(aes(y = McDonalds, 
                colour = "McDonalds (Макдоналдс)")) +
  xlab("Week") + 
  ylab("Google Search Trends") + 
  scale_color_manual(
    # specify legend title
    name = "Politics-Related Keywords",
    # specify each line color
    values = c("Putin (Путин)" = "#b5c3db",
               "Nazi (нацист)" = "#7c9dad",
               "Martial Law (военное положение)" = "#63b5cc",
               "Sanction (санкция)" = "#315b94",
               "McDonalds (Макдоналдс)" =  "#e17b83")) + 
  theme

#----------------------4. Immigration-related keyword search
ggplot(keywords, 
       aes(week_number)) + 
  geom_line(aes(y = Flights, 
                colour = "Flights (полеты)")) + 
  geom_line(aes(y = Visa, 
                colour = "Visa (виза)")) + 
  geom_line(aes(y = Immigrate, 
                colour = "Immigrate (иммигрировать)")) + 
  geom_line(aes(y = Emmigration, 
                colour = "Emmigration (эмиграция)")) +
  geom_line(aes(y = Gas, 
                colour = "Gas (газ)")) +
  geom_line(aes(y = PoliticalAsylum, 
                colour = "Political Asylum (политическое убежище)")) +
  xlab("Week") + 
  ylab("Google Search Trends") + 
  scale_color_manual(
    # specify legend title
    name = "Immigration-Related Keywords",
    # specify each line color
    values = c("Flights (полеты)" = "#b5c3db",
               "Visa (виза)" = "#7c9dad",
               "Immigrate (иммигрировать)" = "#e17b83",
               "Emmigration (эмиграция)" = "#df9ca4",
               "Gas (газ)" =  "#63b5cc",
               "Political Asylum (политическое убежище)" =  "#315b94" )) + 
  theme


#----------------------5. Speech-related keyword search
ggplot(keywords, 
       aes(week_number)) + 
  geom_line(aes(y = News, 
                colour = "News (Новости)")) + 
  geom_line(aes(y = Propaganda, 
                colour = "Propaganda (пропаганда)")) + 
  geom_line(aes(y = Censor, 
                colour = "Censor (цензор)")) + 
  geom_line(aes(y = Liar, 
                colour = "Liar (лжец)")) +
  geom_line(aes(y = Facebook, 
                colour = "Facebook (Facebook)")) +
  geom_line(aes(y = Twitter, 
                colour = "Twitter (Twitter)")) +
  xlab("Week") + 
  ylab("Google Search Trends") + 
  scale_color_manual(
    # specify legend title
    name = "Speech-Related Keywords",
    # specify each line color
    values = c("News (Новости)" = "#b5c3db",
               "Propaganda (пропаганда)" = "#7c9dad",
               "Censor (цензор)" = "#e17b83",
               "Liar (лжец)" = "#df9ca4",
               "Facebook (Facebook)" =  "#63b5cc",
               "Twitter (Twitter)" =  "#315b94" )) + 
  theme


#----------------------6. Country/City-related keyword search
ggplot(keywords, 
       aes(week_number)) + 
  geom_line(aes(y = Ukraine, 
                colour = "Ukraine (Украина)")) + 
  geom_line(aes(y = Russia, 
                colour = "Russia (Россия)")) + 
  geom_line(aes(y = China, 
                colour = "China (Китай)")) + 
  geom_line(aes(y = Belgrade, 
                colour = "Belgrade (Белград)")) +
  geom_line(aes(y = Yerevan, 
                colour = "Yerevan (Ереван)")) +
  xlab("Week") + 
  ylab("Google Search Trends") + 
  scale_color_manual(
    # specify legend title
    name = "Country/City-Related Keywords",
    # specify each line color
    values = c("Ukraine (Украина)" = "#b5c3db",
               "Russia (Россия)" = "#7c9dad",
               "China (Китай)" = "#e17b83",
               "Belgrade (Белград)" = "#315b94",
               "Yerevan (Ереван)" = "#63b5cc")) + 
  theme
