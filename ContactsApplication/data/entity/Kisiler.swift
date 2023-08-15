//
//  Kisiler.swift
//  ContactsApplication
//
//  Created by IŞIL VARDARLI on 31.07.2023.
//

import Foundation

class Kisiler{
    var kisi_id: Int?
    var kisi_ad: String?
    var kisi_tel:String?

    init(){
        }

    init(kisi_id: Int? = nil, kisi_ad: String? = nil, kisi_tel: String? = nil) {
        self.kisi_id = kisi_id
        self.kisi_ad = kisi_ad
        self.kisi_tel = kisi_tel
    }
    

    
}

