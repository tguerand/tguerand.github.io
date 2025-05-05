# Makefile for building Quarto blog posts and wrapping with Jekyll front matter

QUARTO_SRC_DIR := quarto
POSTS_DIR := _posts

# Render all .qmd files in the 'quarto' folder
render:
	@echo "🔄 Rendering Quarto blog posts..."
	quarto render $(QUARTO_SRC_DIR)

# Add Jekyll front matter to each HTML post
wrap:
	@echo "📦 Wrapping HTML posts with front matter..."
	@bash wrap_quarto_html_posts.sh

# Full build pipeline
blog: render wrap
	@echo "✅ Blog posts ready for Jekyll"
