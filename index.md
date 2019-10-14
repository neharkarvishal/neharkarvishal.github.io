---
title: Home
layout: default
---

# Vishal Neharkar

Tech nerd, fullstack developer, Functional reactive programming enthusiast, Bachelor of Engineering, Went to International institute of information technology, Pune.

- [Resume](assets/pdf/VISHAL-NEHARKAR.pdf) (pdf)
- [GitHub](https://github.com/neharkarvishal)
- [LinkedIn](https://www.linkedin.com/in/neharkar)
- [Twitter](https://twitter.com/)


## Blog

[All posts](/blog/)
{% for post in site.categories.tech limit: 3 %}
- `{{ post.date | date: "%Y-%m-%d" }}` - [{{ post.title }}]({{ post.url }}) {% endfor %}

## Projects

- [neharkar.ml](https://neharkarvishal.github.io), personal blog and website built with Jekyll and Travis for CI/CD, deployment workflow.
- [Moviehub monorepo](https://github.com/neharkarvishal/moviehub-monorepo), digital guide, movie db build with React and Cloudflare Workers.
- [bareboneOS](https://github.com/neharkarvishal/OS-from-scratch-tutorial), a very simple bootloader.
