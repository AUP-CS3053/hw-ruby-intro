# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    res = 0
    for i in arr do
        res += i
    end
    res
end

def max_2_sum arr
    arr.max(2).sum
end

def sum_to_n? arr, n
    # if arr.empty?
    #     return false
    # end
    res = false
    arr.each do |a|
        arr.each do |b|
            if a + b == n && a != b # a != b small hack
                res = true
                break
            end
        end
    end
    res
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
    /^[^aeiou\W]/i.match(s)
end

def binary_multiple_of_4? s
    if !(/^[01]{1,}$/.match(s))
        return false
    end
    a = 0
    s.split('').each_with_index do |val, i|
        if val == "1"
            a += 2 ** (s.length - i - 1)
        end
    end
    puts a
    a % 4 == 0
end
 
# Part 3

class BookInStock

    def initialize(isbn, price)
        if price <= 0 || isbn.empty?
            raise ArgumentError
        end

        @isbn = isbn
        @price = price
    end

    def price_as_string
        "$%0.2f" % [@price]
    end

    def isbn
        @isbn
    end

    def isbn= (isbn)
        @isbn = isbn
    end

    def price
        @price
    end

    def price= (price)
        @price = price
    end

    
end
