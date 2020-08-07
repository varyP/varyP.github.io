import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct varyPGithubIO: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
        case about
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://your-website-url.com")!
    var name = "Varun's Blog"
    var description = "I'm Varun Parakh. A Software Development Engineer with expertise in Mobile Applications, Payments & Gamification. With apps featured on Apple's App Store & Google Play Store, i've worked on mobile apps with millions of downloads and mass reach to audiences from States & EU to India. My key skills sets includes designing and development of mobile applications & real-time multi-player mobile games that can serve millions of users on a daily basis. Some of the technologies/languages that I use in my daily life are Swift, Rx, Objective-C, C++, Cocos-2DX, Restful web services, GCP, SQL-Lite, Performance Monitoring tools, Project Management Tool - JIRA, Git, Slack. "
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try varyPGithubIO().publish(withTheme: .localTheme,
                            deployedUsing: .gitHub("varyP/varyP.github.io"))





/*
private extension Node where Context == HTML.BodyContext {
    static func wrapper(_ nodes: Node...) -> Node {
        .div(.class("wrapper"), .group(nodes))
    }

    static func itemList<T: Website>(for items: [Item<T>], on site: T) -> Node {
        return .ul(
            .class("item-list"),
            .forEach(items) { item in
                .li(.article(
                    .h1(.a(
                        .href(item.path),
                        .text(item.title)
                    )),
//                    .tagList(for: item, on: site),
                    .p(.text(item.description))
                )) //li
            } //forEach
        ) //ul
    }
}

extension Node where Context == HTML.BodyContext {
    static func myHeader<T: Website>(for context: PublishingContext<T>) -> Node {
        .header(
            .wrapper(
                .nav(
                    .class("site-name"),
                    .a(
                        .href("/"),
                        .text(context.site.name)
                    )
                )//nav
            )//wrapper
        )//header
    }
}

struct MyHTMLFactory<Site: Website>: HTMLFactory {
    func makeIndexHTML(for index: Index, context: PublishingContext<Site>) throws -> HTML {
        HTML(
            .head(for: index, on: context.site),
            .body(
                .myHeader(for: context),
                .wrapper(
                    .ul(
                        .class("item-list"),
                        .forEach(context.allItems(sortedBy: \.date, order: .descending)) {
                            item in
                            .li(
                                .article(
                                    .h1(.a(
                                        .href(item.path),
                                        .text(item.title)
                                        )),
                                    .p(.text(item.description))
                                )
                            )//li
                        }//foreach
                    )//ul
                )//wrapper
            )//body
        )//html
    }

    func makeSectionHTML(for section: Section<Site>, context: PublishingContext<Site>) throws -> HTML {
        try makeIndexHTML(for: context.index, context: context)
    }

    func makeItemHTML(for item: Item<Site>, context: PublishingContext<Site>) throws -> HTML {
        HTML(
            .head(for: item, on: context.site),
            .body(
                .myHeader(for: context),
                .wrapper(
                    .article(
                        .contentBody(item.body)
                    )
                ))
        )
    }

    func makePageHTML(for page: Page, context: PublishingContext<Site>) throws -> HTML {
        try makeIndexHTML(for: context.index, context: context)
    }

    func makeTagListHTML(for page: TagListPage, context: PublishingContext<Site>) throws -> HTML? {
        nil
    }

    func makeTagDetailsHTML(for page: TagDetailsPage, context: PublishingContext<Site>) throws -> HTML? {
        nil
    }
}

//extension Theme {
//    static var myTheme: Theme {
//        Theme(htmlFactory: MyHTMLFactory(),
//              resourcePaths: ["Resources/MyTheme/styles.css"])
//    }
//}
*/
