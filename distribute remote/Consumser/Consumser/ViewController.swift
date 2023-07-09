//
//  ViewController.swift
//  Consumser
//
//  Created by VinhHoang on 09/07/2023.
//

import UIKit
import MyFramework

struct MyGitHub: Codable {
    let name: String?
    let location: String?
    let follower: Int?
}

enum RequestError: Error {
    case invalidUrl
}

struct GithubRequest: APIRequest {
    func makeRequest(from data: String) throws -> URLRequest {
        guard let gitURL = URL(string: data) else {
            throw RequestError.invalidUrl
        }
        return URLRequest(url: gitURL)
    }
    
    func parseResponse(data: Data) throws -> MyGitHub {
        return try JSONDecoder().decode(MyGitHub.self, from: data)
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let apiLoader = APIRequestLoader(apiRequest: GithubRequest())
        apiLoader.loadAPIRequest(requestData: "https://api.github.com/users/drvinhhoang") { githubModel, error in
            print(githubModel?.name, "vinh")
        }
        apiLoader.hardCodedData()
    }


}

