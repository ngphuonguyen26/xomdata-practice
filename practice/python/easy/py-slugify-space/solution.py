# Xom Data · Turn a title into a friendly URL part
# Problem: https://xomdata.com/practice/py-slugify-space
# Solved: 2026-08-21

def to_slug(title):
    url = title.lower()
    new_url = url.replace(" ", "-")
    return new_url
