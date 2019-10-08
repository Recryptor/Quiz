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

def bigger_two(list, list2)
    sum1 = list[0] + list[1]
    sum2 = list2[0] + list2[1]

    if sum1 > sum2 || sum1 = sum2
        print list
    elsif sum1 < sum2
        print list2
    end
end



puts bigger_two([1, 2], [3, 4])
puts bigger_two([1, 7], [4, 4])
puts bigger_two([1, 7], [2, 4])


puts three_even?([2, 1, 3, 5])
puts three_even?([2, 4, 12, 5])
puts three_even?([2, 1, 4, 6])
puts three_even?([1, 4, 6, 4])
puts three_even?([])

puts "\n"
puts "\n"
puts "\n"
puts "\n"
