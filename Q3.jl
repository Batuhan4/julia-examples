let 
    println("Size: ")
    size = parse(Int,readline())
    println("Seed: ")
    seed = parse(Int,readline())
    maxNum = (size+seed)
    runCount = size
    counter = seed
    temp = 0 
    for i in 1:runCount
        temp = i
        for j in 1:runCount
            if (temp-1)>0
            temp = temp -1
            print(" ")

            else
                if counter >= maxNum
                    counter = seed
                end
                print(counter)
                counter = counter +1
            end
            print("     ")

        end
        println()
    end
    
end