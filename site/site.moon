require "sitegen"
site = sitegen.create_site =>
  @title = "Hello World"
  deploy_to "leaf@leafo.net", "www/aroma/"

  add "index.md"
  add "reference.moon"

site\write!
