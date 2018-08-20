#' Lapse Experience Data
#'
#' Lapse experience data associated with Society of Actuaries' Report on the Lapse
#'   and Mortality Experience of Post-Level Premium Period Term Plans (2014).
#'
#' @source Society of Actuaries,
#'  \url{https://www.soa.org/experience-studies/2014/research-2014-post-level-shock/}
#' @format Data frame with columns
#' \describe{
#' \item{lapse_study_year}{Lapse study year.}
#' \item{duration}{Duration.}
#' \item{gender}{Gender.}
#' \item{issue_year}{Issue year group.}
#' \item{issue_age}{Issue age group.}
#' \item{face_amount}{Face amount band.}
#' \item{post_level_premium_structure}{Post level premium structure.}
#' \item{premium_jump_ratio}{Premium jump ratio at the end of the level term.}
#' \item{risk_class}{Risk class.}
#' \item{premium_mode}{Premium payment mode.}
#' \item{exposure_amount}{Exposure amount.}
#' \item{exposure_count}{Exposure count.}
#' \item{lapse_amount}{Lapse amount.}
#' \item{lapse_count}{Lapse count.}
#' \item{policy_year}{Policy year; derived as the starting year in `lapse_study_year`.}
#' }
#'
#' @examples
#'   lapse_study
"lapse_study"
