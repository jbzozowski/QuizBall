//
//  LandingViewController.swift
//  QuizBall
//
//  Created by Julius Bzozowski on 1/22/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import UIKit

let array:[String] = ["astros", "dodgers", "cubs", "pirates", "nationals", "tigers", "reds", "cardinals", "orioles", "padres", "whitesox", "mets", "rangers", "bluejays", "diamondbacks", "braves", "rockies", "mariners", "athletics", "rays", "twins", "yankees", "indians", "marlins", "phillies", "redsox", "royals", "brewers", "angels", "giants"]

class LandingViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! logoCell
        cell.logoView.image = UIImage(named: array[indexPath.item] + ".png")
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

       let itemSize = UIScreen.main.bounds.width/3
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10)
        layout.itemSize = CGSize(width: itemSize, height: itemSize)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
