\name{constrained_data_frame}
\alias{constrained_data_frame}
\title{Create subclasss of \code{DataFrameConstr}}
\usage{
  constrained_data_frame(Class, columns = character(),
    exclusive = FALSE, constraints = list(),
    where = topenv(parent.frame()))
}
\arguments{
  \item{Class}{\code{character} Name of the new class.}

  \item{columns}{Named \code{character} vector. The names
  are the names of required columns; the values are the
  classes of those columns.}

  \item{exclusive}{\code{logical} If \code{TRUE}, then the
  data frame can only contain the columns in
  \code{columns}.}

  \item{constraints}{\code{list} of functions. Each
  function should take only one argument, and return
  \code{logical}.}

  \item{where}{\code{environment}. The environment in which
  to store the definition. See \code{\link{setClass}}.}
}
\value{
  Invisibly returns a constructor function for the new
  class.
}
\description{
  This function creates a class which directly extends
  \code{DataFrameConstr} with the requirement that the
  slots (\code{columns}, and \code{exclusive} take specific
  values.
}
\examples{
foo <- constrained_data_frame("foo", columns=c(a="numeric"))
foo(data.frame(a=1:10))
}
