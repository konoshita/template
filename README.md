Rails AdminLTE サンプル
=======================

[![Build status][shield-build]](#)
[![MIT licensed][shield-license]](#)
[![Rails][shield-rails]][rails]

Rails 6 に AdminLTE 3 を導入するサンプル

CDN を利用してお手軽に導入する方法。

## Table of Contents

* [Technologies](#technologies)
* [Demo](#demo)
* [Getting started](#getting-started)
* [Deployment](#deployment)
* [Usage](#usage)
* [References](#references)
* [License](#license)

## Technologies

* [Rails][rails] 6.0.4.1
* [AdminLTE](https://adminlte.io/) 3.1
* [Bootstrap](https://getbootstrap.com/) 4.6
* [PostgreSQL][postgresql]
* [Heroku][heroku]

## Demo

* [Heroku](https://kyuuki-sample-rails-adminlte.herokuapp.com)

## Getting started

### Rails アプリケーション作成

```sh
$ git clone git@github.com:kyuuki/sample-rails-base.git sample-rails-adminlte
$ cd sample-rails-adminlte
```

- GitHub に sample-rails-adminlte という名前でリポジトリ追加

```sh
$ git remote set-url origin git@github.com:kyuuki/sample-rails-adminlte.git
$ git push origin master
```

### AdminLTE 導入

- starter page (https://adminlte.io/themes/v3/starter.html) を各 erb に分割してコピー

- AdminLTE のリンクを CDN のものに変更  
  https://adminlte.io/docs/3.1/index.html  
  [[commit]](https://github.com/kyuuki/sample-rails-adminlte/commit/6f9820024de04fa73ed78edfb3fa0746f33f2e38)

- jQuery と Bootstrap 4 の JavaScript リンクを CDN のものに変更  
  https://getbootstrap.com/docs/4.6/getting-started/introduction/#bundle  
  ただし jQuery は slim バージョンではないものに変更する必要がある  
  https://code.jquery.com/jquery/  
  [[commit]](https://github.com/kyuuki/sample-rails-adminlte/commit/83a4f514a7fde4f342af7534895e95b1b82df6cf)

- Font Awesome のリンクを CDN のものに変更  
  https://fontawesome.com/account/cdn  
  Font Awesome にユーザー登録する必要がある  
  [[commit]](https://github.com/kyuuki/sample-rails-adminlte/commit/7bd5a0dd7e8ec498505ef02444fc8a8932248201)

- 画像へのリンクを変更  
  [[commit]](https://github.com/kyuuki/sample-rails-adminlte/commit/8d47bed2c71557bda2d7c518a74a808407b29f91)

## Deployment

Heroku にデプロイ

```sh
$ heroku create kyuuki-sample-rails-adminlte
$ git push heroku master
```
<!-- $ heroku run rake db:migrate (今回は不要) -->

## Usage

```sh
$ git clone git@github.com:kyuuki/sample-rails-adminlte.git
$ cd sample-rails-adminlte
$ bundle install
$ yarn install
$ rails db:create
$ rails s -b 0.0.0.0
```
<!-- $ rails db:migrate (今回は不要) -->

## References

* [AdminLTE Docs](https://adminlte.io/docs/3.1/)
* [AdminLTE Live Preview](https://adminlte.io/themes/v3/)

## License

This is licensed under the [MIT](https://choosealicense.com/licenses/mit/) license.  
Copyright &copy; 2021 [Fuji Programming Laboratory](https://fuji-labo.com/)



[rails]: https://rubyonrails.org/
[postgresql]: https://www.postgresql.org/
[heroku]: https://www.heroku.com/home

[shield-build]: https://img.shields.io/badge/build-passing-brightgreen.svg
[shield-license]: https://img.shields.io/badge/license-MIT-blue.svg
[shield-rails]: https://img.shields.io/badge/-Rails-CC0000.svg?logo=ruby-on-rails&style=flat
