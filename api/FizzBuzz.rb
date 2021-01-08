require 'minitest/autorun'
require 'json'

# TODOリスト
=begin
- [x] 数を文字列にして返す
  - [x] 1を渡したら文字列"1"を返す
  - [x] 2を渡したら文字列"2"を返す
- [x] 3 の倍数のときは数の代わりに｢Fizz｣と返す
  - [x] 3を渡したら文字列"Fizz"を返す
- [x] 5 の倍数のときは｢Buzz｣と返す
- [x] 3 と 5 両方の倍数の場合には｢FizzBuzz｣と返す
- [x] 1 から 100 までの数
  - [x] はじめは文字列1を返す
  - [x] 最後は文字列100を返す
  - [x] 2番目は文字列Fizzを返す
  - [x] 4番目は文字列Buzzを返す
  - [x] 14番目は文字列FizzBuzzを返す
- [x] プリントする
- [x] タイプ1の場合
  - [x] 数を文字列にして返す
    - [x] 1を渡したら文字列"1"を返す
    - [x] 2を渡したら文字列"2"を返す
  - [x] 3 の倍数のときは数の代わりに｢Fizz｣と返す
    - [x] 3を渡したら文字列"Fizz"を返す
  - [x] 5 の倍数のときは｢Buzz｣と返す
    - [x] 5を渡したら文字列"Buzz"を返す
  - [x] 3 と 5 両方の倍数の場合には｢FizzBuzz｣と返す
    - [x] 15を渡したら文字列"FizzBuzz"を返す
- [x] タイプ2の場合
  - [x] 数を文字列にして返す
    - [x] 1を渡したら文字列"1"を返す
    - [x] 2を渡したら文字列"2"を返す
  - [x] 3 の倍数のときは数を文字列にして返す
    - [x] 3を渡したら文字列"3"を返す
  - [x] 5 の倍数のときは数を文字列にして返す
    - [x] 5を渡したら文字列"5"を返す
  - [x] 3 と 5 両方の倍数の場合には数を文字列にして返す
    - [x] 15を渡したら文字列"15"を返す
- [x] タイプ3の場合
  - [x] 数を文字列にして返す
    - [x] 1を渡したら文字列"1"を返す
    - [x] 2を渡したら文字列"2"を返す
  - [x] 3 の倍数のときは数を文字列にして返す
    - [x] 3を渡したら文字列"3"を返す
  - [x] 5 の倍数のときは数を文字列にして返す
    - [x] 5を渡したら文字列"5"を返す
  - [x] 3 と 5 両方の倍数の場合には｢FizzBuzz｣と返す
    - [x] 15を渡したら文字列"FizzBuzz"を返す
- [x] それ以外のタイプの場合
  - [x] 例外を返す
=end

class FizzBuzzTest < Minitest::Test
  describe 'FizzBuzzServiceTest' do
    describe 'タイプ1の場合' do
      def setup
        @fizzbuzz =
          FizzBuzzService.new(FizzBuzzType.create(FizzBuzzType::TYPE_01))
      end

      describe '三の倍数の場合' do
        def test_3を渡したら文字列Fizzを返す
          assert_equal 'Fizz', @fizzbuzz.generate(3)
        end
      end

      describe '五の倍数の場合' do
        def test_5を渡したら文字列Buzzを返す
          assert_equal 'Buzz', @fizzbuzz.generate(5)
        end
      end

      describe '三と五の倍数の場合' do
        def test_15を渡したら文字列FizzBuzzを返す
          assert_equal 'FizzBuzz', @fizzbuzz.generate(15)
        end
      end

      describe 'その他の場合' do
        def test_1を渡したら文字列1を返す
          assert_equal '1', @fizzbuzz.generate(1)
        end

        def test_値は正の値のみ許可する
          e = assert_raises RuntimeError do
            FizzBuzzService.new(FizzBuzzType.create(FizzBuzzType::TYPE_01)).generate(-1)
          end

          assert_equal '値は正の値のみ有効です', e.message
        end

        def test_100より多い数を許可しない
          e = assert_raises RuntimeError do
            FizzBuzzService.new(FizzBuzzType.create(FizzBuzzType::TYPE_01)).generate_list(101)
          end

          assert_equal '100件より多く保持できません', e.message
        end
      end

      describe '1から100までの数' do
        def setup
          @fizzbuzz =
            FizzBuzzService.new(
              FizzBuzzType.create(FizzBuzzType::TYPE_01)
            )
          @result = @fizzbuzz.generate_list(100)
        end

        def test_はじめは文字列1を返す
          assert_equal '1', @result.first.value
        end

        def test_最後は文字列Buzzを返す
          assert_equal 'Buzz', @result.last.value
        end

        def test_2番目は文字列Fizzを返す
          assert_equal 'Fizz', @result[2].value
        end

        def test_4番目は文字列Buzzを返す
          assert_equal 'Buzz', @result[4].value
        end

        def test_14番目は文字列FizzBuzzを返す
          assert_equal 'FizzBuzz', @result[14].value
        end
      end

      describe 'プリントする' do
        def test_json形式でFizzBuzzListを返す
          service = FizzBuzzService.new(FizzBuzzType.create(FizzBuzzType.value_of('1')))
          list = service.generate_json_list(100)
          result = JSON.parse(list)
          assert_equal 'Fizz', result['data'][2]['value']
        end
      end
    end

    describe 'タイプ2の場合' do
      def setup
        @fizzbuzz =
          FizzBuzzValueCommand.new(FizzBuzzType.create(FizzBuzzType::TYPE_02))
      end

      describe '三の倍数の場合' do
        def test_3を渡したら文字列3を返す
          assert_equal '3', @fizzbuzz.execute(3).value
        end
      end

      describe '五の倍数の場合' do
        def test_5を渡したら文字列5を返す
          assert_equal '5', @fizzbuzz.execute(5).value
        end
      end

      describe '三と五の倍数の場合' do
        def test_15を渡したら文字列15を返す
          assert_equal '15', @fizzbuzz.execute(15).value
        end
      end

      describe 'その他の場合' do
        def test_1を渡したら文字列1を返す
          assert_equal '1', @fizzbuzz.execute(1).value
        end
      end
    end

    describe 'タイプ3の場合' do
      def setup
        @fizzbuzz =
          FizzBuzzValueCommand.new(FizzBuzzType.create(FizzBuzzType::TYPE_03))
      end

      describe '三の倍数の場合' do
        def test_3を渡したら文字列3を返す
          assert_equal '3', @fizzbuzz.execute(3).value
        end
      end

      describe '五の倍数の場合' do
        def test_5を渡したら文字列5を返す
          assert_equal '5', @fizzbuzz.execute(5).value
        end
      end

      describe '三と五の倍数の場合' do
        def test_15を渡したら文字列FizzBuzzを返す
          assert_equal 'FizzBuzz', @fizzbuzz.execute(15).value
        end
      end

      describe 'その他の場合' do
        def test_1を渡したら文字列1を返す
          assert_equal '1', @fizzbuzz.execute(1).value
        end
      end
    end

    describe 'それ以外のタイプの場合' do
      def setup
        @fizzbuzz = FizzBuzzType
      end

      def test_例外を返す
        e =
          assert_raises RuntimeError do
            @fizzbuzz.create(4)
          end

        assert_equal '該当するタイプは存在しません', e.message
      end
    end
  end

  describe 'FizzBuzzValue' do
    def setup
      @fizzbuzz =
        FizzBuzzValueCommand.new(FizzBuzzType.create(FizzBuzzType::TYPE_01))
    end

    def test_同じ値
      value1 = @fizzbuzz.execute(1)
      value2 = @fizzbuzz.execute(1)

      assert value1.eql?(value2)
    end

    def test_to_string
      value = @fizzbuzz.execute(3)

      assert_equal '3:Fizz', value.to_s
    end
  end

  describe 'FizzBuzzList' do
    def setup
      @fizzbuzz =
        FizzBuzzValueListCommand.new(FizzBuzzType.create(FizzBuzzType::TYPE_01))
    end

    def test_新しいインスタンスが作られる
      list1 = FizzBuzzList.new(@fizzbuzz.execute(50))
      list2 = list1.add(@fizzbuzz.execute(50))

      assert_equal 50, list1.value.count
      assert_equal 100, list2.value.count
    end
  end
end

class FizzBuzzType
  TYPE_01 = 1
  TYPE_02 = 2
  TYPE_03 = 3

  def self.create(type)
    case type
    when TYPE_01
      FizzBuzzType01.new
    when TYPE_02
      FizzBuzzType02.new
    when TYPE_03
      FizzBuzzType03.new
    else
      raise '該当するタイプは存在しません'
    end
  end

  def self.value_of(type)
    case type
    when '1' then TYPE_01
    when '2' then TYPE_02
    when '3' then TYPE_03
    else
      TYPE_01
    end
  end

  def isFizz(number)
    number.modulo(3) == 0
  end

  def isBuzz(number)
    number.modulo(5) == 0
  end
end

class FizzBuzzType01 < FizzBuzzType
  def generate(number)
    if isFizz(number) && isBuzz(number)
      return FizzBuzzValue.new(number, 'FizzBuzz')
    end
    return FizzBuzzValue.new(number, 'Fizz') if isFizz(number)
    return FizzBuzzValue.new(number, 'Buzz') if isBuzz(number)
    FizzBuzzValue.new(number, number.to_s)
  end
end

class FizzBuzzType02 < FizzBuzzType
  def generate(number)
    FizzBuzzValue.new(number, number.to_s)
  end
end

class FizzBuzzType03 < FizzBuzzType
  def generate(number)
    if isFizz(number) && isBuzz(number)
      return FizzBuzzValue.new(number, 'FizzBuzz')
    end
    FizzBuzzValue.new(number, number.to_s)
  end
end

class FizzBuzzValue
  attr_reader :number, :value

  def initialize(number, value)
    raise '値は正の値のみ有効です' if number < 0

    @number = number
    @value = value
  end

  def as_json(options = {})
    { number: @number, value: @value }
  end

  def to_json(*options)
    as_json(*options).to_json(*options)
  end

  def to_s
    "#{@number}:#{@value}"
  end

  def ==(other)
    @number == other.number && @value == other.value
  end

  alias eql? ==
end

class FizzBuzzList
  attr_reader :value

  def initialize(list)
    raise '100件より多く保持できません' if list.count > 100

    @value = list
  end

  def to_s
    @value.to_s
  end

  def add(value)
    FizzBuzzList.new(@value + value)
  end
end

class FizzBuzzCommand
  def execute; end
end

class FizzBuzzValueCommand < FizzBuzzCommand
  def initialize(type)
    @type = type
  end

  def execute(number)
    @type.generate(number)
  end
end

class FizzBuzzValueListCommand < FizzBuzzCommand
  def initialize(type)
    @type = type
  end

  def execute(number)
    FizzBuzzList.new([]).add((1..number).map { |i| @type.generate(i) }).value
  end
end

class FizzBuzzJsonValueListCommand < FizzBuzzCommand
  def initialize(type)
    @type = type
  end

  def execute(number)
    command = FizzBuzzValueListCommand.new(@type)
    { data: command.execute(number) }.to_json
  end
end

class FizzBuzzService
  def initialize(type)
    @value_command = FizzBuzzValueCommand.new(type)
    @list_command = FizzBuzzValueListCommand.new(type)
    @json_list_command = FizzBuzzJsonValueListCommand.new(type)
  end

  def generate(number)
    @value_command.execute(number).value
  end

  def generate_list(number)
    @list_command.execute(number)
  end

  def generate_json_list(number)
    @json_list_command.execute(number)
  end
end