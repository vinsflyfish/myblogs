#!/bin/bash

rm -rf public
echo "create hugo output dir: public"
hugo --theme=Mainroad --baseUrl="https://vinsflyfish.github.io"

# cd public/
# echo "lufy.me" > CNAME

# git add .

# git commit -m "commit blog use script"

# git push origin master

# cd ..

echo "copy to des dir"
cp -r public/* ../../../vinsflyfish.github.io
