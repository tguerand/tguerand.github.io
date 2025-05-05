
# Tristan Guérand — Personal Website & Blog

This repository hosts my academic homepage and blog, powered by [Jekyll](https://jekyllrb.com/) (via GitHub Pages) and [Quarto](https://quarto.org/) for literate blogging with code and figures.

## 📁 Project Structure

```

.
├── \_config.yml                  # Jekyll site configuration
├── \_layouts/                    # Jekyll layouts (e.g., default.html)
├── \_includes/                   # Optional head includes
├── \_posts/                      # Rendered blog posts (Quarto output with YAML front matter)
├── blog/index.md                # Blog listing page
├── assets/images/me.jpg         # Profile image
├── index.md                     # Homepage content
├── contact.md                   # Contact form (Google Forms)
├── cv.md                        # Resume page
├── quarto/                      # Source files for Quarto blog posts
│   ├── hello.qmd
│   ├── another-post.qmd
│   └── \_quarto.yml              # Quarto project configuration
├── Makefile                     # Build automation
├── wrap\_quarto\_html\_posts.sh    # Adds YAML front matter to HTML posts
└── .git/hooks/pre-push          # Git hook to auto-render + wrap before pushing

````

---

## 🚀 Workflow

### Writing and Publishing a Blog Post

1. Write your blog post as a Quarto `.qmd` file in the `quarto/` directory.

2. Ensure front matter includes:
   ```yaml
   title: "My Post"
   date: YYYY-MM-DD
   format:
     html:
       standalone: false
       output-file: "../_posts/YYYY-MM-DD-my-post.html"
````

3. Run the full blog build:

   ```bash
   make blog
   ```

   This will:

   * Render `.qmd` files into `_posts/` as Jekyll-compatible `.html`
   * Add YAML front matter with title/date/layout if missing

4. Commit and push to GitHub. The `pre-push` hook will automatically run `make blog`.

---

## 🔧 Setup Instructions

If you're cloning the repo:

1. Install Quarto: [https://quarto.org/docs/get-started/](https://quarto.org/docs/get-started/)

2. Make sure the `wrap_quarto_html_posts.sh` script is executable:

   ```bash
   chmod +x wrap_quarto_html_posts.sh
   ```

3. Make sure Git hooks are installed:

   ```bash
   chmod +x .git/hooks/pre-push
   ```

4. To test locally:

   ```bash
   bundle exec jekyll serve
   ```

---

## 🛠 Technologies Used

* **Jekyll**: Static site generator
* **GitHub Pages**: Hosting and deployment
* **Quarto**: Authoring blog posts with code and plots
* **Bash + Make**: Build automation and formatting
* **Google Forms**: Contact form

---

## 📬 Contact

Feel free to reach out via the [Contact page](https://tguerand.github.io/contact) or contribute via pull request if you'd like to suggest improvements.



