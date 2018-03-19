# Copyright 2017 Meik Michalke <meik.michalke@hhu.de>
#
# This file is part of the R package sylly.en.
#
# sylly.en is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# sylly.en is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with sylly.en.  If not, see <http://www.gnu.org/licenses/>.

#' Language support for English
#' 
#' This function adds support for English to the sylly package. You should not
#' need to call it manually, as that is done automatically when this package is
#' loaded.
#' 
#' In particular, a new set of hyphenation patterns is being added (see \code{\link{hyph.en}}).
#' To use the patterns with \code{\link[sylly:hyphen]{hyphen}}, simply use the abbreviation:
#' \itemize{
#'   \item {\code{"en"}} {--- English hyphenation patterns (UK)}
#'   \item {\code{"en.us"}} {--- English hyphenation patterns (US)}
#' }
#'
#' @seealso
#'    \code{\link[sylly:hyphen]{hyphen}},
#'    \code{\link[sylly:set.hyph.support]{set.hyph.support}}
#' @importFrom sylly set.hyph.support
#' @export
hyph.support.en <- function() {
  # tell sylly where to find hyphenation patterns (see ?set.hyph.support for details)
  sylly::set.hyph.support(
    value=list(
      "en"=c("en", package="sylly.en"),
      "en.us"=c("en.us", package="sylly.en")
    )
  )
}

# this internal, non-exported function causes the language support to be
# properly added when the package gets loaded
.onAttach <- function(...) {
  hyph.support.en()
}
