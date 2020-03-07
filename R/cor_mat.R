#' A cor_mat function
#'
#' This function allows you to create a correlation matrix for all numeric variables in the data for the year.
#' @name cor_mat
#' @usage cor_mat()
#' @param x An individual year
#' @keywords Year, correlation matrix
#' @export
#' @examples
#' cor_mat(1950)
#' @import tidyverse
#' @importFrom magrittr "%>%"


library(tidyverse)
library(tidyr)
load(file = "data/NBA.Rdata")

cor_mat <- function(x){
  y3 <- NBA %>% select_if(is.numeric) %>% filter(Year == x)
  cor(y3)
}

