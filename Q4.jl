import Base.Char
function isHex(num,array)
isNum = true
for c in num 
    if !(c in array)
        isNum = false
    end
end
return isNum
end
function hexToInt(num)
i = 1
res = zeros(Int, length(num))
    for c in num

        if 'a'<= c <= 'f'
            res[i] = Int(c-'a') + 10 
        elseif '0' <= c <= '9'
            res[i] = c-48
        end
    i = i+1
    end
    return res
end
function intToHex(num)
    i = 1
    hexVec = ""
    for c in num
        
        if 10 <= c <= 15
            hexVec *= string(Base.Char(c-10+Int('a'))) 
        elseif 0 <= c <= 9
            hexVec *= string(c)
        end
    i = i+1
    end
    return hexVec
end
function addHex(num1,num2)
    carry = 0
    maxSize = max(length(num1),length(num2))
    a = hexToInt(num1)
    b = hexToInt(num2)
    res = zeros(Int, maxSize)
    
    if maxSize > 10 
        println("addition overflow")
        error("sum cant be more than 10 digits")
    end
    for i in 1:maxSize
        res[(maxSize+1)-i] = (a[(maxSize+1)-i] + b[(maxSize+1)-i] + carry) % 16
        carry = (a[(maxSize+1)-i] + b[(maxSize+1)-i]) ÷ 16
        
    end
    hexsum = intToHex(res)
    return hexsum

end
hexArray = ['0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f']
while true
println("Please enter a hex number: ")
hexNum1 = readline()
println("Please enter a second hex number: ")
hexNum2 = readline()
isnum1 = isHex(hexNum1,hexArray)
isnum2 = isHex(hexNum2,hexArray)
if hexNum1 == "quit"
    break
end
if hexNum2 == "quit"
    break
end
if isnum1 == false
    error(" num 1 is not a valid hex number")
    break
end
if isnum2 == false
    error(" num 2 is not a valid hex number")
    break
end
hexSum = addHex(hexNum1,hexNum2)
println()
println("The addition is :")
println(hexSum)
println()
end
