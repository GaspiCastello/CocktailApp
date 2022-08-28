//
//  CocktailTableViewCell.swift
//  CocktailApp
//
//  Created by Gaspar on 28/08/2022.
//

import UIKit

class CocktailTableViewCell: UITableViewCell {

    @IBOutlet weak var thumbnail: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    func setupCell(_ data: CocktailModel) {
        thumbnail.setCornerRadius()
        thumbnail.loadFrom(URLAddress: data.imageUrl ?? "")
        titleLabel.text = data.name
        descriptionLabel.text = data.instructions
    }

}