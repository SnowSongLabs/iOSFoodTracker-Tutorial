import UIKit

class Meal {
    
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Initialization
    
    init?(name: String, photo: UIImage?, rating: Int) {
        //The name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
        //The rating must be betweeen 0 and 5
        guard (rating >= 0 ) && (rating <= 5) else {
            return nil
        }
        
        //Set the initial values
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
