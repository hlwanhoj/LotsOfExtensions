//
//  UIImageScalingTestViewController.swift
//  Example
//
//  Created by hlwanhoj on 31/1/2021.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import Then
import TinyConstraints
import LotsOfExtensions

class UIImageScalingTestViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		
		let scrollView = UIScrollView()
		let contentStackView = UIStackView()
		let titleLabel1 = UILabel()
		let imgView1 = UIImageView(image: UIImage(named: "baseline_face_black_48pt"))
		let titleLabel2 = UILabel()
		let imgView2 = UIImageView(image: UIImage(named: "baseline_face_black_48pt")?.scaled(to: CGSize(width: 130, height: 60)))
		let titleLabel3 = UILabel()
		let imgView3 = UIImageView(image: UIImage(named: "baseline_face_black_48pt")?.scaled(toWidth: 160))
		let titleLabel4 = UILabel()
		let imgView4 = UIImageView(image: UIImage(named: "baseline_face_black_48pt")?.scaled(toHeight: 80))

		view.do({
			$0.addSubview(scrollView.then({
				$0.addSubview(contentStackView.then({
					$0.addArrangedSubview(titleLabel1)
					$0.addArrangedSubview(imgView1)
					$0.setCustomSpacing(16, after: imgView1)
					
					$0.addArrangedSubview(titleLabel2)
					$0.addArrangedSubview(imgView2)
					$0.setCustomSpacing(16, after: imgView2)
					
					$0.addArrangedSubview(titleLabel3)
					$0.addArrangedSubview(imgView3)
					$0.setCustomSpacing(16, after: imgView3)
					
					$0.addArrangedSubview(titleLabel4)
					$0.addArrangedSubview(imgView4)
					$0.setCustomSpacing(16, after: imgView4)
					
				}))
			}))
		})
		
		scrollView.do({
			$0.contentInset.top = 24
			$0.contentInset.bottom = 24
			$0.edgesToSuperview()
		})
		
		contentStackView.do({
			$0.axis = .vertical
			$0.alignment = .center
			$0.edgesToSuperview()
			$0.widthToSuperview()
		})
		
		titleLabel1.do({
			$0.text = "Default"
		})
		
		titleLabel2.do({
			$0.text = String(format: "Scaled to %.0fx%.0f", (imgView2.image?.size.width ?? 0), (imgView2.image?.size.height ?? 0))
		})
		
		titleLabel3.do({
			$0.text = String(format: "Proportionally scaled to width %.0f", (imgView3.image?.size.width ?? 0))
		})
		
		titleLabel4.do({
			$0.text = String(format: "Proportionally scaled to height %.0f", (imgView4.image?.size.height ?? 0))
		})
	}


}

