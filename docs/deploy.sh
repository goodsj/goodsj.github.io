#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd src/.vuepress/dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

# git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:goodsj/goodsj.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f https://goodsj.github.com/ master:gh-pages


cd -