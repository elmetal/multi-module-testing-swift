//
//  HelloWorld.swift
//  App
//
//  Created by s001033 on 2023/12/18.
//

import Foundation
import MyView
import MyLib2

struct ContentView {
    let myView = MyView(hey: "hey", hello: "hello")

    func hello() {
        MyLib2.hello()
    }
}
