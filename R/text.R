set_top_text <- function(x, ...) {
  UseMethod("set_top_text", x)
}

set_bottom_text <- function(x, ...) {
  UseMethod("set_bottom_text", x)
}



#' Creates title-like text at the top of an image.
#'
#' @param height Height of the text image given in pixels (numeric) or percent
#'   (character).
`set_top_text.magick-image` <- function(i, text, gravity = "northwest",
                                        location = "0+0", degrees = 0,
                                        height = 10, size = 10, font = "",
                                        color = NULL, bg_color = "none",
                                        strokecolor = NULL, boxcolor = NULL) {

  # What if height is zero?
  i %>%
    image_join(
      image_blank(image_info(.)$width, height = height, color = bg_color) %>%
        image_annotate(text = text, gravity = gravity, location = location,
                       degrees = degrees, size = size, font = font, color = color,
                       strokecolor = strokecolor, boxcolor = boxcolor)
      , .
    ) %>%
    image_append(stack = TRUE)
}

#' Creates title-like text at the bottom of an image.
`set_bottom_text.magick-image` <- function(i, text, gravity = "northwest",
                                           location = "0+0", degrees = 0,
                                           height = 10, size = 10, font = "",
                                           color = NULL, bg_color = "none",
                                           strokecolor = NULL, boxcolor = NULL) {
  i %>%
    image_join(
      .,
      image_blank(image_info(.)$width, height = height, color = bg_color) %>%
        image_annotate(text = text, gravity = gravity, location = location,
                       degrees = degrees, size = size, font = font, color = color,
                       strokecolor = strokecolor, boxcolor = boxcolor)
    ) %>%
    image_append(stack = TRUE)
}