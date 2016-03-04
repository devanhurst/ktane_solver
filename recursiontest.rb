def recursive(s='123', count=4)
  puts s
  s += count.to_s
  if s[-1] != '6'
    recursive(s, count+2)
    recursive(s, count+4)
  end
end

recursive