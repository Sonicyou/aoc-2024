import Algorithms
import Collections
import Foundation

struct Day03: AdventDay {
    var data: String
    
    func part1() -> Any {
        return sumWithRegex(data: data)
    }
    
    func part2() -> Any {
        var mutableData = data
        let clearRegex = /don't\(\).*?do\(\)/
        
        mutableData = mutableData.filter({ $0 != " " && $0 != "\t" && $0 != "\n"})
        mutableData.replace(clearRegex, with: "")
        
        return sumWithRegex(data: mutableData)
    }
    
    private func sumWithRegex(data: String) -> Int {
        let regex = /mul[(](\d+)[,](\d+)[)]/
        var sum = 0
        data.matches(of: regex).forEach({
            sum += Int($0.1)! * Int($0.2)!
        })
        
        return sum
    }
}
