// string with leading and trailing whitespaces
var text1 = " hello "

// result "hello"
let trimmedText1 = text1.trimmingCharacters(in: .whitespaces)

// string which contains whitespaces
var text2 = "h e l l o"

// result "hello"
let trimmedText2 = text2.replacingOccurrences(of: " ", with: "")
