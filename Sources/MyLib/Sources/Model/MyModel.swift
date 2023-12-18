//
//  MyModel.swift
//  Model
//
//  Created by s001033 on 2023/12/15.
//

import Foundation

public struct MyModel {
    public let hey: String
    package let hello: MyPackageInternalModel

    package init(hey: String, hello: String) {
        self.hey = hey
        self.hello = MyPackageInternalModel(a: hello + ", a!", b: hello + ", b!")
    }
}

package struct MyPackageInternalModel {
    package let a: String
    let b: String
}
