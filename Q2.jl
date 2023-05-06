let
    print("Enter positive integer: ")
    input_str = readline()
    n = parse(Int, input_str)
    if n < 1
        println("Input must be a positive integer.")
    else
        start = 1
    end

        for i in 1:n
            for j in 1:i
                if start > n
                    break
                end
                if j > 1
                    print(", ")
                end
                print(start)
                start += 1
            end

            println()
        end
    end

