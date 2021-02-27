//
//  Bundle+InfoPlist.swift
//  LotsOfExtensions
//
//  Created by Ho Lun Wan on 2/2/2021.
//

import Foundation

extension Bundle {
	/// Release version in info dictionary. CFBundleShortVersionString
	var releaseVersion: String? {
		return infoDictionary?["CFBundleShortVersionString"] as? String
	}
	
	/// Build version in info dictionary. CFBundleVersion
	var buildVersion: String? {
		return infoDictionary?["CFBundleVersion"] as? String
	}
}
