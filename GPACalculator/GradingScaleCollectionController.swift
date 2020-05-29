//
//  GradingScaleCollectionController.swift
//  Saleem_Shayan_Final
//
//  Created by Khurram Ghullamani on 3/17/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//
import UIKit

class GradingScaleCollectionController: UICollectionViewController {
    
    fileprivate let reuseIdentifier = "Grade"
    fileprivate var gradingScale = ["A", "A-", "B+", "B", "B-", "C+", "C", "C-", "D+", "D", "D-", "F"]
    weak var delegate: GradingScaleDelegate?
    
    func selectGrade(grade: String) {
        let path = IndexPath(row: gradingScale.index(of: grade)!, section: 0)
        self.collectionView?.selectItem(at: path, animated: false, scrollPosition: .centeredHorizontally)
    }
    
    override func collectionView(_ collectionView: UICollectionView,
                                 numberOfItemsInSection section: Int) -> Int {
        return gradingScale.count
    }
    
    override func collectionView(_ collectionView: UICollectionView,
                                 cellForItemAt indexPath: IndexPath) -> ScaleViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier,
                                                      for: indexPath) as! ScaleViewCell
        let label = cell.contentView.subviews[0] as! UILabel
        label.text = "\(gradingScale[indexPath.row])"
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        delegate?.didSelectGrade(controller: self, grade: gradingScale[indexPath.row])
    }
}

protocol GradingScaleDelegate: class {
    func didSelectGrade(controller: GradingScaleCollectionController, grade: String)
}
