/*
 Daily Coding Problem: Problem #942 [Medium]

 This problem was asked by Google.

 Given a string of parentheses, write a function to compute the minimum number of parentheses to be removed to make the string valid (i.e. each open parenthesis is eventually closed).

 For example, given the string "()())()", you should return 1. Given the string ")(", you should return 2, since we must remove all of them.
*/

class Stack {
    private var arr: [Character] = [Character]()
    
    var top: Character? { return arr.last}
    var count: Int { return arr.count }
    
    // Insert at rear
    func push(elem: Character) { arr.append(elem) }
    
    // Delete at front
    func pop() { if arr.count > 0 { arr.remove(at: 0) } }
}

func minimunParantheses(input: String){
    let stc = Stack()
    for i in input {
        if let top = stc.top, top != i,  i == ")" {
            stc.pop()
        } else {
            stc.push(elem: i)
        }
    }
    print(stc.count)
}

minimunParantheses(input: "()())()")
minimunParantheses(input: ")(")
