% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compute_dispro.R
\name{compute_dispro}
\alias{compute_dispro}
\title{Compute disproportionality}
\usage{
compute_dispro(
  .data,
  y,
  x,
  alpha = 0.05,
  na_format = "-",
  dig = 2,
  export_raw_values = FALSE,
  min_n_obs = 0
)
}
\arguments{
\item{.data}{The data.table to compute from.}

\item{y}{A character vector, one or more variable to explain (usually an adr).}

\item{x}{A character vector, one or more explaining variable (usually a drug).}

\item{alpha}{Alpha risk.}

\item{na_format}{Character string to fill NA values in ror and ci legends.}

\item{dig}{Number of digits for rounding (this argument is passed to \code{cff})}

\item{export_raw_values}{A logical. Should the raw values be exported?}

\item{min_n_obs}{A numeric, compute disproportionality only for pairs
with at least \code{min_n_obs} cases.}
}
\value{
A data.table, with ROR, IC, and their
confidence/credibility interval (at \code{1 - alpha}).
Significance of both (as \code{signif_or} and \code{signif_ic}, if \code{export_raw_values} is TRUE).

A data.table with columns
\itemize{
\item \code{y} and \code{x}, same as input
\item \code{n_obs} the number of observed cases
\item \code{n_exp} the number of expected cases
\item \code{orl} the formatted Odds-Ratio
\item \code{or_ci} the formatted confidence interval
\item \code{ic} the Information Component
\item \code{ic_tail} the tail probability of the IC
\item \code{ci_level} the confidence interval level
\item Additional columns, if \code{export_raw_values} is \code{TRUE}:
\item \code{a}, \code{b}, \code{c}, \code{d} the counts in the contingency table
\item \code{std_er} the standard error of the log(OR)
\item \code{or} the Odds-Ratio
\item \code{low_ci} the lower bound of the confidence interval
\item \code{up_ci} the upper bound of the confidence interval
\item \code{signif_or} the significance of the Odds-Ratio
\item \code{signif_ic} the significance of the Information Component
}
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#stable}{\figure{lifecycle-stable.svg}{options: alt='[Stable]'}}}{\strong{[Stable]}} Computes
bivariate (reporting) Odds-Ratio and Information Component for a drug-adr pair.
}
\details{
Significance in pharmacovigilance
analysis is only defined if the lower bound of the confidence/credibility
interval is above 1 (i.e. \code{low_ci > 1}, or \code{ic_tail > 0}).
Actually, the function computes an Odds-Ratio,
which is not necessarily a \strong{reporting} Odds-Ratio.
}
\examples{
# Say you want to perform a disproportionality analysis between colitis and
# nivolumab among ICI cases

demo <-
  demo_ |>
  add_drug(
    d_code = ex_$d_drecno,
    drug_data = drug_
  ) |>
  add_adr(
    a_code = ex_$a_llt,
    adr_data = adr_
  )

demo |>
  compute_dispro(
    y = "a_colitis",
    x = "nivolumab"
  )

# You don't have to use the pipe syntax, if you're not familiar

compute_dispro(
    .data = demo,
    y = "a_colitis",
    x = "nivolumab"
  )


# Say you want to compute more than one univariate ror at a time.

many_drugs <-
  names(ex_$d_drecno)

demo |>
  compute_dispro(
    y = "a_colitis",
    x = many_drugs
  )


# could do the same with adrs

many_adrs <-
  names(ex_$a_llt)

demo |>
compute_dispro(
  y = many_adrs,
  x = many_drugs
)

# Export raw values if you want to built plots, or other tables.

demo |>
  compute_dispro(
    y = "a_colitis",
    x = "nivolumab",
    export_raw_values = TRUE
  )

# Set a minimum number of observed cases to compute disproportionality

demo |>
 compute_dispro(
 y = "a_colitis",
 x = "nivolumab",
 min_n_obs = 5
 )
}
\seealso{
\code{\link[=compute_or_mod]{compute_or_mod()}}, \code{\link[=add_drug]{add_drug()}}, \code{\link[=add_adr]{add_adr()}}
}
\keyword{disproportionality}
