#!/bin/bash

# Configuration (adjust if needed)
POSTS_DIR="_posts"
LAYOUT="default"

# Loop through all HTML files in _posts/
for file in "$POSTS_DIR"/*.html; do
  # Check if file already has YAML front matter
  if grep -q '^---' "$file"; then
    echo "✅ Skipping $file (already has front matter)"
    continue
  fi

  # Extract metadata from filename (format: YYYY-MM-DD-title.html)
  filename=$(basename -- "$file")
  date_part=$(echo "$filename" | cut -d'-' -f1-3 | tr '-' ' ')
  title_part=$(echo "$filename" | sed -E 's/^[0-9]{4}-[0-9]{2}-[0-9]{2}-(.*)\.html/\1/')
  title_clean=$(echo "$title_part" | tr '-' ' ' | sed 's/\b\(.\)/\u\1/g')

  # Construct temporary file with front matter + original content
  tmpfile="${file}.tmp"
  {
    echo "---"
    echo "layout: $LAYOUT"
    echo "title: \"$title_clean\""
    echo "date: ${date_part// /-}"
    echo "---"
    cat "$file"
  } > "$tmpfile"

  # Replace original file
  mv "$tmpfile" "$file"
  echo "📝 Updated $file with front matter"
done
