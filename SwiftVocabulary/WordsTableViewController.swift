//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Jordan Christensen on 8/12/19.
//  Copyright © 2019 Mazjap Co Technologies. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    
    var wordList: [VocabularyWord] = [VocabularyWord(word: "Struct", definition: "A data structure, serves to group a number of fields. Is passed by value rather than by reference"),
                                      VocabularyWord(word: "Class", definition: "A data structure, serves to group a number of fields. Is passed by reference rather than by value"),
                                      VocabularyWord(word: "Enum", definition: "(Enumeration), A set of named constants"),
                                      VocabularyWord(word: "var", definition: "Declaration prefix of mutable varible"),
                                      VocabularyWord(word: "let", definition: "Declaration prefix of unmutable constant"),
                                      VocabularyWord(word: "Bool", definition: "A value that is either true or false")
    ]
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return wordList.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        let word = wordList[indexPath.row]
        
        cell.textLabel?.text = word.word
        
        return cell
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "ShowDefinitionSegue") {
            guard let indexPath = tableView.indexPathForSelectedRow, let definitonVC = segue.destination as? DefinitionViewController else { return }
            let word = wordList[indexPath.row]
            definitonVC.word = word
            
        }
    }
    
}
