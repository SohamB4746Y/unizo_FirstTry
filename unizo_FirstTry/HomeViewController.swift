//
//  HomeViewController.swift
//  unizo_FirstTry
//
//  Created by Somesh on 09/11/25.
//

import UIKit

class HomeViewController: UIViewController {

    // MARK: - UI Components
    private let scrollView = UIScrollView()
    private let contentView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.systemGroupedBackground

        setupScrollView()
        setupSections()
    }

    // MARK: - Setup Scroll View
    private func setupScrollView() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.showsVerticalScrollIndicator = false
        scrollView.alwaysBounceVertical = true
        view.addSubview(scrollView)

        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])

        // ContentView = main vertical stack
        contentView.axis = .vertical
        contentView.alignment = .fill
        contentView.spacing = 16 // spacing between sections
        contentView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(contentView)

        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor)
        ])
    }

    // MARK: - Setup Sections
    private func setupSections() {
        // --- HEADER ---
        guard let headerView = Bundle.main.loadNibNamed("HeaderView", owner: nil, options: nil)?.first as? HeaderView else { return }
        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        contentView.addArrangedSubview(headerView)

        // --- TRENDING CATEGORIES ---
        guard let trendingView = Bundle.main.loadNibNamed("TrendingCategoriesView", owner: nil, options: nil)?.first as? TrendingCategoriesView else { return }
        trendingView.translatesAutoresizingMaskIntoConstraints = false
        trendingView.heightAnchor.constraint(equalToConstant: 160).isActive = true
        contentView.addArrangedSubview(trendingView)

        // --- CAROUSEL ---
        guard let carouselView = Bundle.main.loadNibNamed("CarouselView", owner: nil, options: nil)?.first as? CarouselView else { return }
        carouselView.translatesAutoresizingMaskIntoConstraints = false
        carouselView.heightAnchor.constraint(equalToConstant: 180).isActive = true

        // Wrap CarouselView inside a container for side padding and shadow
        let carouselContainer = UIView()
        carouselContainer.translatesAutoresizingMaskIntoConstraints = false
        carouselContainer.addSubview(carouselView)

        NSLayoutConstraint.activate([
            carouselView.topAnchor.constraint(equalTo: carouselContainer.topAnchor),
            carouselView.leadingAnchor.constraint(equalTo: carouselContainer.leadingAnchor, constant: 16),
            carouselView.trailingAnchor.constraint(equalTo: carouselContainer.trailingAnchor, constant: -16),
            carouselView.bottomAnchor.constraint(equalTo: carouselContainer.bottomAnchor)
        ])

        // Add rounded corner + shadow for floating effect
        carouselView.layer.cornerRadius = 12
        carouselView.layer.masksToBounds = true

        carouselContainer.layer.cornerRadius = 12
        carouselContainer.layer.shadowColor = UIColor.black.withAlphaComponent(0.15).cgColor
        carouselContainer.layer.shadowOpacity = 0.3
        carouselContainer.layer.shadowOffset = CGSize(width: 0, height: 3)
        carouselContainer.layer.shadowRadius = 8

        contentView.addArrangedSubview(carouselContainer)
    }
}

