//
//  UIImageCanvasExtendingTestViewController.swift
//  Example
//
//  Created by Ho Lun Wan on 31/1/2021.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation
import Then
import TinyConstraints
import LotsOfExtensions

class UIImageCanvasExtendingTestViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		
		let scrollView = UIScrollView()
		let contentStackView = UIStackView()
		let titleLabel1 = UILabel()
		let imgView1 = UIImageView(image: UIImage(named: "baseline_face_black_48pt"))
		let titleLabel2 = UILabel()
		let imgView2 = UIImageView(image: UIImage(named: "baseline_face_black_48pt")?.withCanvasExtended(to: CGSize(width: 130, height: 160)))

		view.do({
			$0.addSubview(scrollView.then({
				$0.addSubview(contentStackView.then({
					$0.addArrangedSubview(titleLabel1)
					$0.addArrangedSubview(imgView1)
					$0.setCustomSpacing(16, after: imgView1)
					
					$0.addArrangedSubview(titleLabel2)
					$0.addArrangedSubview(imgView2)
					$0.setCustomSpacing(16, after: imgView2)
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
		
		imgView1.do({
			$0.backgroundColor = .systemYellow
		})
		
		titleLabel2.do({
			$0.text = String(format: "Canvas extended to %.0fx%.0f", (imgView2.image?.size.width ?? 0), (imgView2.image?.size.height ?? 0))
		})

		imgView2.do({
			$0.backgroundColor = .systemYellow
		})
		
	}
}

