def fizz_buzz(number)
  if number % 15 == 0
    "FizzBuzz"
  elsif number % 3 == 0
    "Fizz"
  elsif number % 5 == 0
    "Buzz"
  else
    number.to_s
  end

  #"Fizz, #{number}!"
  #"Buzz, #{number}!"
  #"FizzBuzz, #{number}!"
  #自分の回答　greeting.rbの形式にとらわれ過ぎ、、if、elrif、elseなどの式もふんだんに使う


end

puts "数字を入力してください。"

input = gets.to_i

puts "結果は..."
puts fizz_buzz(input)

#「3と5の両方で割り切れる数値」をどのような条件で表現するか、と、「条件式の順番」 の２つがこの問題の重要ポイントになる

#「3と5の両方で割り切れる数値」をどのような条件で表現するか
#3で割り切れる数値（＝3の倍数）かつ、5で割り切れる数値（＝5の倍数）は、15で割り切れる数値（＝15の倍数）なので、number % 15 == 0と書くことができる
#実は、number % 3 == 0 && number % 5 == 0と書いても同じ結果になる。
#どちらでも正解だが、前者の方が記述量が少なく、スッキリして見える

#15の倍数は、3でも5でも割り切れる数値です。
#つまり、「条件式の順番」は、number % 3 == 0やnumber % 5 == 0を先に書いてしまうと、そちらが先にtrueで評価され、期待どおりの挙動をしなくなってしまう
#そのため、number % 15 == 0を条件分岐の先頭に持ってくる必要がある