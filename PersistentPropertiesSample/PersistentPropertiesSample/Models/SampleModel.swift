//
//  SampleModel.swift
//  PersistentPropertiesSample
//
//  Created by Aman Sharma on 26/12/20.
//

import Foundation
import PersistentProperties

let customDefaults = UserDefaults.init(suiteName: "customDefaultsSuite")!

struct SampleDataObject {
    @PersistentProperty(key: "a-boolean-value", defaultValue: true) var boolVar: Bool

    @PersistentProperty(key: "an-int-value", defaultValue: 20) var intVar: Int

    @PersistentProperty(key: "a-string", defaultValue: "") var stringVar: String

    @PersistentProperty(key: "a-nullable-string") var nullableStringVar: String?
}

class SampleModel: ObservableObject {
    @Published var storedEntity: SampleDataObject = SampleDataObject()
    
    func update(value: Bool) {
        storedEntity.boolVar = value
    }
    
    func update(value: Int) {
        storedEntity.intVar = value
    }
    
    func update(value: String) {
        storedEntity.stringVar = value
    }
    
    func update(value: String?) {
        storedEntity.nullableStringVar = value
    }
}
