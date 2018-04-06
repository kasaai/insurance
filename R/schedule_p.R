#' Schedule P data
#'
#' Triangle data from Schedule P for various companies, from accident years 1988-1997.
#'   Each triangle contains 10 development lags. The lines of business included are
#'   \itemize{
#'   \item{Private passenger auto liability/medical}
#'   \item{Commercial auto/truck liability/medical}
#'   \item{Workers’ compensation}
#'   \item{Medical malpractice – claims made}
#'   \item{Other liability – occurrence}
#'   \item{Product liability – occurrence}
#'   }
#'
#' @source Casualty Actuarial Society,
#'  \url{http://www.casact.org/research/index.cfm?fa=loss_reserves_data}
#' @format Data frame with columns
#' \describe{
#' \item{lob}{Line of business.}
#' \item{group_code,group_name}{NAIC company code and company name.}
#' \item{accident_year}{Accident year.}
#' \item{development_year}{Development year.}
#' \item{calendar_year}{Calendar year.}
#' \item{development_lag}{Development lag.}
#' \item{incurred_loss}{Incurred losses and allocated expenses reported at year end.}
#' \item{cumulative_paid_loss}{Cumulative paid losses and allocated expenses at year end.}
#' \item{incremental_paid_loss}{Incremental paid loss.}
#' \item{bulk_loss}{Bulk and IBNR reserves on net losses and defense and cost
#'   containment expenses reported at year end.}
#' \item{earned_premium_direct,earned_premium_ceded,earned_premium_net}{
#'   Premiums earned at incurral year: direct and assumed, ceded, and net.}
#' \item{single}{1 indicates a single entity, 0 indicates a group insurer.}
#' \item{posted_reserve_97}{Posted reserves in year 1997 taken from the Underwriting and Investment.}
#' }
#'
#' @examples
#'   schedule_p
"schedule_p"

#' @importFrom tibble tibble
NULL
