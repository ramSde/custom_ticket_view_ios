import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let boardingPassView = BoardingPassView()
        boardingPassView.frame = CGRect(
            x: (view.bounds.width - 300) / 2,
            y: (view.bounds.height - 500) / 2,
            width: 300,
            height: 500
        )
        view.addSubview(boardingPassView)
    }
}
