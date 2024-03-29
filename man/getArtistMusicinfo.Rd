% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/artists.R
\name{getArtistMusicinfo}
\alias{getArtistMusicinfo}
\title{Get tag list of an artist}
\usage{
getArtistMusicinfo(
  artist_id = NULL,
  artist_name = NULL,
  client_id = Sys.getenv("JAMENDO_CLIENT_ID")
)
}
\arguments{
\item{artist_id}{Artist ID to seach for}

\item{artist_name}{Artist name to seach for}

\item{client_id}{Defaults to System Environment variable "JAMENDO_CLIENT_ID"}
}
\value{
Returns a data frame which contains tag list of an artist.
See \url{https://developer.jamendo.com/v3.0/artists/musicinfo} for more information.
}
\description{
Get tag list of an artist. You can search for either an artist ID or an artist name.
}
\examples{
\donttest{
##Example
 tagsFromID <- getArtistMusicinfo(artist_id="1510")
 tagsFromName <- getArtistMusicinfo(artist_name="Judas Priestley")
}
}
