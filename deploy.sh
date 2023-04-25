# 抛出问题
set -e

# 打包生成静态文件
npm run build 

# 进入静态文件
cd public

git init 
git add -A
git commit -m '手动部署'

# 推到仓库中
git push -f https://github.com/tzwtmll/photoTheme.git master:gh-pages

cd - 
