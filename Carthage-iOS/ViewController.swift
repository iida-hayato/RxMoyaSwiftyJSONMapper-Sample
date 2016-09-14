//
//  ViewController.swift
//  Moya-SwiftyJSONMapper
//
//  Created by Antoine van der Lee on 01/26/2016.
//  Copyright (c) 2016 Antoine van der Lee. All rights reserved.
//

import UIKit
import RxSwift
import RxMoya
import RxMoyaSwiftyJSONMapper

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    rxSwiftObjectMapping()
  }



  func rxSwiftObjectMapping() {
    let disposeBag = DisposeBag()
      let x = RXStubbedProvider.request(ExampleAPI.GetObject)

    x.mapObject(GetResponse).subscribe(onNext: { (response) -> Void in
      print(response)
      }, onError: { (error) -> Void in
        print(error)
    }).addDisposableTo(disposeBag)
  }
}
