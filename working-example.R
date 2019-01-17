

top_text <- letters[1:7]

d %>%
  # make seven plots in a list
  make_list_of_plots() %>%
  # layout plots into 3x3 layout; fill in the empty spots at the beginning
  # rather than at the end. Specifying c(1, 2) means first two spots will be
  # blank,  whereas c(1, 4) would produce the blank areas at the beginning of
  # the first and second row.
  #
  # Also gives a padding of
  arrange_images(ncol = 3, nrow = 3, fill = TRUE, where = c(1, 2),
                 padding = c(10, 20), border = NULL) %>%
  # set_top_text() and set_bottom_text() and others must be S3 to handle arranged
  # images as well as singular images.
  set_top_text(top_text)
  bind_images() %>%
  set_top_text("Title of the chart") %>%
  set_bottom_text("This goes at the top")