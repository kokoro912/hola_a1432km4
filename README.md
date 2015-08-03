# HolaA1432km4

MiniTest �ɂ��P�̃e�X�g�����؂��邽�߂� gem �ł��B

AIIT �t���[�����[�N�J�����_�̌l���K�p�ɍ쐬�v���܂����B

## �C���X�g�[��

�A�v���P�[�V������ Gemfile �Ɉȉ��̍s���L�q���܂��B

```ruby
gem 'hola_a1432km4'
```

���̌�A�ȉ��̃R�}���h�����s���܂��B

    $ bundle

�������͈ȉ��̃R�}���h�����s���܂��B

    $ gem install hola_a1432km4


�A���C���X�g�[������ꍇ�͈ȉ��̃R�}���h�����s���܂��B

    $ gem uninstall hola_a1432km4


## ���\�b�h�ꗗ

* odd(num)

��������͂Ƃ��Ď󂯎��C�l����Ȃ�ΐ^��Ԃ�

* check_number(num)

������0 �ȊO�ł͂��܂�4 ���̐����ł���C�Ȃ����C�l�������Ȃ�ΐ^��Ԃ�

* enough_length(str)

��������󂯎��C���̒�����3 �����ȏ�C8 �����ȉ��ł���ΐ^��Ԃ�

* divide(num_n, num_d)

�����Ƃ��Ċ��鐔�Ɗ����鐔�����C����Z���������ʂ�Ԃ��D�������C0 �Ŋ���Z���������O�𔭐�����

* fizz_buzz(num)

�����ɐ��l��1 �Ƃ�D3 �̔{���̎��́hFizz�h��Ԃ��D5 �̔{���̎��́hBuzz�h��Ԃ��D3 ��5 �̌��{���̂Ƃ��́hFizzBuzz�h��Ԃ�

* hello()

�����ɐ��l��1 �Ƃ�D3 �̔{���̎��́hFizz�h��Ԃ��D5 �̔{���̎��́hBuzz�h��Ԃ��D3 ��5 �̌��{���̂Ƃ��́hFizzBuzz�h��Ԃ�


## �P�̃e�X�g

�ȉ��̃e�X�g���s���܂��B


```ruby
	#��������͂Ƃ��Ď󂯎��C�l����Ȃ�ΐ^��Ԃ�
	def test_odd
		assert_equal(false, @my.odd(0))
		assert_equal(true,  @my.odd(1))
		assert_equal(false, @my.odd(2))
	end

	#check_number���\�b�h�e�X�g
	def test_check_number
		assert_equal(false, @my.check_number(0))
		assert_equal(false, @my.check_number(123))
		assert_equal(false, @my.check_number(1001))
		assert_equal(true,  @my.check_number(1000))
	end

	#enough_length���\�b�h�e�X�g
	def test_enough_length
		#���E�l�`�F�b�N2,3,8,9��
		assert_equal(false, @my.enough_length("12"))
		assert_equal(true,  @my.enough_length("123"))
		assert_equal(true,  @my.enough_length("12345678"))
		assert_equal(false, @my.enough_length("123456789"))
	end

	#divide���\�b�h�e�X�g
	def test_divide
		assert_equal(2, @my.divide(50, 25))
		assert_equal(20, @my.divide(200, 10))
	end

	#fizz_buzz���\�b�h�e�X�g
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

	#�����ɐ��l��1 �Ƃ�D3 �̔{���̎��́hFizz�h��Ԃ��D5 �̔{���̎��́hBuzz�h��Ԃ��D3 ��5 �̌��{���̂Ƃ��́hFizzBuzz�h��Ԃ��D
	def test_hello
		assert_output(/Hello/) { @my.hello}
	end
	
```

## Travis CI

���� gem �� Travis CI �ƘA�g���A�e�X�g�̎��������s���Ă��܂��B

https://travis-ci.org/kokoro912/hola_a1432km4

