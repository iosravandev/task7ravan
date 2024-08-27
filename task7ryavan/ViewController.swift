//
//  ViewController.swift
//  task7ryavan
//
//  Created by Ravan on 26.08.24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView! {
        didSet{
            let flowLayout = UICollectionViewFlowLayout()
            collectionView.collectionViewLayout = flowLayout
            flowLayout.scrollDirection = .vertical
            flowLayout.minimumLineSpacing = 10
            flowLayout.itemSize = CGSize(width: 167, height: 254)
            collectionView.delegate = self
            collectionView.dataSource = self
            let nib = UINib(nibName: "CustomCollectionViewCell", bundle: nil)
            collectionView.register(nib, forCellWithReuseIdentifier: "CustomCollectionViewCell")
        }
    }
    
    
    
    @IBOutlet weak var searchField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addShadow()
        
    }
    
    private func addShadow() {
        //searchField.layer.shadowColor = UIColor.white.cgColor
        //searchField.layer.shadowOffset = CGSize(width: 5, height: 5)
        //searchField.layer.shadowOpacity = 1.0
        //searchField.layer.shadowRadius = 5
        searchField.borderStyle = .none
        searchField.layer.cornerRadius = 20 // Округление углов
        searchField.layer.borderWidth = 2 // Ширина границы
        searchField.layer.borderColor = UIColor.gray.cgColor // Цвет границы
    }
}

class DetailedViewController: UIViewController {
    
    @IBOutlet weak var detailedView: UICollectionView!{
        didSet{
            let flowLayout = UICollectionViewFlowLayout()
            detailedView.collectionViewLayout = flowLayout
            flowLayout.scrollDirection = .horizontal
            flowLayout.minimumLineSpacing = 0
            flowLayout.itemSize = CGSize(width: 393, height: 300)
            detailedView.delegate = self
            detailedView.dataSource = self
            let nib = UINib(nibName: "CustomDetailedCollectionViewCell", bundle: nil)
            detailedView.register(nib, forCellWithReuseIdentifier: "CustomDetailedCollectionViewCell")
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCollectionViewCell", for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let detailedVC = storyboard.instantiateViewController(withIdentifier: "DetailedViewController") as? DetailedViewController else {
            return
        }
        
        self.navigationController?.pushViewController(detailedVC, animated: true)
    }
    
}

extension DetailedViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomDetailedCollectionViewCell", for: indexPath)
        return cell
    }
    
    
}

