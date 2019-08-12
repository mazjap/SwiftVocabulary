//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Jordan Christensen on 8/12/19.
//  Copyright © 2019 Mazjap Co Technologies. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var definition: UILabel!
    
    var def:VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    func updateViews() {
        if let def = def {
            definition.text = def.definition
            title = def.word
        }
        
    }
}
