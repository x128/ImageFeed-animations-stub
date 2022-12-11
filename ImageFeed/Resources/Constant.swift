import Foundation

enum Constant: String {
	// TODO: вставить свои ключи из https://unsplash.com/oauth/applications
    case accessKey = ""
    case secretKey = ""
    case redirectURI = "urn:ietf:wg:oauth:2.0:oob"
    case accessScope = "public+read_user+write_likes"
    case defaultBaseURL = "https://api.unsplash.com"
    case authorizeURL = "https://unsplash.com/oauth/authorize"
    case authCodePath = "/oauth/authorize/native"
    case authTokenURL = "https://unsplash.com/oauth/token"
    case tokenDefaultsKey = "bearerToken"

    case profileImageChanged = "ProfileImageProviderDidChange"
}

extension String {
    static func key(_ constant: Constant) -> Self { constant.rawValue }
}
