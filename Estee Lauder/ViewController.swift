//
//  ViewController.swift
//  Estee Lauder
//
//  Created by Ndiana Akpan on 7/30/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var imgArr = [ UIImage(named:"3"),
                   UIImage(named:"4"),
                   UIImage(named:"10"),
                   UIImage(named:"0")]
    
    override func viewDidLoad() {
        print("hdsadj")
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        // Do any additional setup after loading the view.
    }
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }

     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("this ran")
        return imgArr.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)as? DataCollectionViewCell
        cell?.img.image = imgArr[indexPath.row]
        return cell!
    }
    
}
//extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        print("this ran")
//        return imgArr.count
//    }
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)as? DataCollectionViewCell
//        cell?.img.image = imgArr[indexPath.row]
//        return cell!
//    }
//}

//extension ViewController: UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let imgWidth = collectionView.frame.width
//          return CGSize(width: imgWidth, height: imgWidth)
//    }
//
//func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//    return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
//}
//
//func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//    return 0
//}
//
//func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//    return 0
//}
 



