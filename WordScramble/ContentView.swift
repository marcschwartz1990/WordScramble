//
//  ContentView.swift
//  WordScramble
//
//  Created by Marc-Developer on 8/19/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        Text("Hi")
    }
    
    func test() {
        let word = "swift"
        let checker = UITextChecker()
        
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        let allGood = misspelledRange.location == NSNotFound
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
