% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/authenticate.R
\name{jamendoOAuth}
\alias{jamendoOAuth}
\title{Create OAuth token to access jamendo web API}
\usage{
jamendoOAuth(
  app_name,
  client_id = Sys.getenv("JAMENDO_CLIENT_ID"),
  client_secret = Sys.getenv("JAMENDO_CLIENT_SECRET")
)
}
\arguments{
\item{app_name}{App name (this is an internal identification for token if you wish to save authorization)}

\item{client_id}{Defaults to System Environment variable "JAMENDO_CLIENT_ID"}

\item{client_secret}{Defaults to System Environment variable "JAMENDO_CLIENT_SECRET"}
}
\value{
Returns an OAuth access token as environment
}
\description{
\code{jamendoOAuth} creates a long-lived OAuth access token that enables R to make
authenticated calls to the Jamendo API. The token can be saved as a
file in disk to be re-used in future sessions. This function relies on the
\code{httr} package to create the OAuth token
}
\examples{
\donttest{
## Example
 app_name = ""
 if(app_name != "") {
  my_oauth <- jamendoOAuth(app_name=app_name)
  filedir <- tempdir()
  save(my_oauth, file=file.path(filedir, "my_oauth"))
 }
}


}
