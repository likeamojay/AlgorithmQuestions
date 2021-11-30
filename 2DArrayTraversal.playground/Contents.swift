// Given a (n*m) 2D array, write a function that returns every possible path to get from the top-left corner to the bottom-right corner, moving only down or right.

// Example input:
// [[a,b],
//  [c,d],
//  [e,f]]

// Example output:
// [[a, b, d, f], [a, c, d, f], [a, c, e, f]]

var array = [["a","b","c"],
            ["d","e","f"],
            ["h","i","j"]]

var result = [[String]]()

func everyPossiblePath( history : [String], x : Int, y : Int) {
    
    var history = history
    
    // Recursion Base Case
    if x == array.count - 1 && y == array[0].count - 1  {
        history.append(array[x][y])
        result.append(history)
        return
    }
    
    // If there are still row items we haven't visited
    if x < array.count - 1 {
        everyPossiblePath(history: history + [array[x][y]], x: x + 1, y: y)
    }
    
    // If there are still column items we haven't visited
    if y < array[0].count - 1  {
        history.append(array[x][y])
        everyPossiblePath(history: history, x: x, y: y + 1)
    }
}

print(everyPossiblePath(history: [String](), x: 0, y: 0))

print("result : " + result.debugDescription)
