//
//  Fish.swift
//  AnimalCrossingGCN-Tracker
//
//  Created by Brock Jenkinson on 10/6/24.
//
import Foundation
import SwiftData
import SwiftUI

@Model
class Fish {
    @Attribute(.unique) var id: UUID
    var name: String
    var season: String
    var location: String
    var isDonated: Bool
    var games: [ACGame] //new attribute to the model, this will be used to store the games that the fish is in

init(name: String, season: String, location: String, isDonated: Bool = false, games: [ACGame]) { //init for the model, this is used when creating a new instance of the model
        self.id = UUID()
        self.name = name
        self.season = season
        self.location = location
        self.isDonated = isDonated
        self.games = games 
    }
}

struct FishDetailView: View {
    var Fish: Fish

    var body: some View {
        VStack(alignment: .leading) {
        
            
            Text("Season: \(Fish.season)")
                .font(.title2)
            
            Text("Location: \(Fish.location)")
                
            
            Toggle("Donated", isOn: Binding(
                get: { Fish.isDonated },
                set: { newValue in
                    Fish.isDonated = newValue
                }
            ))
            .padding(.top)

            Spacer()
        }
        .padding()
        .navigationTitle(Fish.name)
    }
}

func getDefaultFish() -> [Fish] {
    return [
        Fish(
            name: "Sea Bass",
            season: "All",
            location: "Sea",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Brook Trout",
            season: "All",
            location: "Lake",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Crucian Carp",
            season: "All",
            location: "River",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Carp",
            season: "All",
            location: "River",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Koi",
            season: "All",
            location: "River",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Barbel Steed",
            season: "All",
            location: "River",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Dace",
            season: "All",
            location: "River",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Catfish",
            season: "June - September",
            location: "River",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Giant Catfish",
            season: "July - August",
            location: "Lake",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Pale Chub",
            season: "All",
            location: "River",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Bitterling",
            season: "November - February",
            location: "River",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Loach",
            season: "March - May",
            location: "River",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Bluegill",
            season: "All",
            location: "River",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Small Bass",
            season: "All",
            location: "River",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Bass",
            season: "All",
            location: "River",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Large Bass",
            season: "All",
            location: "River",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Giant Snakehead",
            season: "July - August",
            location: "Lake",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Eel",
            season: "September - October",
            location: "River",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Freshwater Goby",
            season: "All",
            location: "River",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Pond Smelt",
            season: "December - February",
            location: "River",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Sweetfish",
            season: "July - September",
            location: "River",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Cherry Salmon",
            season: "March - June, September - November",
            location: "River",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Rainbow Trout",
            season: "March - June",
            location: "River",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Stringfish",
            season: "December - February",
            location: "River",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Salmon",
            season: "September",
            location: "River (mouth)",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Goldfish",
            season: "All",
            location: "River",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Pop-eyed Goldfish",
            season: "All",
            location: "River",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Guppy",
            season: "April - November",
            location: "River",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Angelfish",
            season: "May - October",
            location: "River",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Piranha",
            season: "June - September",
            location: "River",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Arowana",
            season: "June - September",
            location: "River",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Coelacanth",
            season: "All (raining)",
            location: "Sea",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Crawfish",
            season: "April - September",
            location: "Pond",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Frog",
            season: "May - August",
            location: "Pond",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Killifish",
            season: "April - August",
            location: "River",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Jellyfish",
            season: "August",
            location: "Sea",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Red Snapper",
            season: "All",
            location: "Sea",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Barred Knifejaw",
            season: "March - November",
            location: "Sea",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Arapaima",
            season: "July - September",
            location: "River",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        ),
        Fish(
            name: "Squid",
            season: "December - August",
            location: "Sea",
            isDonated: false,
            games: [ACGame.gameCube.rawValue]
        )
    ]
}