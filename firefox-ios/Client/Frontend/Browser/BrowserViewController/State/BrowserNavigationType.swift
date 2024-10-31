// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/

import Foundation

/// View types that the browser coordinator can navigate to
enum BrowserNavigationDestination: Equatable {
    // Native views
    case customizeHomepage

    // Webpage views
    case link
}

/// This type exists as a field on the BrowserViewControllerState
struct NavigationDestination: Equatable {
    let destination: BrowserNavigationDestination
    let url: URL?

    init(
        _ destination: BrowserNavigationDestination,
        url: URL? = nil
    ) {
        self.destination = destination
        self.url = url
    }
}