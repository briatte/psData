#' psData package
#'
#' This (draft) package defines two S4 classes:
#'
#' \enumerate{
#' \item `psData`: a \code{data.frame} with design attributes, and optionally, 
#' column/variable protections and bibliographic metadata.
#' \item `HomogList`: a list in which all elements must be the same class,
#' used internally to store the data settings.
#' }
#'
#' The code was forked from the \code{DataFrameConstr} package, from
#' which the \code{HomogList} class is also taken: see the initial code by
#' Jeffrey Arnold at \url{https://github.com/jrnold/DataFrameConstr}.
#'

#' 
#' @name psData
#' @docType package
NULL

setGeneric("colnames<-")
setGeneric("rownames<-")
