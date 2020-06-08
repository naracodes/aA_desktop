# Learning Goals
# Be able to determine the time and space complexity of a method
# Be able to compare the time complexity of one method to another
# Be able to recognize when time or space complexity can be improved

# Given a list of integers find the smallest number in the list.

# Phase I
# First, write a function that compares each element to every other element
# of the list. Return the element if all other elements in the array are larger.
# What is the time complexity for this function?

def my_min(arr)
    arr.each do |num|
        if arr.all? { |other_num| other_num > num }
            return num
        end
    end
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5






# Phase II
# Now rewrite the function to iterate through the list just once while keeping track
# of the minimum. What is the time complexity?

# def my_min(arr)
#     min = arr.first
#     (1...arr.length - 1).each do |i|
#         if arr[i] < min
#             min = arr[i]
#         end
#     end
#     min
# end



