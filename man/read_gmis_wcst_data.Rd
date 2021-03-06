% Generated by roxygen2 (4.0.2): do not edit by hand
\name{read_gmis_wcst_data}
\alias{read_gmis_wcst_data}
\title{This function downloads the list and the caracteristics of the GMIS data}
\usage{
read_gmis_wcst_data(resolution = "4km",
  gmis_wcst_url = paste("http://gmis.jrc.ec.europa.eu/webservices/",
  resolution, "/wcs-t", sep = ""))
}
\arguments{
\item{resolution}{A character vector giving the spatial resolution of the data: "4km" or "9km"}

\item{gmis_wcst_url}{A character vector of the GMIS wcs-t url}
}
\value{
A dataframe with 8 columns
    \item{source:}{The data source}
    \item{resolution:}{Spatial resolution of the data (pixel size)}
    \item{name:}{Name of the parameters}
    \item{shortname:}{Shortname of the parameters used in the wcs-t service}
    \item{unit:}{unit}
    \item{bbox:}{Geographical bounding box (xmin,ymin,xmax,ymax)}
    \item{startdate:}{Starting date of the time series}
    \item{enddate:}{End date of the time series}
}
\description{
This function parse the xml file related to the wcs-t service of GMIS
and generate a dataframe with the description of the data
}
\examples{
\dontrun{
data_gmis_4km<-read_gmis_wcst_data(resolution="4km",gmis_wcst_url="http://gmis.jrc.ec.europa.eu/webservices/4km/wcs-t")
data_gmis_9km<-read_gmis_wcst_data(resolution="9km",gmis_wcst_url="http://gmis.jrc.ec.europa.eu/webservices/9km/wcs-t")
  }
}
\keyword{GMIS,}
\keyword{wcs-t}

