set -e # 遇到返回值非零退出
set -x # 显示执行的命令

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
echo 'nvm version is' && nvm -v

nvm install lts/hydrogen
nvm use lts/hydrogen

echo 'node version is' && node -v

npm i next@13.4.9-canary.2 -g
next start .
