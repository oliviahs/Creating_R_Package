#' A who_good function
#'
#' This function allows you to find out the best player of the year based on his total sum of score.
#' @name who_good
#' @usage who_good()
#' @param x An individual year
#' @keywords Year, Player, PTS
#' @export
#' @examples
#' who_good(1950)
#' @import tidyverse
#' @importFrom magrittr "%>%"


library(tidyverse)
library(tidyr)
load(file = "data/NBA.Rdata")

who_good <- function(x){
  new <- NBA %>% select(Year, Player, PTS) %>% group_by(Year, Player) %>% summarise(total = sum(PTS))
  y <- new %>% group_by(Year) %>% filter(Year == x) %>% slice(which.max(total))
  y[[2]]
}
