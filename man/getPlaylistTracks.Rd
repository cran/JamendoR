% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/playlists.R
\name{getPlaylistTracks}
\alias{getPlaylistTracks}
\title{Get all tracks from a playlist}
\usage{
getPlaylistTracks(
  playlist_id = NULL,
  playlist_name = NULL,
  limit = 10,
  client_id = Sys.getenv("JAMENDO_CLIENT_ID")
)
}
\arguments{
\item{playlist_id}{Playlist ID to seach for}

\item{playlist_name}{Playlist name to seach for}

\item{limit}{Integer to set the number of displayed search results. Maximum value is 200.}

\item{client_id}{Defaults to System Environment variable "JAMENDO_CLIENT_ID"}
}
\value{
Returns a data frame which contains information about all tracks from a playlist.
See \url{https://developer.jamendo.com/v3.0/playlists/tracks} for more information.
}
\description{
Get all tracks from a playlist. You can search for either a playlist ID or a playlist name.
}
\examples{
\donttest{
##Example
 tracksFromID <- getPlaylistTracks(playlist_id="100268")
 tracksFromName <- getPlaylistTracks(playlist_name="Chillin")
}
}
