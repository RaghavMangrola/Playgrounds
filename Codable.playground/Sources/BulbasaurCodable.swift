import Foundation

public struct PokemonCodable: Codable {
    public let id: Int
    public let name: String
    public let baseExperience: Int
    public let height: Int
    public let isDefault: Bool
    public let order: Int
    public let weight: Int
    public struct Abilitie: Codable {
        public let isHidden: Bool
        public let slot: Int
        public struct Ability: Codable {
            public let name: String
            public let url: URL
        }
        public let ability: Ability
        private enum CodingKeys: String, CodingKey {
            case isHidden = "is_hidden"
            case slot
            case ability
        }
    }
    public let abilities: [Abilitie]
    public struct Form: Codable {
        public let name: String
        public let url: URL
    }
    public let forms: [Form]
    public struct GameIndice: Codable {
        public let gameIndex: Int
        public struct Version: Codable {
            public let name: String
            public let url: URL
        }
        public let version: Version
        private enum CodingKeys: String, CodingKey {
            case gameIndex = "game_index"
            case version
        }
    }
    public let gameIndices: [GameIndice]
    public let heldItems: [String]
    public let locationAreaEncounters: [String]
    public struct Move: Codable {
        public struct Move: Codable {
            public let name: String
            public let url: URL
        }
        public let move: Move
        public struct VersionGroupDetail: Codable {
            public let levelLearnedAt: Int
            public struct VersionGroup: Codable {
                public let name: String
                public let url: URL
            }
            public let versionGroup: VersionGroup
            public struct MoveLearnMethod: Codable {
                public let name: String
                public let url: URL
            }
            public let moveLearnMethod: MoveLearnMethod
            private enum CodingKeys: String, CodingKey {
                case levelLearnedAt = "level_learned_at"
                case versionGroup = "version_group"
                case moveLearnMethod = "move_learn_method"
            }
        }
        public let versionGroupDetails: [VersionGroupDetail]
        private enum CodingKeys: String, CodingKey {
            case move
            case versionGroupDetails = "version_group_details"
        }
    }
    public let moves: [Move]
    public struct Species: Codable {
        public let name: String
        public let url: URL
    }
    public let species: Species
    public struct Stat: Codable {
        public let baseStat: Int
        public let effort: Int
        public struct Stat: Codable {
            public let name: String
            public let url: URL
        }
        public let stat: Stat
        private enum CodingKeys: String, CodingKey {
            case baseStat = "base_stat"
            case effort
            case stat
        }
    }
    public let stats: [Stat]
    public struct DamageType: Codable {
        public let slot: Int
        public struct DamageType: Codable {
            public let name: String
            public let url: URL
        }
        public let type: DamageType
    }
    public let types: [DamageType]
    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case baseExperience = "base_experience"
        case height
        case isDefault = "is_default"
        case order
        case weight
        case abilities
        case forms
        case gameIndices = "game_indices"
        case heldItems = "held_items"
        case locationAreaEncounters = "location_area_encounters"
        case moves
        case species
        case stats
        case types
    }
}
