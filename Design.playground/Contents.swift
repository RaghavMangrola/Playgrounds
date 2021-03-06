//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let cardView = UIView()
        cardView.frame = CGRect(x: 20, y: 255, width: 300, height: 250)
        cardView.layer.cornerRadius = 14
        cardView.layer.shadowOpacity = 0.25
        cardView.layer.shadowOffset = CGSize(width: 0, height: 10)
        cardView.layer.shadowRadius = 10

        let titleLabel = UILabel()
        titleLabel.frame = CGRect(x: 16, y: 16, width: 272, height: 38)
        titleLabel.text = "Learn Swift 4"
        titleLabel.font = UIFont.systemFont(ofSize: 32, weight: .semibold)
        titleLabel.textColor = .white


        let captionLabel = UILabel()
        captionLabel.frame = CGRect(x: 16, y: 204, width: 272, height: 40)
        captionLabel.text = "Design directly in Playground"
        captionLabel.textColor = .white

        let coverImageView = UIImageView()
        coverImageView.frame = CGRect(x: 0, y: 0, width: 300, height: 250)
        coverImageView.contentMode = .scaleAspectFill
        coverImageView.image = #imageLiteral(resourceName: "Cover.jpg")
        coverImageView.clipsToBounds = true
        coverImageView.layer.cornerRadius = 14

        let descriptionLabel = UILabel()
        descriptionLabel.frame = CGRect(x: 20, y: 448, width: 335, height: 132)
        descriptionLabel.text = "Three years ago, Apple completely revamped their design language for the modern users. It is now much simpler, allowing designers to focus on animation and function rather than intricate visual details."
        descriptionLabel.numberOfLines = 10
        descriptionLabel.textColor = .black
        descriptionLabel.alpha = 0

//        let animator = UIViewPropertyAnimator(duration: 0.7, dampingRatio: 0.7) {
//            cardView.frame = CGRect(x: 0, y: 0, width: 375, height: 667)
//            cardView.layer.cornerRadius = 0
//
//            coverImageView.frame = CGRect(x: 0, y: 0, width: 375, height: 420)
//            coverImageView.layer.cornerRadius = 0
//
//            titleLabel.frame = CGRect(x: 20, y: 20, width: 374, height: 38)
//            captionLabel.frame = CGRect(x: 20, y: 370, width: 272, height: 40)
//            descriptionLabel.alpha = 1
//
//        }
//        animator.startAnimation(afterDelay: 1)

        view.addSubview(cardView)
        cardView.addSubview(coverImageView)
        cardView.addSubview(captionLabel)
        cardView.addSubview(descriptionLabel)
        cardView.addSubview(titleLabel)

        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
