//
//  HomeController.swift
//  Twitter_Swift_Programatically_No2
//
//  Created by masato on 20/10/2018.
//  Copyright © 2018 masato. All rights reserved.
//

import UIKit

class WordCell: UICollectionViewCell {

    // this gets called when a cell is dequeued
    // cellがデキューされたときに呼び出されるように、initを設定する
    override init(frame: CGRect) {
        super.init(frame: frame)

        setupViews()
        backgroundColor = .yellow
    }


    // make Closure "wordLabel" to inside Cell Label
    let wordLabel: UILabel = {
        let label = UILabel()
        label.text = "TEST TEST TEST"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    // set "worddLabel" to addSubview()
    func setupViews () {
        backgroundColor = .yellow

        addSubview(wordLabel)
        wordLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        wordLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        wordLabel.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        wordLabel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}



class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    let cellId = "cellId"

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = .white
        collectionView?.register(WordCell.self, forCellWithReuseIdentifier: cellId)
    }



    // データの個数を返すメソッド
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }

    // データを返すメソッド
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
//        cell.backgroundColor = .blue
        return cell
    }

    // Adjust Collection View Hight
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }


}

