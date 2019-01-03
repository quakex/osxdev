//
//  ViewController.swift
//  day04
//
//  Created by Xu Ling on 2019/1/2.
//  Copyright © 2019 bitxcat. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSTableViewDataSource, NSTextFieldDelegate {

  var strings = ["apple","banana", "orange", "watermelon"]
  
   @IBOutlet weak var textField: NSTextField!
  @IBOutlet weak var tableView: NSTableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
  }

  override var representedObject: Any? {
    didSet {
    // Update the view, if already loaded.
    }
  }
  
  @IBAction func addFruit(_ sender: Any?) {
    let string = textField.stringValue
    strings.append(string)
    textField.stringValue = ""
    tableView.reloadData()
  }
  // MARK: DataSource

  func numberOfRows(in tableView: NSTableView) -> Int {
    return strings.count
  }

  func tableView(_ tableView: NSTableView, objectValueFor tableColumn: NSTableColumn?, row: Int) -> Any? {
    return strings[row]
  }
  
  func controlTextDidEndEditing(_ obj: Notification) {
    addFruit(nil)
  }
}

