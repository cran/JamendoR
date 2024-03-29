% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tracks.R
\name{getTrack}
\alias{getTrack}
\title{Search Jamendo database for a track}
\usage{
getTrack(
  track_id = NULL,
  track_name = NULL,
  client_id = Sys.getenv("JAMENDO_CLIENT_ID")
)
}
\arguments{
\item{track_id}{Track ID to seach for}

\item{track_name}{Track name to seach for}

\item{client_id}{Defaults to System Environment variable "JAMENDO_CLIENT_ID"}
}
\value{
Returns a data frame which contains information about a track.
See \url{https://developer.jamendo.com/v3.0/tracks} for more information.
}
\description{
Search Jamendo database for a track. You can search for either a track ID or a track name.
}
\examples{
\donttest{
##Examples
 trackID <- getTrack(track_id="114069")
 trackName <- getTrack(track_name="Deuteranopia 0")
}
}
