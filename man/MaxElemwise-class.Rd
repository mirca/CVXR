% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elementwise.R
\docType{class}
\name{MaxElemwise-class}
\alias{MaxElemwise-class}
\alias{.MaxElemwise}
\alias{MaxElemwise}
\alias{MaxElemwise}
\alias{to_numeric,MaxElemwise-method}
\alias{sign_from_args,MaxElemwise-method}
\alias{is_atom_convex,MaxElemwise-method}
\alias{is_atom_concave,MaxElemwise-method}
\alias{is_incr,MaxElemwise-method}
\alias{is_decr,MaxElemwise-method}
\alias{is_pwl,MaxElemwise-method}
\alias{graph_implementation,MaxElemwise-method}
\title{The MaxElemwise class.}
\usage{
MaxElemwise(arg1, arg2, ...)

\S4method{to_numeric}{MaxElemwise}(object, values)

\S4method{sign_from_args}{MaxElemwise}(object)

\S4method{is_atom_convex}{MaxElemwise}(object)

\S4method{is_atom_concave}{MaxElemwise}(object)

\S4method{is_incr}{MaxElemwise}(object, idx)

\S4method{is_decr}{MaxElemwise}(object, idx)

\S4method{is_pwl}{MaxElemwise}(object)

\S4method{graph_implementation}{MaxElemwise}(object, arg_objs, size,
  data = NA_real_)
}
\arguments{
\item{arg1}{The first \linkS4class{Expression} in the maximum operation.}

\item{arg2}{The second \linkS4class{Expression} in the maximum operation.}

\item{...}{Additional \linkS4class{Expression} objects in the maximum operation.}

\item{object}{A \linkS4class{MaxElemwise} object.}

\item{values}{A list of arguments to the atom.}

\item{idx}{An index into the atom.}

\item{arg_objs}{A list of linear expressions for each argument.}

\item{size}{A vector with two elements representing the size of the resulting expression.}

\item{data}{A list of additional data required by the atom.}
}
\description{
This class represents the elementwise maximum.
}
\section{Methods (by generic)}{
\itemize{
\item \code{to_numeric}: The elementwise maximum.

\item \code{sign_from_args}: The sign of the atom.

\item \code{is_atom_convex}: The atom is convex.

\item \code{is_atom_concave}: The atom is not concave.

\item \code{is_incr}: The atom is weakly increasing.

\item \code{is_decr}: The atom is not weakly decreasing.

\item \code{is_pwl}: Are all the arguments piecewise linear?

\item \code{graph_implementation}: The graph implementation of the atom.
}}

\section{Slots}{

\describe{
\item{\code{arg1}}{The first \linkS4class{Expression} in the maximum operation.}

\item{\code{arg2}}{The second \linkS4class{Expression} in the maximum operation.}

\item{\code{...}}{Additional \linkS4class{Expression} objects in the maximum operation.}
}}

