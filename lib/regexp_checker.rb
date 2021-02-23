print 'Text?: '
text = gets.chomp
begin
  print 'Pattern?: '
  pattern = gets.chomp
  regexp = Regexp.new(pattern)
rescue RegexpError => e
  puts "Invalid pattern: #{e.message}"
  retry
end

matches = text.scan(regexp)
if matches.empty?
  puts "Nothing matched"
  return
end

puts "Matched: #{matches.join(', ')}"
