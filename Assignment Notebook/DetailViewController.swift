//
//  DetailViewController.swift
//  Assignment Notebook
//
//  Created by tbredemeier on 6/21/18.
//  Copyright © 2018 tbredemeier. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var subjectTextField: UITextField!
    @IBOutlet weak var dueDateTextField: UITextField!
    @IBOutlet weak var detailTextField: UITextField!
    var detailItem: Assignment? {
        didSet {
            // Update the view.
            configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item
        if let assignment = self.detailItem {
            if titleTextField != nil {
                titleTextField.text = assignment.title
                subjectTextField.text = assignment.subject
                dueDateTextField.text = assignment.dueDate
                detailTextField.text = assignment.detail
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillDisappear(_ animated: Bool) {
        if let assignment = self.detailItem {
            assignment.title = titleTextField.text!
            assignment.subject = subjectTextField.text!
            assignment.dueDate = dueDateTextField.text!
            assignment.detail = detailTextField.text!
        }
    }

}

