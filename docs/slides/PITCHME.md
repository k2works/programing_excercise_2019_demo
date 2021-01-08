### プログラミング演習

---

### 構成

- 自己紹介
- プログラミングって何よ？
- プログラミングってどうやるのよ？
- プログラミングってどうやったら上手くなるのよ？

---

### 自己紹介

- カキギカツユキ
- ネット通販の会社で業務システムを開発運用しています
- その前はシステムエンジニアとしていろんな会社のシステム開発をしていました

---

### プログラミングって何よ？

> コンピュータのプログラミング（英: programming）とは、コンピュータプログラムを作成することにより、人間の意図した処理を行うようにコンピュータに指示を与える行為である。

> Wikipedia

---

### プログラミングって何よ？

> まず、そのプログラムの目的、さらには「本当に解決したい問題は何なのか」ということについて十分な検討が必要である。

> Wikipedia
---

### プログラミングって何よ？

プログラミングは問題解決

---

### プログラミングってどうやるのよ？

実演してみます

---

### プログラミングってどうやるのよ？

- 仕様を決める
- TODOリストを作る
- かんたんなところから始める
- はじめからきれいなコードを書こうとしない
- 少しずつ進める
- 小さなサイクルを回しながら進める

---

### プログラミングってどうやったら上手くなるのよ？

- 本を読む
- コードを読む
- コードを書く
- 以上のことを繰り返す

---

### プログラミングってどうやったら上手くなるのよ？

まずはこれから

[![リーダブルコード ―より良いコードを書くためのシンプルで実践的なテクニック](https://images-na.ssl-images-amazon.com/images/I/51MgH8Jmr3L._SX352_BO1,204,203,200_.jpg)](https://amzn.to/33sB9Kv)

---

### プログラミングってどうやったら上手くなるのよ？

もっとレベルアップしたいならこれとか

[![](https://images-na.ssl-images-amazon.com/images/I/51hsd-b1RTL._SX350_BO1,204,203,200_.jpg)](https://amzn.to/33tevkT)

---

### プログラミングってどうやったら上手くなるのよ？

これかな

[![](https://images-na.ssl-images-amazon.com/images/I/51RWpUlhNxL._SX385_BO1,204,203,200_.jpg)](https://amzn.to/2nIP286)

---

### プログラミングってどうやったら上手くなるのよ？

達人プログラマーになりたい人は

[![](https://images-na.ssl-images-amazon.com/images/I/51aDNpMj8hL._SX350_BO1,204,203,200_.jpg)](https://amzn.to/35oof1H)

---

### プログラミングってどうやったら上手くなるのよ？

あと、英語は読めないよりは読めたほうが良い

[![](https://nhkbook.jp-east-2.storage.api.nifcloud.com/image/goods/000009107102019/000009107102019_01_234.jpg)](https://www2.nhk.or.jp/gogaku/english/basic1/)

---

### プログラミングってどうやったら上手くなるのよ？

[コミットログ](https://github.com/k2works/programing_excercise_2019/commits/feature/fizzbuzz)を読んでみよう

---

### プログラミングってどうやったら上手くなるのよ？

RubyでFizzBuzz問題をやってみよう

---

### プログラミングってどうやったら上手くなるのよ？

FizzBuzz問題追加仕様を実装してみよう

> タイプごとに出力を切り替える、タイプ１は通常、タイプ２は数字のみ、タイプ３は FizzBuzz の場合のみをプリントする
---

### プログラミングってどうやったら上手くなるのよ？

Railsで[サンプルサイト](https://fizzbuzz-dev.azurewebsites.net/)を作ってみよう

---

### おわり

---

### FizzBuzz問題

プログラムを作る方法はいろいろありますが一般的に以下の手順で進めます。

1. 仕様を決める
1. 設計する
1. 実装する

---

### FizzBuzz問題

まず、[仕様を決めます](https://github.com/k2works/ruby_basic_exercises/blob/b3a810733db506e40a762f926c1fe718a580cb78/docs/src/demonstration/index.adoc)
#### 仕様
+ ３で割り切れる場合は「Fizz」を出力する。
+ ５で割り切れる場合は「Buzz」を出力する。
+ 両者で割り切れる場合は「FizzBuzz」を出力する。
+ 指定された回数だけ繰り返し実行する。

---

### FizzBuzz問題

続いてプログラムの設計をします。

まず、[TODOリスト](https://github.com/k2works/ruby_basic_exercises/blob/b3a810733db506e40a762f926c1fe718a580cb78/docs/src/demonstration/index.adoc)を作成しましょう

#### TODOリスト
+ Fizzを出力できるようにする
+ Buzzを出力できるようにする
+ FizzBuzzを出力できるようにする
+ 繰り返し実行できるようにする

---
### FizzBuzz問題

必要に応じて以下の図表を作成することがあります。

+ ユースケース図
+ クラス図
+ シーケンス図

---

### FizzBuzz問題

設計が終わったらプログラムの実装です。

まず、クラスを作成しましょう。

```ruby
class FizzBuzz
end
```
---
### FizzBuzz問題

テストをしながら設計のTODOリストを一つづつ片付けていきましょう

```ruby
class FizzBuzz
end

require 'minitest/autorun'
class FizzBuzzSpec < Minitest::Spec
  describe FizzBuzz do
    it '3ならばFizzを返す' do
      expect(3).must_equal 'Fizz'
    end
  end
end
```
---

### FizzBuzz問題

クラスにメソッドを追加します

```ruby
class FizzBuzz
  def generate(number)
    'Fizz'
  end
end

require 'minitest/autorun'
class FizzBuzzSpec < Minitest::Spec
  describe FizzBuzz do
    describe '#generate' do
      it '3ならばFizzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(3)).must_equal 'Fizz'
      end
    end
  end
end
```
---

### FizzBuzz問題

3以外の数字でもFizzを返すことができるようにしましょう。

```ruby
class FizzBuzz
  def generate(number)
    if number % 3 == 0
      'Fizz'
    end
  end
end

require 'minitest/autorun'
class FizzBuzzSpec < Minitest::Spec
  describe FizzBuzz do
    describe '#generate' do
      it '3ならばFizzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(3)).must_equal 'Fizz'
      end

      it '6ならばFizzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(6)).must_equal 'Fizz'
      end

      it '30ならばFizzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(30)).must_equal 'Fizz'
      end
    end
  end
end
```
---

### FizzBuzz問題

TODOを一つ片付けることができました。

では、次のTODOに取り組みましょう。

#### TODOリスト
+ ~~Fizzを出力できるようにする~~
+ **Buzzを出力できるようにする**
+ FizzBuzzを出力できるようにする
+ 繰り返し実行できるようにする

---

### FizzBuzz問題

まずはテストを追加しましょう

```ruby
class FizzBuzz
  def generate(number)
    if number % 3 == 0
      'Fizz'
    end
  end
end

require 'minitest/autorun'
class FizzBuzzSpec < Minitest::Spec
  describe FizzBuzz do
    describe '#generate' do
      it '3ならばFizzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(3)).must_equal 'Fizz'
      end

      it '6ならばFizzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(6)).must_equal 'Fizz'
      end

      it '30ならばFizzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(30)).must_equal 'Fizz'
      end

      it '5ならばBuzzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(5)).must_equal 'Buzz'
      end
    end
  end
```
---

### FizzBuzz問題

テストが通るように条件を変更しましょう。

```ruby
class FizzBuzz
  def generate(number)
    if number % 3 == 0
      'Fizz'
    elsif number % 5 == 0
      'Buzz'
    end
  end
end

require 'minitest/autorun'
class FizzBuzzSpec < Minitest::Spec
  describe FizzBuzz do
    describe '#generate' do
      it '3ならばFizzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(3)).must_equal 'Fizz'
      end

      it '6ならばFizzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(6)).must_equal 'Fizz'
      end

      it '30ならばFizzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(30)).must_equal 'Fizz'
      end

      it '5ならばBuzzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(5)).must_equal 'Buzz'
      end

      it '10ならばBuzzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(10)).must_equal 'Buzz'
      end

      it '50ならばBuzzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(50)).must_equal 'Buzz'
      end
    end
  end
end
```
---

### FizzBuzz問題

２つ目のTODOを片付けることができました。

では、次のTODOに取り組みましょう。

#### TODOリスト
+ ~~Fizzを出力できるようにする~~
+ ~~Buzzを出力できるようにする~~
+ **FizzBuzzを出力できるようにする**
+ 繰り返し実行できるようにする

---

### FizzBuzz問題

まずは・・・テストからですよね。

```ruby
class FizzBuzz
  def generate(number)
    if number % 3 == 0
      'Fizz'
    elsif number % 5 == 0
      'Buzz'
    end
  end
end

require 'minitest/autorun'
class FizzBuzzSpec < Minitest::Spec
  describe FizzBuzz do
    describe '#generate' do
      it '3ならばFizzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(3)).must_equal 'Fizz'
      end

      it '6ならばFizzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(6)).must_equal 'Fizz'
      end

      it '30ならばFizzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(30)).must_equal 'Fizz'
      end

      it '5ならばBuzzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(5)).must_equal 'Buzz'
      end

      it '10ならばBuzzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(10)).must_equal 'Buzz'
      end

      it '50ならばBuzzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(50)).must_equal 'Buzz'
      end

      it '15ならばFizzBuzzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(15)).must_equal 'FizzBuzz'
      end
    end
  end
end
```
---

### FizzBuzz問題

続いて、テストが通るようにプログラムを変更しましょう。

おや、テストが失敗してしまいました。

なぜでしょうか？

```ruby
class FizzBuzz
  def generate(number)
    if number % 3 == 0
      'Fizz'
    elsif number % 5 == 0
      'Buzz'
    elsif number % 3 == 0 and number % 5 == 0
      'FizzBuzz'
    end
  end
end

require 'minitest/autorun'
class FizzBuzzSpec < Minitest::Spec
  describe FizzBuzz do
    describe '#generate' do
      it '3ならばFizzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(3)).must_equal 'Fizz'
      end

      it '6ならばFizzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(6)).must_equal 'Fizz'
      end

      it '30ならばFizzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(30)).must_equal 'Fizz'
      end

      it '5ならばBuzzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(5)).must_equal 'Buzz'
      end

      it '10ならばBuzzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(10)).must_equal 'Buzz'
      end

      it '50ならばBuzzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(50)).must_equal 'Buzz'
      end

      it '15ならばFizzBuzzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(15)).must_equal 'FizzBuzz'
      end
    end
  end
end
```
---

### FizzBuzz問題

どうやら変更した条件では思ったとおりにプログラムが動いてくれなかったようです。

思ったとおりに動くようにプログラムを修正しましょう。

テストが通りましたか？

```ruby
class FizzBuzz
  def generate(number)
    if number % 3 == 0 and number % 5 == 0
      'FizzBuzz'
    elsif number % 3 == 0
      'Fizz'
    elsif number % 5 == 0
      'Buzz'
    end
  end
end

require 'minitest/autorun'
class FizzBuzzSpec < Minitest::Spec
  describe FizzBuzz do
    describe '#generate' do
      it '3ならばFizzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(3)).must_equal 'Fizz'
      end

      it '6ならばFizzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(6)).must_equal 'Fizz'
      end

      it '5ならばBuzzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(5)).must_equal 'Buzz'
      end

      it '10ならばBuzzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(10)).must_equal 'Buzz'
      end

      it '50ならばBuzzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(50)).must_equal 'Buzz'
      end

      it '15ならばFizzBuzzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(15)).must_equal 'FizzBuzz'
      end

      it '30ならばFizzBuzzを返す' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.generate(30)).must_equal 'FizzBuzz'
      end

    end
  end
end
```
---

### FizzBuzz問題

３つ目のTODOを片付けることができました。

いよいよ最後のTODOですがこれはちょっと難しいのでやってみてわからないときはプログラムの上手い人に相談してみましょう。

#### TODOリスト
+ ~~Fizzを出力できるようにする~~
+ ~~Buzzを出力できるようにする~~
+ ~~FizzBuzzを出力できるようにする~~
+ 繰り返し実行できるようにする
---

### FizzBuzz問題

最終的な完成イメージが[こちら](https://k2works.github.io/ruby_basic_exercises/demonstration/index.html)になります。
---

---

### 参照
- [リーダブルコード ―より良いコードを書くためのシンプルで実践的なテクニック (Theory in practice)](https://www.amazon.co.jp/%E3%83%AA%E3%83%BC%E3%83%80%E3%83%96%E3%83%AB%E3%82%B3%E3%83%BC%E3%83%89-%E2%80%95%E3%82%88%E3%82%8A%E8%89%AF%E3%81%84%E3%82%B3%E3%83%BC%E3%83%89%E3%82%92%E6%9B%B8%E3%81%8F%E3%81%9F%E3%82%81%E3%81%AE%E3%82%B7%E3%83%B3%E3%83%97%E3%83%AB%E3%81%A7%E5%AE%9F%E8%B7%B5%E7%9A%84%E3%81%AA%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF-Theory-practice-Boswell/dp/4873115655)
- [新装版 達人プログラマー 職人から名匠への道](https://www.amazon.co.jp/%E6%96%B0%E8%A3%85%E7%89%88-%E9%81%94%E4%BA%BA%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9E%E3%83%BC-%E8%81%B7%E4%BA%BA%E3%81%8B%E3%82%89%E5%90%8D%E5%8C%A0%E3%81%B8%E3%81%AE%E9%81%93-Andrew-Hunt/dp/427421933X/ref=tmm_pap_title_0?_encoding=UTF8&qid=&sr=)
- [The Pragmatic Programmer: your journey to mastery, 20th Anniversary Edition (2nd Edition) ](https://www.amazon.co.jp/gp/product/0135957052/ref=ppx_yo_dt_b_asin_title_o02_s00?ie=UTF8&psc=1)
- [テスト駆動開発](https://www.amazon.co.jp/%E3%83%86%E3%82%B9%E3%83%88%E9%A7%86%E5%8B%95%E9%96%8B%E7%99%BA-Kent-Beck/dp/4274217884/ref=tmm_pap_swatch_0?_encoding=UTF8&qid=&sr=)
- [新装版 リファクタリング―既存のコードを安全に改善する― (OBJECT TECHNOLOGY SERIES)](https://www.amazon.co.jp/%E3%83%AA%E3%83%95%E3%82%A1%E3%82%AF%E3%82%BF%E3%83%AA%E3%83%B3%E3%82%B0%E2%80%95%E6%97%A2%E5%AD%98%E3%81%AE%E3%82%B3%E3%83%BC%E3%83%89%E3%82%92%E5%AE%89%E5%85%A8%E3%81%AB%E6%94%B9%E5%96%84%E3%81%99%E3%82%8B%E2%80%95-OBJECT-TECHNOLOGY-Martin-Fowler/dp/427405019X/ref=tmm_pap_swatch_0?_encoding=UTF8&qid=&sr=)
- [Refactoring: Improving the Design of Existing Code (2nd Edition)](https://www.amazon.co.jp/Refactoring-Improving-Existing-Addison-Wesley-Signature/dp/0134757599/ref=pd_sbs_14_1/357-0788753-0519007?_encoding=UTF8&pd_rd_i=0134757599&pd_rd_r=531da6c3-3670-11e9-8479-6b76599af025&pd_rd_w=IozYn&pd_rd_wg=yCXVP&pf_rd_p=ad2ea29d-ea11-483c-9db2-6b5875bb9b73&pf_rd_r=T7JA13SSRSYEJJNQAT6D&psc=1&refRID=T7JA13SSRSYEJJNQAT6D)
---
