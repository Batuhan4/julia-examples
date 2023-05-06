let 
    print("How many integers? ")
n = parse(Int64, readline())
evenSum = 0
evenMax = 0

for i in 1:n
    print("Next integer? ")
    x = parse(Int64, readline())
    if x % 2 == 0
        evenSum += x
    end
        if x > evenMax && x%2 ==0
            evenMax = x
        end
    end

println("Even sum = $evenSum, even max = $evenMax")
end