import Algorithms

struct Day01: AdventDay {
    // Save your data in a corresponding text file in the `Data` directory.
    var data: String
    
    var arrays: [[Int]] {
        var array: [[Int]] = [[],[]]
        data.split(separator: "\n").forEach {
            let split = $0.split(separator: "   ")
            array[0].append(Int(split[0])!)
            array[1].append(Int(split[1])!)
        }
        
        return array
    }
    
    func part1() -> Any {
        let sortedFirstArray = arrays[0].sorted(by: <)
        let sortedSecondArray = arrays[1].sorted(by: <)
        
        return sortedFirstArray.enumerated().reduce(0) { $0 + abs($1.element - sortedSecondArray[$1.offset]) }
    }
    
    func part2() -> Any {
        var dict: [String: Int] = [:]
        
        arrays[1].forEach {
            if let value = dict["\($0)"] {
                dict["\($0)"] = value + 1
            } else {
                dict["\($0)"] = 1
            }
        }

        return arrays[0].reduce(0) { $0 + ($1 * (dict["\($1)"] ?? 0)) }
    }
}
