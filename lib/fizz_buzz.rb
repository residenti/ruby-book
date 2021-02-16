# 3で割り切れる -> 'Fizz'
# 5で割り切れる -> 'Buzz'
# 15で破り消えれる -> 'FizzBuzz'
def fizz_buzz(n)
  if (n % 15).zero?
    'FizzBuzz'
  elsif (n % 3).zero?
    'Fizz'
  elsif (n % 5).zero?
    'Buzz'
  else
    n.to_s
  end
end
