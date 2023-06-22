set -e # 遇到返回值非零退出
set -x # 显示执行的命令

git submodule update --init --recursive
git submodule update --remote --rebase

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
echo 'nvm version is' && nvm -v

nvm install lts/hydrogen
nvm use lts/hydrogen

echo 'node version is' && node -v

npm i -g pnpm
npm i -g yarn

cd ./arco-design

yarn install
pnpm icon
pnpm build:es
pnpm build:css

cd ../goodsman
pnpm install
pnpm build
pnpm start