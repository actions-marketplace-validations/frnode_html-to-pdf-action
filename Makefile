.PHONY: build
build:
	docker build -f docker/Dockerfile -t frnode/html-to-pdf:latest .
.PHONY: test
test:
	export INPUT_HTMLFILE="./example.html" INPUT_OUTPUTFILE="./example.html" INPUT_PDFOPTIONS='{"margin": {"top": "1000px", "left": "100px", "right": "100px", "bottom": "100px"}}' && node ./lib/main.js