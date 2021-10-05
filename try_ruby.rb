def fizz_buzz(number)
  if number % 15 == 0
    "fizz_buzz"
  elsif number % 5 == 0
    "Buzz"
  elsif number % 3 == 0
    "Fizz"
  else
    number.to_s
  end
end

# １４を３で割ったときの結果と余りを表示
p 14.divmod(3)

# aとbに配列を代入することができる
a, b = 14.divmod(3)
puts "#{a}　余り#{b}"

number = [1,2,3,4,5,6,7,8,11,12,13,26]

# ブロックの中の結果を反映させて配列を削除（ここでは奇数を削除する）
def delete_number(number)
  number.delete_if { |n| n.odd? }
  p number
end

delete_number(number)

def even_number(number)
  sum = 0
  number.each do |n|
    # ？を使うことで真の時(n * 10)：偽の時はnを返す
    sum_value = n.even? ? n * 10 : n
    sum += sum_value
  end
  p sum
end

even_number(number)

# mapメソッドでは結果を配列にして返す
def map_number(number)
  number_new = number.map { |n| n * 10 }
  p number_new
end

map_number(number)

# selectメソッドでは真の値を返し、rejectメソッドでは偽の値を返す
def reject_number(number)
  even_number = number.reject { |n| n.even? }
  p even_number
end

reject_number(number)

# selectメソッドでは真の値を返し、rejectメソッドでは偽の値を返す
def select_number(number)
  multiples_of_three = number.select { |n| n % 3 == 0 || n.to_s.include?("3")}
  p multiples_of_three
  p multiples_of_three.count
end

select_number(number)

# findメソッドでは最初に見つかった値を取得
def find_number(number)
  even_number = number.find { |n| n.even? }
  even_number
end

find_number(number)

# injectメソッドはresultに引数の初期値が入る。その後は結果が入る
def inject_number(number)
  sum = number.inject(0) {|result, n| result + n }
  p sum
end

inject_number(number)

p 'Ruby'.chars
p 'Ruby Java Perl'.split(' ')



a = [1,2,3,4,5]
b = [1,2,3,4]
# 和集合
p a | b
# 差集合
p a - b
# 席集合
p a & b

# 添字をつける
number.each_with_index {|number, i| puts "#{i}: #{number}"}
# １から始める場合は引数を与える
number.each.with_index(1) {|number, i| puts "#{i}: #{number}"}

# each以外にも添字をつけることができる
a = number.map.with_index(1) {|number, i| "#{i}: #{number}"}
p a

# 配列に配列が入った値を変数に格納する
dimension = [[10,20],[30,40],[50,60]]
dimension.each.with_index(1) {|(length, width), i| p "length: #{length}, width: #{width}, i: #{i}"}

names = ["田中","斉藤","鈴木"]
a = names.map { |name| "#{name}さん"}.join("と")
puts a

text = <<TEXT
  03-9999-9999
TEXT

p text.scan /\d\d-\d\d\d\d-\d\d\d\d/

html = <<-HTML
<select name="game_console">
<option value="none"></option>
<option value="wii_u" selected>Wii U</option>
<option value="ps4">プレステ4</option>
<option value="gb">ゲームボーイ</option>
</select>
HTML

replaced = html.gsub(/<option value="(\w+)"(?: selected)?>(.*?)<\/option>/, '\1,\2')
puts replaced


p "123-4567" =~ /\d{3}-\d{4}/

text = "私の誕生日は1995年12月04日です"
a = text.match(/(?<year>\d+)年(\d+)月(\d+)日/)
puts a[0]
puts a[:year]