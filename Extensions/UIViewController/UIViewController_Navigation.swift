/// UIViewController navigation shortcuts.
///
/// These methods make it simpler to implement common kinds of navigation,
/// such as pushing a controller onto a navigation stack, without displaying a back title.
///
/// :author: Joel Parker Henderson ( https://joelparkerhenderson.com )
/// :license: GPL ( https://www.gnu.org/copyleft/gpl.html )

import UIKit

extension UIViewController {

  /// Set the navigation back bar button item title to blank.
  /// This is a UI helper for apps that prefer to hide the title.
  ///
  /// To use this, the controller must define `self.navigationItem`.
  ///
  func navigationBackTitleBlank () {
    self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain,target: nil, action: nil)
  }

  /// Set the navigation back bar button item title to blank.
  /// This is a UI helper for apps that prefer to hide the title.
  ///
  /// To use this, the controller must define `navigationController`.
  ///
  func navigationPush(controller: UIViewController) {
    navigationController?.pushViewController(controller, animated: true)
  }

}