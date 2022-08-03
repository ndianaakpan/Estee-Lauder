//
//  ViewController.swift
//  Estee Lauder
//
//  Created by Ndiana Akpan on 7/30/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var pageView: UIPageControl!
    var imgArr = [ UIImage(named:"3"),
                   UIImage(named:"4"),
                   UIImage(named:"10"),
                   UIImage(named:"0")]
    
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        print("hdsadj")
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        // Do any additional setup after loading the view.
        pageView.numberOfPages = imgArr.count
        pageView.currentPage = 0
        DispatchQueue.main.async { [self] in
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(self.changeImage), userInfo: nil, repeats: true)

        }
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
    
  @objc func changeImage() {
        
      if counter < imgArr.count {
          let index = IndexPath.init(item: counter, section: 0)
          self.collectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
          pageView.currentPage = counter
          counter += 1
      } else {
          counter = 0
          let index = IndexPath.init(item: counter, section: 0)
          self.collectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: false)
          pageView.currentPage = counter
          counter = 1
      }
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
 



