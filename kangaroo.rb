def kangaroo(x1, v1, x2, v2)
  return "NO" if (x2 >= x1) && (v2 >= v1)
  
  velocity = (v2 - v1).abs
  distance = (x1 - x2).abs
  jumps = distance % velocity
  
  if jumps == 0
      return "YES"
  else
      return "NO"
  end
end
