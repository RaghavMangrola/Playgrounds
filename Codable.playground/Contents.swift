import Foundation

let decoder = JSONDecoder()

let fileUrl = Bundle.main.url(forResource: "Bulbasaur", withExtension: "json")
let jsonData = try Data(contentsOf: fileUrl!)

if let pokemon = try? decoder.decode(PokemonCodable.self, from: jsonData) {
    print(pokemon.id)
    print(pokemon.name)
    print(pokemon.types.first!.type.name)
}

