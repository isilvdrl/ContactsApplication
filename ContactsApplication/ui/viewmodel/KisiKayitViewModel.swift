//
//  KisiKayitViewModel.swift
//  ContactsApplication
//
//  Created by IŞIL VARDARLI on 10.08.2023.
//

import Foundation
class KisiKayitViewModel{
    var krepo = KisilerDaoRepository()
    
    func kaydet(kisi_ad:String,kisi_tel:String){
        krepo.kaydet(kisi_ad: kisi_ad, kisi_tel: kisi_tel)
     
    }
    }
