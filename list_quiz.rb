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

def seriesup(count)
    series = []
    first = 1
    count.times do |i| 

        series.push(first)
        i.times do |j|      
                series.push(j + 2)
        end
    end
    print series
end
#J is the variable wanted to push. but first, you must add a few to compensate for the fact that it can't start at 0. If I don't do that, it goes [1,1,0,1,0,1,1,0,1,2], which isn't correct.
#First j = 0   J + 1 is one, printing 1,1.  J + 2 = 2, which is the first number I want to add past 1. 
puts three_even?([2, 1, 3, 5])
puts three_even?([2, 4, 12, 5])
puts three_even?([2, 1, 4, 6])
puts three_even?([1, 4, 6, 4])
puts three_even?([])
puts "\n"
puts "\n"
puts bigger_two([1, 2], [3, 4])
puts bigger_two([1, 7], [4, 4])
puts bigger_two([1, 7], [2, 4])
puts "\n"
puts "\n"
puts seriesup(1)
puts seriesup(2)
puts seriesup(3)
puts seriesup(4)
puts seriesup(5)