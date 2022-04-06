# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
# The sum of these multiples is 23. Find the sum of all the multiples of 3 or 5 below 1000.

function ∑(xs) 
    count = 0

    for x in xs
        count += x
    end

    return count
end

function ∑(x, y) 
    return x + y
end

range = 1:999

multiples_of_three = [x for x in range if x % 3 == 0]
multiples_of_five  = [x for x in range if x % 5 == 0 && x % 3 != 0]

∑(∑(multiples_of_three), ∑(multiples_of_five))