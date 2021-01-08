# プログラミング演習 2019


## 概要

- [スライド](https://gitpitch.com/k2works/programing_excercise_2019)
- [デモ](https://programingexcercise2019.k2works.now.sh/)

### 目的

### 前提

| ソフトウェア   | バージョン | 備考 |
| :------------- | :--------- | :--- |
| nodejs         | 10.16.3    |      |
| ruby           | 2.5        |      |

## 構成

- [構築](#構築)
- [配置](#配置)
- [運用](#運用)
- [開発](#開発)

## 詳細

### 構築

#### 開発パッケージのセットアップ

```bash
npm init -y
npm install --save-dev npm-run-all watch foreman cpx rimraf markdown-to-html @marp-team/marp-cli
npm install --save-dev prettier eslint jshint cross-env @prettier/plugin-ruby
npm install --save-dev browser-sync connect-browser-sync nodemon
npx browser-sync init
touch Procfile
```

#### アプリケーションのセットアップ

```bash
npm install --save-dev mocha chai cypress cypress-file-upload
npm install --save-dev @babel/core @babel/cli @babel/preset-env @babel/register @babel/polyfill babel-plugin-istanbul cross-env nyc webpack webpack-cli webpack-dev-server babel-loader css-loader html-webpack-plugin mini-css-extract-plugin html-loader copy-webpack-plugin
npm install --save-dev now
```

**[⬆ back to top](#構成)**

### 配置

```bash
npx now login
npm run deploy
```

[![Deploy with ZEIT Now](https://zeit.co/button)](https://zeit.co/new/project?template=https://github.com/k2works/programing_excercise_2019)

**[⬆ back to top](#構成)**

### 運用

ドキュメント

```bash
npm run start:asciidocs
```

スライド

```bash
npm run start:slide
```

**[⬆ back to top](#構成)**

### 開発

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/k2works/programing_excercise_2019)

```bash
npm install
npm start
```

**[⬆ back to top](#構成)**

## 参照

- [nodejs](https://nodejs.org/ja/)
- [Bootstrap](https://getbootstrap.com/)
- [GitPitch](https://gitpitch.com/)
- [marp-cli](https://github.com/marp-team/marp-cli)
