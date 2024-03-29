% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/funs.R
\name{create_overlay}
\alias{create_overlay}
\title{Create an overlay}
\usage{
create_overlay(elementId, label, style = NULL, position = NULL)
}
\arguments{
\item{elementId}{The bpmn element id to which the overlay will be attached}

\item{label}{'HTML' element to use as an overlay}

\item{style}{The style of the overlay.
Use \code{\link{create_overlay_style}} function to create the style object of an overlay and be aware of the \code{enableDefaultOverlayStyle} parameter in the \code{\link{display}} function.}

\item{position}{The position of the overlay
If the bpmn element where the overlay will be attached is a Shape, use \code{\link{overlay_shape_position}}.
Otherwise, use \code{\link{overlay_edge_position}}.}
}
\value{
An overlay object
}
\description{
An overlay can be added to existing elements in the diagram.

See the \code{overlays} argument in the \code{\link{display}} function.

Use this function to create the correct overlay structure.
}
\examples{
# Example 1: Create an overlay with shape position "top-left"
overlay_style <- create_overlay_style(
  font_color = 'DarkSlateGray',
  font_size = 23,
  fill_color = 'MistyRose',
  stroke_color = 'Red'
)

overlay <- create_overlay(
  "my-shape-id",
  "My Overlay Label",
  style = overlay_style,
  position = overlay_shape_position[1]
)

# Example 2: Create an overlay with edge position "end"
overlay_style <- create_overlay_style(
  font_color = 'DarkSlateGray',
  font_size = 23,
  fill_color = 'MistyRose',
  stroke_color = 'Red'
)

overlay <- create_overlay(
  "my-edge-id",
  "My Overlay Label",
  style = overlay_style,
  position = overlay_edge_position[2]
)

}
