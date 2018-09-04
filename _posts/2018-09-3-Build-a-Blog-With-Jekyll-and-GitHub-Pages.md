---
title: Build a Blog With Jekyll and GitHub Pages
date: 2018-09-1 00:00:00 +05:30
categories:
- tech
tags:
- Blog
- Jekyll
layout: post
---

This article outlines how to set up a blog, and host any static website, Jekyll and GitHub Pages offer a minimalistic solution.
This article is intended for those who are unfamiliar with Jekyll. Jekyll is a simple, blog-aware,
static site generator for personal, project, or organization sites and host it online for free using GitHub pages.

## Sections

- [Getting started with Jekyll](#getting-started-with-jekyll)
- [Customizing the site](#customizing-the-site)
- [Deploying to Github Pages](#deploying-to-github-pages)

## Getting started with Jekyll

Jekyll is a simple, extendable, static site generator.
To use [Jekyll](https://jekyllrb.com/), we need [Ruby](https://www.ruby-lang.org/en/) and [RubyGems](https://rubygems.org/).
Jekyll is written in Ruby.

Install Jekyll and bundler gems:

```shell
$ gem install jekyll bundler
```

Create a new Jekyll site named `myblog`:

```shell
$ jekyll new myblog
$ cd myblog
```
Jekyll will create the following folders and files in our directory:
```shell
.
├── 404.html
├── about.md
├── _config.yml
├── Gemfile
├── Gemfile.lock
├── index.md
└── _posts
    └── 2018-09-03-welcome-to-jekyll.markdown
```

Build the site and make it available on a local server:
```shell
$ bundle exec jekyll serve --watch
```

Now browse to [http://localhost:4000](http://localhost:4000) in your browser to see your site.

## Customizing the site

By defaul the site will be styled with Minima theme which is the default theme of the Jakyll, configuration settings for
our site is stored in `_config.yml` file. `Gemfile` stores list of Gem dependencies in our project. `_post` folder will be
used for blog posts on site. `_site` will the folder where statically generated files for hosting will be stored.

### Layouts
Files in the `_layouts` directory contain templates for creating pages.
When you create a page, like `about.md`, the content that is inside will be injected into the layout where
{% raw  %} {{ content }}{% endraw %} is specified.
We can also create a layout that inherits another layout. For example, the `page.html` is based on the default layout.

Let us add another page to our site. Create a file named `projects.md`, and save it to the root of your directory. Add the following inside:

```markdown
---
layout: page
title: Projects
permalink: /projects/
---
```

This is called the front matter and tells Jekyll how to build the page. This page will use the `page.html` template from the `_includes` directory.
Where the `page.title` variable is used in the template, it will be replaced with the text "Projects".


### Includes
The templates for our header, footer, and head of our site are located in the `_includes` directory.
Includes are useful for separating sections of your pages that will be used in multiple places.
You create the template and include it in your layout or pages with {% raw  %}{% include file_name.html %}{% endraw %},
where file_name is replaced with the name of the file.

### Posts
The `_posts` folder contains our blog posts. To create a new post, create a file with the format `yyyy-mm-dd-title-of-post.md`.
For example: 2018-09-3-build-a-website.md. Add the following front matter to the file:
```markdown
---
layout: post
title:  "Build a Website"
date:   2018-09-1 00:00:00 +05:30
permalink: blog/build-a-website.html
---
```
When we refresh the browser, we will see the post added to the front page.
Unlike in the example post provided, we added an author variable and a permalink.
If a permalink had not been specified, the filename would be used as the path.
Other page variables you can specify for posts include tags and categories.

### Sass
The `_sass` directory contains the styles for the site. Sass is a CSS framework for creating stylesheets.
When your site is built, these sass files are automatically converted into CSS.

### Assets
The `assets` folder is where you will store your images, fonts, scripts, and styles.

## Deploying to Github Pages
To get started, we will need to have a github account and have git installed on our computer.
In your dashboard, click the link to create a new repository and name it username.github.io
where username is replaced with the username of your account.

From your terminal inside the root of your project, initialize git:
```shell
$ git init
```
Add all of the files:
```shell
$ git add --all
```
Save the changes:
```shell
$ git commit -m "Initial commit"
```
Set up the remote repository to push to:
```shell
$ git remote add origin https://github.com/username/repo_name.git
```
Finally, push your changes to the remote repository:
```shell
$ git push -u origin master
```

## Further Reading
- [Troubleshooting GitHub Pages Builds](https://help.github.com/articles/troubleshooting-github-pages-builds)
- [Using Jekyll as a static site generator with GitHub Pages](https://help.github.com/articles/using-jekyll-as-a-static-site-generator-with-github-pages/)
- [Jekyll's official GitHub Pages documentation](http://jekyllrb.com/docs/github-pages/)
- [Jekyll commands](http://jekyllrb.com/docs/usage/)


* * *