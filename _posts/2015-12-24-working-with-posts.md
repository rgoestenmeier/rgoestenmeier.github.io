---
title: Working with Posts
layout: post
featured: /assets/images/box.png
image: 	/assets/images/box.png
---

## Access all posts
    {% for post in site.posts %}
    	div class="col-md-4 col-sm-6 portfolio-item">
    		<h4>{{ post.title }}</h4>
    		<p class="text-muted">{{ post.subtitle }}</p>
    		</div>
    {% endfor %}

    