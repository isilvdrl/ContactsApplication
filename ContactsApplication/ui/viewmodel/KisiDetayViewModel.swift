//
//  KisiDetayViewModel.swift
//  ContactsApplication
//
//  Created by IŞIL VARDARLI on 10.08.2023.
//

import Foundation
class KisiDetayViewModel{
    var krepo=KisilerDaoRepository()
    
    func guncelle(kisi_id:Int,kisi_ad:String,kisi_tel:String) {
        krepo.guncelle(kisi_id: kisi_id, kisi_ad: kisi_ad, kisi_tel: kisi_tel)
       // print("Kişi Güncelle : \(kisi_id)-\(kisi_ad)- \(kisi_tel)")
    }
    
    }
