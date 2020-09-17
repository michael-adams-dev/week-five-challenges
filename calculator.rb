module Calculator
    def Calculator.add(num1, num2)
        return num1 + num2
    end

    def Calculator.subtract(num1, num2)
        return num1 - num2
    end

    def Calculator.multiply(num1, num2)
        return num1 * num2
    end

    def Calculator.divide(num1, num2)
        return num1 / num2
    end
end

def sum_and_difference(num1,num2)
    sum = Calculator.add(num1, num2)

    diff = Calculator.subtract(num1, num2)

    sum_and_diff = {:sum => sum, :difference => diff.abs()}

    return sum_and_diff
end

def multiply_all(values)
    product = values[0]

    counter = 0

    while counter < values.size - 1
        product = Calculator.multiply(product, values[counter + 1])

        counter += 1
    end

    return product 
end

sum_and_difference(9, 20)
