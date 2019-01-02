//
//  ViewController.swift
//  day03
//
//  Created by Xu Ling on 2019/1/2.
//  Copyright © 2019 bitxcat. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSCollectionViewDataSource {

  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
  }

  override var representedObject: Any? {
    didSet {
    // Update the view, if already loaded.
    }
  }

  func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
    return 3
  }

  func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
    let item = collectionView.makeItem(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: "LabelCollectionViewItem"), for: indexPath)
    return item
  }
}

