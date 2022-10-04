rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "update" &&
git checkout -M master &&
git remote add origin git@github.com:Shanejiang1/honeybee-ui-website.git &&
git push -f -u origin master &&
cd -