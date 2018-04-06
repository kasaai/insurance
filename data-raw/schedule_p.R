library(tidyverse)

data_urls <- list(
  private_passenger_auto = "http://www.casact.org/research/reserve_data/ppauto_pos.csv",
  workers_compensation = "http://www.casact.org/research/reserve_data/wkcomp_pos.csv",
  commercial_auto = "http://www.casact.org/research/reserve_data/comauto_pos.csv",
  medical_malpractice = "http://www.casact.org/research/reserve_data/medmal_pos.csv",
  product_liability = "http://www.casact.org/research/reserve_data/prodliab_pos.csv",
  other_liability = "http://www.casact.org/research/reserve_data/othliab_pos.csv"
)

process_data <- function(x, lob) {
  x %>%
    read_csv(col_types = cols(GRCODE = col_character(),
                              AccidentYear = col_integer(),
                              DevelopmentYear = col_integer(),
                              DevelopmentLag = col_integer(),
                              Single = col_integer())) %>%
    rename(!!!set_names(names(.), map_chr(names(.), str_replace, "_.+", ""))) %>%
    rename(
      group_code = GRCODE,
      group_name = GRNAME,
      accident_year = AccidentYear,
      development_year = DevelopmentYear,
      development_lag = DevelopmentLag,
      incurred_loss = IncurLoss,
      cumulative_paid_loss = CumPaidLoss,
      bulk_loss = BulkLoss,
      earned_premium_direct = EarnedPremDIR,
      earned_premium_ceded = EarnedPremCeded,
      earned_premium_net = EarnedPremNet,
      single = Single,
      posted_reserve_97 = PostedReserve97
    ) %>%
    group_by(group_code, accident_year) %>%
    arrange(development_lag) %>%
    mutate(
      calendar_year = accident_year + development_lag - 1,
      incremental_paid_loss = cumulative_paid_loss - lag(cumulative_paid_loss, default = 0)
    ) %>%
    ungroup()
}

schedule_p <- data_urls %>%
  map_dfr(process_data, .id = "lob")

usethis::use_data(schedule_p, overwrite = TRUE)
