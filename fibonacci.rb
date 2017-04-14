def fibs(n)
  seq = []
  seq << 0 if n >= 1
  seq << 1 if n >= 2
  (n-2).times { seq << seq[-1] + seq [-2] }
  seq
end

def fibs_rec(n, arr = [0])
  return [] if n == 0
  return arr if n == 1
  arr == [0]? arr << 1 : arr << arr[-1] + arr[-2]
  fibs_rec(n-1, arr)
end
