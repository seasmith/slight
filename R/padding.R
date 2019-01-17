# Pads an image with whitespace on the right-hand side
set_padding_r <- function(i, size = 100, color = color) {
  i %>%
    image_join(
      image_blank(size, image_info(.)$height, color = color)
    ) %>%
    image_append(stack = FALSE)
}

# Pads an image with whitespace on the left-hand side
set_padding_b <- function(i, size = 100, color = color) {
  i %>%
    image_join(
      image_blank(image_info(.)$width, size, color = color)
    ) %>%
    image_append(stack = TRUE)
}
