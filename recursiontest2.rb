def recursive(a=[], count=0)
  a.push(count)
  if a.last != 6
    recursive(count+2)
    recursive(count+3)
  end
end