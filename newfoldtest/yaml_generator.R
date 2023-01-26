library("ymlthis")

yml_empty() %>%
  yml_site_opts(
    name = "my-website",
    output_dir =  "_site",
    exclude = c("docs.txt", "*.csv", "newfoldtest"),
    include = "_navbar.html"
  ) %>%
  yml_navbar(
    title = "NULL",
    left = list(
      navbar_page("Home", href = "index.html", favicon = "fa-home"),
      navbar_page(navbar_separator(), href = "about.html")
    )
  ) %>%
  yml_output(html_document(toc = TRUE, highlight = "textmate", 
                           theme="flatly"))


navbar_separator()
