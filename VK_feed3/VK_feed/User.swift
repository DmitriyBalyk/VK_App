//
//  User.swift
//  VK_APP
//
//  Created by Дмитрий Балык on 02.04.2020.
//  Copyright © 2020 DmitriyBalyk. All rights reserved.
//

import UIKit

struct Friends2 {
    var title: String
    var photo: UIImage?
    var avatar: UIImage?
}

let dmitriy = Friends2(title: "Жирафик-Рафик", photo: UIImage(named: "dmtr"), avatar: UIImage(named: "1"))
let antella = Friends2(title: "Антелла", photo: UIImage(named: "vkt"), avatar: UIImage(named: "2"))

let friends:[Friends2] = [dmitriy, antella]
