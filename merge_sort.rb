#def merge(a, b)
#  seq= []
#  until a.empty? and b.empty?
#    if a.empty?
#    elsif b.empty?
#      seq.push(a.slice!(0..-1)).flatten!
#    elsif a[0] < b[0]
#      seq << a.slice!(0)
#    else
#      seq << b.slice!(0)
#    end
#  end
#  return seq 
#end

def merge(a, b, seq = [])
  return seq.push(b).flatten! if a.empty?
  return seq.push(a).flatten! if b.empty?
  seq << a[0] < b[0] ?  a.slice!(0) : b.slice!(0)
  merge (a, b, seq)
end

def merge_sort(arr)
  return arr if arr.length <= 1
  a = merge_sort(arr.slice!(0, arr.length/2))
  b = merge_sort(arr)
  merge(a, b)
end
