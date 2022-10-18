wk_post %>%
  mutate(Icon = case_when(
    str_detect(`Icon`, "calendar") ~ '<img src="/logos/calendar-clock.png" alt="Calendar clock icon" width="27">',
    str_detect(`Icon`, "dc") ~ '<img src="/logos/dc-ico.png" alt="DataCamp icon" width="24">',
    str_detect(`Icon`, "ecampus") ~ '<img src="/logos/wvu-gold-ico.png" alt="WVU icon" width="26">',
    str_detect(`Icon`, "library") ~ '<img src="/logos/library-ico.png" alt="Library icon" width="25">',
    str_detect(`Icon`, "offsite") ~ '<img src="/logos/web-ico.png" alt="Web icon" width="26">',
    str_detect(`Icon`, "pdf") ~ '<img src="/logos/pdf-ico.png" alt="PDF icon" width="32">',
    str_detect(`Icon`, "R") ~ '<img src="/logos/Rscript-ico.png" alt="R icon" width="27">',
    str_detect(`Icon`, "qualtrics") ~ '<img src="/logos/qualtrics-ico.png" alt="Qualtrics icon" width="29">',
    str_detect(`Icon`, "slack") ~ '<img src="/logos/slack-ico.png" alt="Slack icon" width="25">',
    str_detect(`Icon`, "slideshow") ~ '<img src="/logos/slideshow-ico.png" alt="Slideshow icon" width="26">',
    str_detect(`Icon`, "survey") ~ '<img src="/logos/survey-ico.png" alt="Survey icon" width="27">',
    str_detect(`Icon`, "youtube") ~ '<img src="/logos/youtube-ico.png" alt="YouTube icon" width="28">',
    str_detect(`Icon`, "walkthrough") ~ '<img src="/logos/walkthrough-ico.png" alt="Walkthrough icon" width="26">',
    str_detect(`Icon`, "webpage") ~ '<img src="/logos/webpage-ico.png" alt="Webpage icon" width="27">',
    TRUE ~ NA_character_
    )
  ) %>%
  mutate(Site = na_if(Site, "")) %>%
  mutate(Link = case_when(
    !is.na(Icon) ~ paste0("<a href=",Site," target='_blank'>",Icon,"</a>"),
    TRUE ~ NA_character_
    )
  ) %>% 
  mutate(Link = case_when(
    str_detect(Link, "<a href=NA target='_blank'>|</a>") ~ str_remove_all(Link, "<a href=NA target='_blank'>|</a>")
    )
  ) %>%
  select(-Icon, -Site) %>%
  add_row() %>%
  mutate_all(~replace(., is.na(.), "")) %>%
  kbl("html",
      escape = FALSE,
      align = 'lcc',
      col.names = c("Description", "Details[note]", "Type[note]")) %>%
  kable_paper(full_width = FALSE) %>%
  column_spec(1, width = "25em", color = "#ffffff", extra_css = 'vertical-align: middle !important;') %>%
  column_spec(2:3, width = "5em", color = "#ffffff", extra_css = 'vertical-align: middle !important;') %>%
  row_spec(0:nrow(wk_post), extra_css = 'vertical-align: middle !important;', background = "transparent", color = "#f7f7f7") %>%
  add_footnote(c("contains active links",
                 "icons may contain active links"),
               notation = "number")
