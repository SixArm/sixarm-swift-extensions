/// UIViewController navigation shortcuts.
///
/// These methods make it simpler to implement common kinds of navigation,
/// such as going from one controller to another controller.
///
/// Example:
///
///     go(HomeViewController(nibName: "HomeViewController", bundle: nil))
///
/// :author: Joel Parker Henderson ( https://joelparkerhenderson.com )
/// :license: GPL ( https://www.gnu.org/copyleft/gpl.html )

import UIKit

extension UIViewController {

  func go(to: UIViewController) {
    goPresent(to)
  }

  func goPresent(to: UIViewController) {
    self.presentViewController(to, animated:false, completion:nil)
  }

  func goDismiss(to: UIViewController) {
    self.presentViewController(to, animated:false, completion:nil)
  }
  
  func goPush(to: UIViewController) {
    navigationBackTitleBlank()
    navigationPush(to)
  }

}