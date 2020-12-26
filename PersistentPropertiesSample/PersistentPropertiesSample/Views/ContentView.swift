//
//  ContentView.swift
//  PersistentPropertiesSample
//
//  Created by Aman Sharma on 26/12/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model: SampleModel = SampleModel()
    
    var body: some View {
        VStack {
            ExampleView(model: model)
            Button("toggle") {
                self.model.update(value: !self.model.storedEntity.boolVar)
            }
            HStack {
                Button("1") {
                    self.model.update(value: 1)
                }
                Button("2") {
                    self.model.update(value: 2)
                }
                Button("3") {
                    self.model.update(value: 3)
                }
            }
            Button("current date") {
                self.model.update(value: "\(Date().description)")
            }
            Button("set not nil") {
                let someString: String? = "not nil"
                self.model.update(value: someString)
            }
            Button("set nil") {
                let nilString: String? = nil
                self.model.update(value: nilString)
            }
        }
    }
}

struct ExampleView: View {
    @ObservedObject var model: SampleModel

    var body: some View {
        VStack {
            Text(model.storedEntity.boolVar.description)
            Text(model.storedEntity.intVar.description)
            Text(model.storedEntity.stringVar)
            Text(model.storedEntity.nullableStringVar ?? "nil")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
