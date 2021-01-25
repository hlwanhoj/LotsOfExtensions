import UIKit
import PlaygroundSupport
import LotsOfExtensions

let img = UIImage.colored(.systemYellow, size: CGSize(width: 40, height: 40))
let img2 = UIImage(named: "doge.png")
let img3 = img2?.scaled(toWidth: 100)
let img4 = img2?.scaled(toHeight: 250)
let img5 = img2?.scaled(to: CGSize(width: 100, height: 200))
PlaygroundPage.current.liveView = UIImageView(image: img)
