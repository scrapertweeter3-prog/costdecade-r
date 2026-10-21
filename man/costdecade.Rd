\name{costdecade}
\alias{costdecade}
\title{Cost per decade for a durability purchase}
\usage{
costdecade(price, life, rival_price, rival_life, horizon = 30,
  inflation_pct = 0, resale_pct = 0)
}
\arguments{
\item{price}{Price of the durable candidate.}
\item{life}{Expected lifespan in years.}
\item{rival_price}{Price of the budget alternative.}
\item{rival_life}{Expected lifespan of the alternative.}
\item{horizon}{Ownership horizon in years.}
\item{inflation_pct}{Replacement price inflation, percent.}
\item{resale_pct}{Resale value recovered at horizon, percent.}
}
\value{A list with cost per decade for both, horizon spends, the winner,
and the crossover year.}
\description{Buy-it-for-life arithmetic: rank candidates by real cost per
decade and find the lifespan where the dear option starts winning.}
\examples{
costdecade(340, 10, 120, 2, horizon = 30)
}
