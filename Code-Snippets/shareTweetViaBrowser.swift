let tweetText = "your text"
let tweetUrl = "http://stackoverflow.com/"

let shareString = "https://twitter.com/intent/tweet?text=\(tweetText)&url=\(tweetUrl)"

// encode a space to %20 for example
let escapedShareString = shareString.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!

// cast to an url
let url = URL(string: escapedShareString)

// open in safari
UIApplication.shared.openURL(url!)