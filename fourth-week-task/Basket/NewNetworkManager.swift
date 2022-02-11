import Foundation
import UIKit

struct Welcome: Codable {
    let id: Int?
    let date, name, description: String?
    let new: Bool?
    let price: Int?
    let imageApp, image: String?
    let sort: Int?
}

class FoodViewModel {
    
    static let shared = FoodViewModel()
    
    func getAllFood() async throws -> [Welcome] {
        let urlString = "https://islam-404.github.io/alic/db/airpods.json"
        guard let url = URL(string: urlString) else { return [] }
        let (data, _) = try await URLSession.shared.data(from: url)
        let oneFoodItem = try JSONDecoder().decode([Welcome].self, from: data)
        return oneFoodItem
    }
    
    func getAllImagesOfFood(for url: String) async throws -> UIImage? {
        guard let url = URL(string: url) else { return nil }
        let (data, _) = try await URLSession.shared.data(from: url)
        let image = UIImage(data: data)
        return image
    }
}

