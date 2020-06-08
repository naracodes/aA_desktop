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
    (0...arr.length - 1).each do |i|
        ((i + 1)...arr.length).each do |j|
            if arr[i] >
                
            end
        end
    end
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
my_min(list)  # =>  -5
