using Pkg
using Primes

function main()
    problem5()
end
function problem1()
    numbers = Vector{Integer}()
    for i in range(3,999)
        if i % 3 == 0 || i % 5 == 0
            push!(numbers, i)
        end
    end

    total = sum(numbers)
    print("Sum of all the multiples of 3 or 5 below 1000: ")
    print(total)
end

function problem2()
    fibonacci = Vector{Integer}()
    push!(fibonacci, 1)
    push!(fibonacci, 2)
    count = 0 
    pos = 3

    while 1 == 1
        count = fibonacci[pos-1]
        count += fibonacci[pos-2]
        if count >= 4000000
            break
        end
        push!(fibonacci, count)
        pos += 1
    end

    total = 0
    for i in eachindex(fibonacci)
        if fibonacci[i] % 2 == 0
            total += fibonacci[i]
        end
    end
    print("The sum of the even-valued terms in the Fibonacci sequence whose values do not exceed four million: ")
    print(total)
end

function problem3()
    number = 600851475143
    factors = factor(number)
    for key in sort(collect(keys(factors)))
        println("$key => $(factors[key])")
    end
end

function problem4()
    biggest = 0
    current = 0
    for i in range(800,999)
        for j in range(800, 999)
            current = i * j
            if digits(current) == reverse(digits(current)) && current > biggest
                biggest = current
            end
        end
    end
    print("Biggest palindromic number: $biggest")
end

function problem5()
    for i in range(20, 1000000000, step=20)
        factors = 0
        for j in range(1,20)
            divide = i % j
            if divide == 0
                factors += 1
            end
            if factors == 20
                println("Numbers divisible by 1-20: $i")
                
            end
        end
    end

end
main()