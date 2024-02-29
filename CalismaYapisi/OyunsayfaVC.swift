//
//  OyunsayfaVC.swift
//  CalismaYapisi
//
//  Created by Merve Arta on 26.02.2024.
//

import UIKit

class OyunsayfaVC: UIViewController {

    //ONCEKI SAYFDAN GONDERILEN VERIYI BU SAYFADA ALABILELIM(1)
    /*var mesaj : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ONCEKI SAYFDAN GONDERILEN VERIYI BU SAYFADA ALABILELIM(2)
        if let m = mesaj{
            print("OyunsayfaVC : \(m)")
        }
        
        // Do any additional setup after loading the view.
    }*/
    
    //ONCEKI SAYFDAN GONDERILEN VERIYI BU SAYFADA ALABILELIM(1)
    var kisi : Kisiler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ONCEKI SAYFDAN GONDERILEN VERIYI BU SAYFADA ALABILELIM(2)
        if let k = kisi{
            print("-----------OyunsayfaVC--------------")
            print("Kisi ad    : \(k.ad!)")
            print("Kisi yas   : \(k.yas!)")
            print("Kisi boy   : \(k.boy!)")
            print("Kisi bekar : \(k.bekar!)")
        }
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonGeri(_ sender: Any) {
        //BİR ONCEKİ SAYFAYA DONUS
        //navigationController?.popViewController(animated: true)
        
        //ANASAYFAYA DONUS
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func buttonBitir(_ sender: Any) {
        performSegue(withIdentifier: "sonucEkraninaGecis", sender: nil)
    }
    
    
}
