//
//  ViewController.swift
//  EasyAttributedString
//
//  Created by 高海洋 on 16/2/15.
//  Copyright © 2016年 ghy. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    let rows = ["Custom font","Background and foreground color","Custom kern","Text with underline","Text with strikethrough","Text with shadow",
                "Text with texteffect","Set baseline offset","Set expansion","Set obliqueness","Text with stroke"]

    override func viewDidLoad() {
        super.viewDidLoad()
        let table = UITableView(frame: self.view.bounds)
        table.separatorStyle = UITableViewCellSeparatorStyle.singleLine
        table.dataSource = self
        table.delegate = self
        table.allowsSelection = false
        self.view.addSubview(table)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        let str = EasyAttributedStringBuilder(str: rows[indexPath.row])
        switch indexPath.row {
        case 0:
            str.firstCharacter().setFont(UIFont.systemFont(ofSize: 22)).setTextColor(UIColor.blue)
        case 1:
            str.allRange().setBackgroundColor(UIColor.orange).setTextColor(UIColor.white)
        case 2:
            str.rangeOfString("kern").setKern(10)
        case 3:
            str.allRange().setUnderlineStyle(.styleDouble).setUnderlineColor(UIColor.brown)
        case 4:
            str.allRange().setStrikethroughStyle(.styleThick).setStrikethroughColor(UIColor.brown)
        case 5:
            let shadow = NSShadow()
            shadow.shadowBlurRadius = 3
            shadow.shadowColor = UIColor.blue
            shadow.shadowOffset = CGSize(width: 5, height: 5)
            str.allRange().setShadow(shadow)
        case 6:
            str.allRange().setTextEffect()
        case 7:
            str.rangeWith(7, length: 4).setBaselineOffset(-5)
        case 8:
            str.allRange().setExpansion(0.7)
        case 9:
            str.allRange().setObliqueness(0.9)
        case 10:
            str.rangeOfString("Stroke", option: .caseInsensitive).setStrokeColor(UIColor.green).setStrokeWidth(5)
        default:
            break
        }
        cell?.textLabel?.attributedText = str.build()
        return cell!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

