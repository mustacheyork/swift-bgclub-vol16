//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

let swift_bg: [String] = ["すごい", "あつい", "いけてる", "ビビット", "くーる",
                          "やばい", "なう", "おしゃんてぃ", "つよい", "ふが", "夏",
                          "hoge", "きたー", "すいふと", "つよい", "すいふてぃ", "サマー",
                          "祭り", "フェス", "hoge", "つよい", "つばめ", "たのしい"]

class ViewController: UITableViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .whiteColor()
    view.frame =  CGRectMake(0, 0, 100, 80)
  }
}

extension ViewController {
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 20
  }
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = UITableViewCell()
    cell.textLabel?.text = "Switビギナーズ倶楽部 \(swift_bg[indexPath.row])"
    return cell
  }
}

XCPlaygroundPage.currentPage.liveView = ViewController()