# Inqwell Documentation


## Built with:

- [Jekyll](https://jekyllrb.com/)
- [Just-The-Docs Jekyll Theme](https://pmarsceill.github.io/just-the-docs/)

## How to contribute

- Install and configurate [Jekyll](https://jekyllrb.com/docs/)

- Study [Just-The-Docs](https://pmarsceill.github.io/just-the-docs/) on how to config install and work with.

- Comment out ```remote_theme: pmarsceill/just-the-docs``` on ```_config.yml```

- Remove comments from ```theme: just-the-docs``` on ```_config.yml```

- Run ```jekyll serve --livereload``` or if you are working with bundle ```bundle exec jekyll serve --livereload```

- When you have to deploy on github pages you need to swap back to ```remote_theme: pmarsceill/just-the-docs``` on your ```_config.yml```. It is a good idea to keep a local config for development e.g ```_config_local.yml```. You can deploy locally with local config like so: ```jekyll serve --livereload --config _config_local.yml```