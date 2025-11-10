//
//  CarouselView.swift
//  unizo_FirstTry
//
//  Created by Somesh on 09/11/25.
//

import UIKit

class CarouselView: UIView, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!

    private var banners: [UIImage] = []

       override func awakeFromNib() {
           super.awakeFromNib()
           setupCarousel()
       }

       private func setupCarousel() {
           // Load images from Assets
           banners = [
               UIImage(named: "ads1")!,
               UIImage(named: "ad2")!,
               UIImage(named: "ad3")!
           ]

           // ScrollView Setup
           scrollView.isPagingEnabled = true
           scrollView.showsHorizontalScrollIndicator = false
           scrollView.delegate = self

           // Remove existing subviews if any
           scrollView.subviews.forEach { $0.removeFromSuperview() }

           // Add image views horizontally
           for (index, image) in banners.enumerated() {
               let imageView = UIImageView(image: image)
               imageView.contentMode = .scaleAspectFill
               imageView.clipsToBounds = true
               imageView.translatesAutoresizingMaskIntoConstraints = false
               scrollView.addSubview(imageView)

               // Constraints for image views
               NSLayoutConstraint.activate([
                   imageView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
                   imageView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
                   imageView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor),
                   imageView.heightAnchor.constraint(equalTo: scrollView.frameLayoutGuide.heightAnchor)
               ])

               if index == 0 {
                   imageView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor).isActive = true
               } else {
                   let previousImageView = scrollView.subviews[index - 1]
                   imageView.leadingAnchor.constraint(equalTo: previousImageView.trailingAnchor).isActive = true
               }

               if index == banners.count - 1 {
                   imageView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor).isActive = true
               }
           }

           // Configure Page Control
           pageControl.numberOfPages = banners.count
           pageControl.currentPage = 0
           pageControl.currentPageIndicatorTintColor = .systemBlue
           pageControl.pageIndicatorTintColor = .lightGray

           // Optional: Auto-scroll
           startAutoScroll()
       }

       // MARK: - Auto Scroll
       private func startAutoScroll() {
           Timer.scheduledTimer(withTimeInterval: 4.0, repeats: true) { [weak self] _ in
               guard let self = self else { return }
               let nextPage = (self.pageControl.currentPage + 1) % self.banners.count
               let offset = CGPoint(x: CGFloat(nextPage) * self.scrollView.frame.size.width, y: 0)
               self.scrollView.setContentOffset(offset, animated: true)
           }
       }

       // MARK: - ScrollView Delegate
       func scrollViewDidScroll(_ scrollView: UIScrollView) {
           let pageIndex = round(scrollView.contentOffset.x / scrollView.frame.width)
           pageControl.currentPage = Int(pageIndex)
       }
   }
