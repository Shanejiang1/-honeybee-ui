rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "update" &&
git branch -M master &&
# GitHub
# git remote add origin git@github.com:Shanejiang1/honeybee-ui-website.git &&
# 码云
git remote add origin git@gitee.com:shanejiang/honeybee-ui-website.git &&
git push -f -u origin master &&
cd -