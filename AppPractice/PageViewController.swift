import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDataSource
{
    var controllers: [UIViewController]? = nil

    override func viewDidLoad()
    {
        super.viewDidLoad()

        dataSource = self
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let firstVC = storyBoard.instantiateViewController(withIdentifier: "page1")
        let secondVC = storyBoard.instantiateViewController(withIdentifier: "page2")
        let thirdVC = storyBoard.instantiateViewController(withIdentifier: "page3")
        controllers = [firstVC, secondVC, thirdVC]
        self.setViewControllers(
            [controllers![0]],
            direction: UIPageViewController.NavigationDirection.forward,
            animated: true,
            completion: nil
        )
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?
    {
        guard let vcIndex = controllers!.firstIndex(of: viewController) else { return nil }
        let preIndex = vcIndex - 1
        guard preIndex >= 0 else { return controllers!.last }
        guard controllers!.count > preIndex else { return nil }

        return controllers![preIndex]
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
    {
        guard let vcIndex = controllers!.firstIndex(of: viewController) else { return nil }
        let nextIndex = vcIndex + 1
        guard controllers!.count != nextIndex else { return controllers!.first }
        guard controllers!.count > nextIndex else { return nil }

        return controllers![nextIndex]
    }
}
