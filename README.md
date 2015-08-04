# HolaA1432km4

MiniTest による単体テストを検証するための gem です。

AIIT フレームワーク開発特論の個人演習用に作成致しました。

## インストール

アプリケーションの Gemfile に以下の行を記述します。

```ruby
gem 'hola_a1432km4'
```

その後、以下のコマンドを実行します。

    $ bundle

もしくは以下のコマンドを実行します。

    $ gem install hola_a1432km4


アンインストールする場合は以下のコマンドを実行します。

    $ gem uninstall hola_a1432km4


## メソッド一覧

* odd(num)

整数を入力として受け取り，値が奇数ならば真を返す

* check_number(num)

引数が0 以外ではじまる4 桁の数字であり，なおかつ，値が偶数ならば真を返す

* enough_length(str)

文字列を受け取り，その長さが3 文字以上，8 文字以下であれば真を返す

* divide(num_n, num_d)

引数として割る数と割られる数を取り，割り算をした結果を返す．ただし，0 で割り算をしたら例外を発生する

* fizz_buzz(num)

引数に数値を1 つとる．3 の倍数の時は”Fizz”を返す．5 の倍数の時は”Buzz”を返す．3 と5 の公倍数のときは”FizzBuzz”を返す

* hello()

標準出力に「Hello」と表示する


## 単体テスト

以下のテストを行います。


```ruby
	#整数を入力として受け取り，値が奇数ならば真を返す
	def test_odd
		assert_equal(false, @my.odd(0))
		assert_equal(true,  @my.odd(1))
		assert_equal(false, @my.odd(2))
	end

	#check_numberメソッドテスト
	def test_check_number
		assert_equal(false, @my.check_number(0))
		assert_equal(false, @my.check_number(123))
		assert_equal(false, @my.check_number(1001))
		assert_equal(true,  @my.check_number(1000))
	end

	#enough_lengthメソッドテスト
	def test_enough_length
		#境界値チェック2,3,8,9桁
		assert_equal(false, @my.enough_length("12"))
		assert_equal(true,  @my.enough_length("123"))
		assert_equal(true,  @my.enough_length("12345678"))
		assert_equal(false, @my.enough_length("123456789"))
	end

	#divideメソッドテスト
	def test_divide
		assert_equal(2, @my.divide(50, 25))
		assert_equal(20, @my.divide(200, 10))
	end

	#fizz_buzzメソッドテスト
	def test_fizz_buzz
		assert_equal("",         @my.fizz_buzz(0))
		assert_equal("",         @my.fizz_buzz(1))
		assert_equal("Fizz",     @my.fizz_buzz(3))
		assert_equal("",         @my.fizz_buzz(4))
		assert_equal("Buzz",     @my.fizz_buzz(5))
		assert_equal("",         @my.fizz_buzz(14))
		assert_equal("FizzBuzz", @my.fizz_buzz(15))
		assert_equal("",         @my.fizz_buzz(16))
		assert_equal("",         @my.fizz_buzz(101))
	end

	#標準出力に「Hello」と表示する
	def test_hello
		assert_output(/Hello/) { @my.hello}
	end
	
```

## Travis CI

この gem は Travis CI と連携し、テストの自動化を行っています。

https://travis-ci.org/kokoro912/hola_a1432km4

