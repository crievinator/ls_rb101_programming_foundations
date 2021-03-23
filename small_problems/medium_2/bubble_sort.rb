=begin

Problem:

- input -> array with unsorted/sorted elements 
- output -> array with sorted elements

Using the buble sort method we have to mutate the original array by sorting it


Examples:

- also for string

Data structure & Algorithm:

- use of <=> for integers & string comparison.
-> -1 if it's smaller, 0 equal, 1 greater

-> if -1, leave it,
-> if 0 , leave it
-> if 1 => SWAP

Extra:

n-1 times 
  go through array and swap elements 
end

If already sorted -> don't run the algorithm
=end


def bubble_sort!(arr)
  elements = arr.length
  iterations = elements - 1

  iterations.times do 
    swapped = ''
    n = iterations

    arr[0..n].each_with_index do |value, index|
      compare = value <=> arr[index + 1] 
      swapped << compare.to_s
      if compare == 1
        arr[index], arr[index+1] = arr[index+1], arr[index]
      end
      n -= 1
    end
    return nil if swapped == '0' * iterations || swapped == '-1' * iterations
  end

  arr
end

bubble_sort!([4,1,2,6,3,10,2,1])


array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

p '----'
p bubble_sort!([1,2,3,4,5,6])
p bubble_sort!([5,5,5,5])