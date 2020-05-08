//
//  main.swift
//  request
//
//  Created by Brandon Plank on 5/7/20.
//  Copyright © 2020 Brandon Plank. All rights reserved.
//

import Foundation

func HTTP(){
    let url = URL(string: "https://flappyapp.org/hdsgaukfgjhdsghugujyadsgluyfgljasglfjsdgjfdgdsghgudsaiguyfguifegiutfgaitdgfyiauifudsyguasygbfyasguykdfaegbwkjrfbkjagbfutcwegautrfuwtbfuwtbeutirfiutawtgbuifyhusirefbguiygeryfysgfyusgeoyiifegyryiegufygruifysigeyigfes/")
    
    let task = URLSession.shared.dataTask(with: url! as URL) { data, response, error in
        guard let _ = data, error == nil else { return }
    }
    task.resume()
}


for i in 1 ... Int.max{
    print("Request #\(i)")
    HTTP()
    usleep(1000)
}
