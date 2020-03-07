#' A who_old function
#'
#' This function allows you to find out the oldest player of the year.
#' @name who_old
#' @usage who_old()
#' @param x An individual year
#' @keywords Year, Player, Age
#' @export
#' @examples
#' who_old(1950)
#' @import tidyverse
#' @importFrom magrittr "%>%"


library(tidyverse)
library(tidyr)
load(file = "data/NBA.Rdata")

who_old <- function(x){
  new2 <- NBA %>% select(Year, Age, Player) %>% group_by(Year, Player)
  y2 <- new2 %>% group_by(Year) %>% arrange(Player) %>% filter(Year == x) %>% slice(which.max(Age))
  y2[[3]]
}
