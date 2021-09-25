// print the highest score. e.g studentsScore = [ "Amy" : 88, "James" : 55, "Helen" : 99 ] Then function should print 99 ]


//Don't change this
var studentsAndScores = ["Amy": Int(readLine()!)!, "James": Int(readLine()!)!, "Helen": Int(readLine()!)!]

func highestScore(scores: [String: Int]) {

    let maxScore = studentsAndScores.values.max()
    if maxScore != nil {
        print(maxScore!)
    }
        
  
}
