---
title: Blog
layout: default
---

# Blog

{% for post in site.categories.tech %}
- `{{ post.date | date: "%Y-%m-%d" }}` - [{{ post.title }}]({{ post.url }}) {% endfor %}

[Home](/index.html)