//
//  AnasayfaViewModel.swift
//  ContactsApplication
//
//  Created by IŞIL VARDARLI on 10.08.2023.
//

import Foundation
import RxSwift

class AnasayfaViewModel{
    
    var krepo = KisilerDaoRepository()
    var kisilerListesi = BehaviorSubject<[Kisiler]>(value: [Kisiler]())
    init(){
        veritabaniKopyala()
        kisilerListesi = krepo.kisilerListesi
    }
    func sil(kisi_id:Int){
        krepo.sil(kisi_id: kisi_id)
        kisileriYukle()
    }
    func ara(kelime:String){
        krepo.ara(kelime: kelime)
    }
    func kisileriYukle(){
        krepo.kisileriYukle()
       
    }
    func veritabaniKopyala(){
        let bundleYolu = Bundle.main.path(forResource: "rehber", ofType: ".sqlite")
        let dosyaYolu = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: dosyaYolu).appendingPathComponent("rehber.sqlite")
        
        let fm = FileManager.default
        
        if fm.fileExists(atPath: veritabaniURL.path() ){
           print("veritabanı zaten var")
           
        }
        else{
          do{
              try fm.copyItem(atPath: bundleYolu! , toPath: veritabaniURL.path)
              
          }
          catch{
                krepo.kisileriYukle()
               
                  }
            
        }
        
    }
    
}
