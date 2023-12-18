//
//  MyView.swift
//
//
//  Created by s001033 on 2023/12/15.
//

import MyModel

public struct MyView {
    let model: MyModel

    public init(hey: String, hello: String) {
        model = MyModel(hey: hey, hello: hello)
    }
}
