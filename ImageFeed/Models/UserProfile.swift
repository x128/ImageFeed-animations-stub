import Foundation

struct UserProfile: Codable {
    let firstName: String?
    let lastName: String?

    let username: String
    let twitterUsername: String?
    let instagramUsername: String?

    let profileImage: ProfileImage?

    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"

        case username
        case twitterUsername = "twitter_username"
        case instagramUsername = "instagram_username"

        case profileImage = "profile_image"
    }

    var fullName: String {
        [firstName, lastName]
            .compactMap({ $0 })
            .joined(separator: " ")
    }

    var handler: String {
        "@" + (twitterUsername ?? instagramUsername ?? username)
    }

    var profilePictureURL: URL? {
        guard
            let profileImage = profileImage,
            let urlString = profileImage.best,
            let url = URL(string: urlString)
        else { return nil }

        return url
    }
}
