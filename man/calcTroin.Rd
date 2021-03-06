% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calcTroin.R
\name{calcTroin}
\alias{calcTroin}
\alias{calctroin}
\alias{Troin}
\alias{troin}
\title{Radiative and Operative Temperature}
\usage{
calcTroin(vel, tg, ta, met)

calctroin(vel, tg, ta, met)

Troin(vel, tg, ta, met)

troin(vel, tg, ta, met)
}
\arguments{
\item{vel}{a numeric value presenting air velocity in [m/s]}

\item{tg}{a numeric value or vector presenting the globe temperature in [degree C]}

\item{ta}{a numeric value presenting air temperature in [degree C]}

\item{met}{a numeric value presenting metabolic rate in [met]}
}
\value{
\code{calcTroin} returns a data.frame with radiative and operative temperature.
}
\description{
The functions \code{calcTroin} calculates radiative and operative temperature based on air temperature, globe temperature, air velocity and metabolic rate. Globe temperature needs to be measured using a standard globe with a diameter of 0.15m and an emissivity of .95 (black coloured).
}
\details{
Calculation of the radiative temperature is based on ISO 7726:2001, equation (9). Calculation of operative temperature is based on ISO 7726:2001, Appendix G.3. The adjustment of air velocity to present relative air velocity based on metabolic rate is based on ISO 7730:2005 Appendix C.2.
}
\examples{
## Note: Due to random generated asv values. The values for the coefficients will not be meaningful.
## Create sample data
ta  <- 20:24      # vector with air temperature values
vel <- rep(.1,5)  # vector with air velocities
met <- rep(1.1,5) # vector with metabolic rates
tg <- 25:29       # vector with globe temperature values

calcTroin(vel, tg, ta, met)
}
\references{
ISO 7726 Ergonomics of the Thermal Environment, Instruments for measuring Physical Quantities Geneva: International standard Organization, 1998.

ISO 7730 Ergonomics of the thermal environment - analytical determination and interpretation of thermal comfort using calculation of the pmv and ppd indices and local thermal comfort criteria 2005.
}
\author{
Marcel Schweiker. Further contribution by Shoaib Sarwar.
}
