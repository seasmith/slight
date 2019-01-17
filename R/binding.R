


# Bind (append) images horizontally -- for use with purrr::reduce()
bind_images_h <- function(x, y, p = 100, bg_color = "white") {
  x %>%
    set_padding_r(size = p, color = bg_color) %>%
    image_join(y) %>%
    image_append(stack = FALSE)
}

# Bind (append) images vertically -- for use with purrr::reduce()
bind_images_v <- function(x, y, p = 100, bg_color = "white") {
  x %>%
    set_padding_b(size = p, color = bg_color) %>%
    image_join(y) %>%
    image_append(stack = TRUE)
}
