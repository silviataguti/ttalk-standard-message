git config --global user.email "francardoso@outlook.com"
git config --global user.name "francardoso93"

git checkout ${TRAVIS_BRANCH}
git pull                   

git add -A
git commit -m "TRAVISCI - Renaming schema references to branch  'master' - ${TRAVIS_BUILD_NUMBER}"
git remote add origin-pages https://${GH_TOKEN}@github.com/totvs/ttalk-standard-message.git > /dev/null 2>&1     
git push --set-upstream origin-pages 


