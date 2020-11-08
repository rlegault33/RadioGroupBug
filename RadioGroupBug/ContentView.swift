//
//  ContentView.swift
//  RadioGroupBug
//
//  Created by Richard Legault on 2020-11-08.
//

import SwiftUI
import RadioGroup

struct ContentView: View {
    @State var cameraName: String
    @State var recordSelection: Int
    
    var body: some View {
        VStack {
            Text("Camera").font(.title)
            TextField("Camera Name", text: $cameraName)
        
      
            HStack {
                Text("Record")
                RadioGroupPicker (selectedIndex: $recordSelection, titles:["Game", "Highlights"])
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
     @State static var name: String = "Outdoor"
     @State static var recordSelection: Int = 1
    static var previews: some View {
        ContentView(cameraName: name, recordSelection: recordSelection)
    }
}
