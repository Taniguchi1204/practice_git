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

p (1..100).step(5)



