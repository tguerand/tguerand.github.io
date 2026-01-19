---
layout: default
title: Blog
description: Blog posts about cryptography, machine learning, and research
---

# Blog

Welcome to my blog. Below are my latest posts on cryptography, machine learning, and research.

<div class="blog-posts">
  {% for post in site.posts %}
    <article class="blog-post-item">
      <h2 class="blog-post-title">
        <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
      </h2>
      <div class="blog-post-meta">
        <time datetime="{{ post.date | date: '%Y-%m-%d' }}">{{ post.date | date: "%B %d, %Y" }}</time>
        {% if post.tags %}
          <span class="blog-post-tags">
            {% for tag in post.tags %}
              <span class="tag">{{ tag }}</span>
            {% endfor %}
          </span>
        {% endif %}
      </div>
      {% if post.excerpt %}
        <div class="blog-post-excerpt">
          {{ post.excerpt }}
        </div>
      {% endif %}
      <a href="{{ post.url | relative_url }}" class="btn btn-read-more">Read more →</a>
    </article>
  {% endfor %}
</div>

{% if site.posts.size == 0 %}
  <p>No blog posts yet. Check back soon!</p>
{% endif %}
