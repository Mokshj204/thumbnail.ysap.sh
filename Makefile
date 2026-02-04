favicon.ico:
	curl -o favicon.ico https://ysap.sh/favicon.ico

.PHONY: serve
serve: favicon.ico
	python3 -mhttp.server

.PHONY: deploy
deploy: favicon.ico
	rsync -avh --delete --progress \
	    ./{main.js,index.html,style.css,favicon.ico} \
	    web:/var/www/thumbnail.ysap.sh/
