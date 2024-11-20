---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: default
title: My Homepage
show_sidebar: true
render_with_liquid: true
my_number: 5
---



{% if page.show_sidebar %}  <div class="sidebar">    sidebar content  </div> {% endif %}

<h1>{{ "Hello World!" | downcase }}</h1> 
{{ "hi" | capitalize }}
{{ page.my_number }}