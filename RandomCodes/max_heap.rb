def left(i)
  2*i
end

def right(i)
  2 * i + 1
end


def maxheap(a, i)
  maior = nil

  l = left(i) - 1
  r = right(i) - 1

  i = i-1


  if l <= a.size && a[l] > a[i]
    maior = l 
  else
    maior = i
  end

  if r <= a.size && a[r] > a[maior]
    maior = r
  end

  if maior != i
    a[i], a[maior] = a[maior], a[i]
    maxheap(a, maior)
  end
end

a = [1,2,3,4,5,6,7]


a.each_with_index {|v, i| maxheap(a, i + 1)}

puts a
