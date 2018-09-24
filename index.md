---
title: Home
layout: default
---

# Vishal Neharkar

Fresher, Bachelor of Engineering, Went to International institute of information technology, Pune University.

- [Resume](assets/pdf/VISHAL-NEHARKAR.pdf) (pdf)
- [GitHub](https://github.com/neharkarvishal)
- [LinkedIn](https://www.linkedin.com/in/neharkar)
- [Twitter](https://twitter.com/)


## Blog

[All posts](/blog/)
{% for post in site.categories.tech limit: 3 %}
- `{{ post.date | date: "%Y-%m-%d" }}` - [{{ post.title }}]({{ post.url }}) {% endfor %}

## Projects

- [neharkar.ml](https://neharkarvishal.github.io), personal blog and website built with Jekyll/Gitpages.
- [\#mysite](https://github.com/neharkarvishal/mysite), template WebApp for building blog, made using Django/Python.
- [CalculatorDroid](https://github.com/neharkarvishal/CalculatorDroid), android application for basic arithmetic calculations.
- [Hash_tables_for_C](https://github.com/neharkarvishal/hash_tables_in_C), implementation of Hash tables for C.
- [Contrast-Ratio](https://neharkarvishal.github.io/contrast-ratio), tool to calculate contrast ratio between any two CSS colors.
- [bareboneOS](https://github.com/neharkarvishal/OS-from-scratch-tutorial), Very simple bootloader-based operating system.
