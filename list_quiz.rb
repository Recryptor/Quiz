#Can use push, each, times, size, and push

def three_even?(list)
    n1 = 0
    n2 = 0
    n3 = 0
    list.each do |n|
        if n % 2 == 0 && n1 == 1 && n2 == 1
            return true
        elsif n % 2 == 0 && n1 == 1
            n2 = 1
        elsif n % 2 == 0
            n1 = 1
        elsif n % 2 != 0
            n1 = 0
            n2 = 0
            n3 = 0
        end
    end
    return false

end

puts three_even?([2, 1, 3, 5])
puts three_even?([2, 4, 12, 5])
puts three_even?([2, 1, 4, 6])
puts three_even?([1, 4, 6, 4])
puts three_even?([])