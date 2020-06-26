
rmarkdown::render("steakArticleParams.Rmd",
                  params = list(region = "Mountain"))


render_report <-function(regionvar){
  template <-"steakArticleParams.Rmd"
  outfile <-sprintf("steakArticle_%s.html",regionvar)
  parameters <-list(region = regionvar)
  rmarkdown::render(template,
                    output_file=outfile,
                    params=parameters)
  invisible(TRUE)
}

render_report("Pacific")