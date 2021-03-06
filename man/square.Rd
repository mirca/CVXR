% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exports.R
\docType{methods}
\name{square}
\alias{square}
\title{Square Function}
\usage{
square(x)
}
\arguments{
\item{x}{An \linkS4class{Expression}, vector, or matrix.}
}
\value{
An \linkS4class{Expression} representing the square of the input.
}
\description{
The elementwise square function. This is equivalent to \code{power(x,2)}.
}
\examples{
m <- 30
n <- 20
A <- matrix(stats::rnorm(m*n), nrow = m, ncol = n)
b <- matrix(stats::rnorm(m), nrow = m, ncol = 1)

x <- Variable(n)
obj <- Minimize(sum(square(A \%*\% x - b)))
constr <- list(0 <= x, x <= 1)
prob <- Problem(obj, constr)
result <- solve(prob)
result$value
result$getValue(x)
}
