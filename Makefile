# REV04 Sun 04 Jul 2021 13:39:01 WIB
# REV02 Tue 15 Jun 2021 11:10:46 WIB
# REV01 Fri 12 Mar 13:42:23 WIB 2021
# START Mon 15 Feb 09:41:08 WIB 2021

ALL: 000.md

000.md: 000.pmd _config.yml Gemfile _layouts/layout.html Makefile index.md about.md tips.md links.md \
        _includes/navbar.html \
        _includes/footer.html _includes/head.html _includes/google-analytics.html \
	assets/css/style.css assets/scripts/includeScript.py 
	python assets/scripts/includeScript.py < 000.pmd > 000.md
	tar cfj ./template.tar.bz2 _config.yml .dojekyll .gitignore .template Gemfile LICENSE Makefile *.ico *.md *.pmd assets/ _includes/ _layouts/ SandBox/

.phony: ALL

