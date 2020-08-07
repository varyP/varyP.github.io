import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct varyPGithubIo: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
        case about
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://varyP.github.io")!
    var name = "Varun's Blog"
    var description = "I'm Varun Parakh. A Software Development Engineer with expertise in Mobile Applications, Payments & Gamification. With apps featured on Apple's App Store & Google Play Store, i've worked on mobile apps with millions of downloads and mass reach to audiences from States & EU to India. My key skills sets includes designing and development of mobile applications & real-time multi-player mobile games that can serve millions of users on a daily basis. Some of the technologies/languages that I use in my daily life are Swift, Rx, Objective-C, C++, Cocos-2DX, Restful web services, GCP, SQL-Lite, Performance Monitoring tools, Project Management Tool - JIRA, Git, Slack. "
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try varyPGithubIo().publish(withTheme: .localTheme,
                            deployedUsing: .gitHub("varyP/varyP.github.io", useSSH: false))
