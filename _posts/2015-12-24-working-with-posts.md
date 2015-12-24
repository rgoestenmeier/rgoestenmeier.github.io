---
title: Working with Posts
layout: post
featured: /assets/images/box.png
image: 	/assets/images/box.png
---

# Access all posts
~~~
    {% for post in site.posts %}
    	div class="col-md-4 col-sm-6 portfolio-item">
    		<h4>{{ post.title }}</h4>
    		<p class="text-muted">{{ post.subtitle }}</p>
    		</div>
    {% endfor %}
~~~

# Access all page tags
~~~
{% for tag in page.tags %}
<li>
    <a href="{{ '/tags' | prepend: site.baseurl | prepend: site.url }}#{{ tag }}"><span class="octicon octicon-tag"></span>&nbsp;{{ tag }}</a>
</li>
{% endfor %}                    
~~~  


# Display an index of posts
<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>