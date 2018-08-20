# Download lapse study data from https://www.soa.org/experience-studies/2014/research-2014-post-level-shock/.
# Extract pivot table data into CSV file.
library(dplyr)
library(readr)

lapse_study <- read_csv("internal/lapse-data-2014-study.csv", col_types = cols(
  LAPSE_STUDY_YEAR = col_character(),
  DURATION = col_character(),
  GENDER = col_character(),
  TERM_PERIOD = col_integer(),
  ISSUE_YEAR_GROUP = col_character(),
  ISSUE_AGE_GROUP = col_character(),
  FACE_AMOUNT_BAND = col_character(),
  POST_LEVEL_PREMIUM_STRUCTURE = col_character(),
  PREM_JUMP_D11_D10 = col_character(),
  RISK_CLASS = col_character(),
  PREMIUM_MODE = col_character(),
  EXPOSURE_AMT = col_double(),
  EXPOSURE_CNT = col_double(),
  LAPSE_AMT = col_double(),
  LAPSE_CNT = col_double()
)) %>%
  select(-TERM_PERIOD) %>%
  rename(
    lapse_study_year = LAPSE_STUDY_YEAR,
    duration = DURATION,
    gender = GENDER,
    issue_year = ISSUE_YEAR_GROUP,
    issue_age = ISSUE_AGE_GROUP,
    face_amount = FACE_AMOUNT_BAND,
    post_level_premium_structure = POST_LEVEL_PREMIUM_STRUCTURE,
    premium_jump_ratio = PREM_JUMP_D11_D10,
    risk_class = RISK_CLASS,
    premium_mode = PREMIUM_MODE,
    exposure_amount = EXPOSURE_AMT,
    exposure_count = EXPOSURE_CNT,
    lapse_amount = LAPSE_AMT,
    lapse_count = LAPSE_CNT
  ) %>%
  mutate(policy_year = lapse_study_year %>%
           substr(1, 4) %>%
           as.integer())

usethis::use_data(lapse_study, overwrite = TRUE)
