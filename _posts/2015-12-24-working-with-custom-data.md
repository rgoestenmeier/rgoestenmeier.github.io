---
title: Working with custom data
layout: post
image: /assets/images/bg01.png
---
# Custom date

## Add custsom data to _config.yml
# Team names, titles and social links
people:
- name: Fist Person Name
  pic: 1
  position: Lead Designer
  social:
    - title: twitter
      url: #
    - title: facebook
      url: #
    - title: stack-overflow
      url: #

- name: Second Person Name
  pic: 2
  position: Lead Marketer
  social:
    - title: twitter
      url: #
    - title: facebook
      url: #
    - title: linkedin
      url: #

## Insert data in a post
	{% for member in site.people %}
	<div class="col-sm-4">
	    <div class="team-member">
	        <img src="img/team/{{ member.pic }}.jpg" class="img-responsive img-circle" alt="">
	        <h4>{{ member.name }}</h4>
	        <p class="text-muted">{{ member.position }}</p>
	        <ul class="list-inline social-buttons">
	            {% for network in member.social %}
	            <li><a href="{{ network.url }}"><i class="fa fa-{{ network.title }}"></i></a>
	            {% endfor %}
	
	        </ul>
	    </div>
	</div>
	{% endfor %}
                