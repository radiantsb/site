---
layout: layout.html
---
such an amazing website ikr
{% for post in collections.post %}
## [{{post.data.title}}]({{ post.url }})
{{post.data.quote}}
{% endfor %}
