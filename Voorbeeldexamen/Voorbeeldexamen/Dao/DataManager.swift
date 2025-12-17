import Foundation
@Observable
class DataManager {
    var cars: [Car] = []
    
    //init(){
    //    cars = [Car]()
    //}
    
    struct CarsResponse: Codable {
        let cars: [Car]
    }
     
    func loadCars() async {
        do {
            print("⏳ Loading car data...")
            try await Task.sleep(for: .seconds(0))
            let response: CarsResponse = load("cars.json")
            cars = response.cars
            sort()
            print("✅ Data loaded successfully.")
        } catch {
            print("❌ Failed to load cars:", error)
        }
        
        
    }
    private func sort(){
        cars.sort{ c1, c2 in
            c1.id < c2.id
        }
    }
    
   
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
    
    
}


