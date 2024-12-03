import Algorithms

struct Day02: AdventDay {
    // Save your data in a corresponding text file in the `Data` directory.
    var data: String
    
    var entities: [[Int]] {
        data.split(separator: "\n").map {
            $0.split(separator: " ").compactMap { Int($0) }
        }
    }
    
    func part1() -> Any {
        var goodCount = 0
        entities.forEach {
            goodCount += isSatisfy(array: $0) ? 1 : 0
        }
        
        return goodCount
    }
    
    func part2() -> Any {
        var counter = 0

        entities.forEach {
            if isSatisfy(array: $0) {
                counter += 1
            } else {
                let fullArray = $0
                for elem in $0.enumerated() {
                    var arr = fullArray
                    arr.remove(at: elem.offset)
                    if isSatisfy(array: arr) {
                        counter += 1
                        break
                    }
                }
            }
        }
        
        return counter
    }
    
    func isSatisfy(array: [Int]) -> Bool {
        var initial = true
        var decreasing = false
        var previous: Int? = nil
        var allSatisfy = false
        
        for current in array {
            if previous == nil {
                previous = current
            } else {
                if initial {
                    initial = false
                    decreasing = current < previous!
                    if abs(current - previous!) < 4 && abs(current - previous!) != 0 {
                        allSatisfy = true
                    } else {
                        allSatisfy = false
                        break
                    }
                    previous = current
                } else if decreasing == (current < previous!) {
                    if abs(current - previous!) < 4 && abs(current - previous!) != 0 {
                        allSatisfy = true
                    } else {
                        allSatisfy = false
                        break
                    }
                    previous = current
                } else {
                    allSatisfy = false
                    break
                }
            }
        }
        
        return allSatisfy
    }
}
