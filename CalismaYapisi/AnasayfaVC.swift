//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by Merve Arta on 26.02.2024.
//

import UIKit

class AnasayfaVC: UIViewController {

    //DEGISKENLER TANIMLANIR
    @IBOutlet weak var labelAnasayfa: UILabel!
    
    //ILK CALISAN FONKSIYON
    //Uygulama ilk açıldığında (1 kez çalışır)
    override func viewDidLoad() {
        print("viewDidLoad çalıştı")
        
        super.viewDidLoad()
        labelAnasayfa.text = "Hoşgeldin"
    }
    
    //Sayfa her göründüğünde çalışır
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear çalıştı")
    }

    //Sayfa her görünmez olduğunda çalışır
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear çalıştı")
    }
    
    //YAP BUTONU
    @IBAction func buttonYap(_ sender: Any) {
        labelAnasayfa.text = "Merhaba"
    }
    
    //BASLA BUTONU
    @IBAction func buttonBasla(_ sender: Any) {
        //DIGER SAYFAYA VERI GONDERMIYORUM
        //performSegue(withIdentifier: "oyunEkraninaGecis", sender: nil)
        
        //DIGER SAYFAYA VERI GONDERIYORUM
        let kisi = Kisiler(ad: "Ahmet", yas: 23, boy: 1.78, bekar: true)
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: kisi)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare metodu calisti")
        
        if segue.identifier == "oyunEkraninaGecis" {
            print("oyunEkraninaGecis metodu calisti")
            
            //VERIYI DIGER CLASS A VE SAYFAYA GONDERDIM
            if let veri = sender as? Kisiler{
                print("Veri : \(veri)")
                
                let gidilecekVC = segue.destination as! OyunsayfaVC
                gidilecekVC.kisi = veri
            }
            
        }
        
        
    }
    
}

