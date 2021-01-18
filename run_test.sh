docker build -t bioinfognmk/bioinfotest .
docker container run --rm -it  -v $(pwd):/biotest  bioinfognmk/bioinfotest

