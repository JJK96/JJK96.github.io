all: resume.html index.html projects.html

resume.html: src/resume.html.j2 src/me.html src/base.html.j2
	jinja2 $< -o $@ -D me="$$(cat src/me.html)"

index.html: src/index.html.j2 src/me.html src/base.html.j2
	jinja2 $< -o $@ -D me="$$(cat src/me.html)"

projects.html: src/projects.html.j2 src/base.html.j2
	jinja2 $< -o $@
