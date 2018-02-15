class myMath {
    let pi : Double
    
    init() {
        pi = evaluatePi(count: 1000)
    }
    
    func factorial(number: Int) -> Int {
        //        if number == 1 {
        //            return number
        //        }
        //        return number*factorial(number-1)
        if number<1 {
            return 0
        }
        var n = 1
        for i in 1...number {
            n *= i
        }
        return n
    }
    
    func power(basic: Int, pow: UInt) -> Int {
        var rezult = 1
		if pow == 0 {
			return rezult
		}
        for _ in 1...pow {
            rezult *= basic
        }
        return rezult
    }
    
    func power(basic: Double, pow: UInt) -> Double {
        var rezult = 1.0
		if pow == 0 {
			return rezult
		}
        for _ in 1...pow {
            rezult *= basic
        }
        return rezult
    }
    
    func evaluatePi(count: Int) -> Double {
        // rezult = 4/1 - 4/3 + 4/5 - 4/7 + 4/9 ряд Лейбница
        let four = 4.0
        var prostoe = 0
        var rezult = 0.0
        for c in 1...count {
            while true {
                prostoe += 1
                if prostoe%2==0 {
                    continue
                } else {
                    break
                }
            }
            let sign = c%2==0 ? -1.0 : 1.0
            rezult = rezult + sign * four / Double(prostoe)
        }
        return rezult
    }
    
    func root(number: Int, index: UInt = 2) -> Int {
        var num = number
        var pow = 0
        repeat {
            num = num/2
            pow = power(basic: num, pow: index)
        } while pow > number
        
        while pow<number {
            num += 1
            pow = power(basic: num, pow: index)
        }
        if pow > number {
            num -= 1
        }
        
        return num
    }
    
    func root(number: Double, index: UInt = 2) -> Double {
        var num = number
        var pow = 0.0
        repeat {
            num = num/2
            pow = power(basic: num, pow: index)
        } while pow > number
        
        while pow<number {
            num += 1
            pow = power(basic: num, pow: index)
        }
        if pow > number {
            num -= 1
        }
        
        return num
    }

}
