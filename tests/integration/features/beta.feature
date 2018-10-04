Feature: Testing the update scenario of beta releases

  Scenario: Updating an outdated ownCloud 8.2.5 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "8.2.5"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.0.58" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-9.0.58.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/9/admin_manual/maintenance/manual_upgrade.html"
    And EOL is set to "1"
    And No signature is set

  Scenario: Updating an outdated Nextcloud 9.0.50 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "9.0.50"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.1.6.1" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-10.0.6.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And EOL is set to "1"
    And No signature is set

  Scenario: Updating an outdated Nextcloud 10.0.0 on the beta channel with PHP 5.6
    Given There is a release with channel "beta"
    And The received version is "9.1.0"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.8.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-11.0.8.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    CaYUimboWU3dURynPxieGo9V8KoNHe5js2XdivdjWQ1vsyfsnz1Nim33c0bQWzA5
    PosPk3vMUWxJpNKP92D0uyz1Xutkc/tCgsjsXrDaMzl1HUZ9W/PFWEtXTddD5fbJ
    8idQFiyiXNNpdDJ/gZjaUZcLWEgMI9MVoeFyKY1OORuJz1e9+I/UBHMTGo81H63X
    ApiCSIfXvfvbMMA6DOtorWjDJoHvCkrLef3zqEDDL5bF8NGVE/9f2hh2vSlJex45
    ko5tNR4IIGM3bIRBhw9455+Tc3dVZEpGBr6Yy3vSJmrQKYQ/degEe+S7ZWyVc3TQ
    ZH1PxQilL7ihAvnOb2oU1Q==
    """

  Scenario: Updating an outdated Nextcloud 10.0.0 on the beta channel with PHP 5.4 will receive the latest compatible release
    Given There is a release with channel "beta"
    And The received version is "9.1.0"
    And The received PHP version is "5.4.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.1.6.1" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-10.0.6.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And EOL is set to "1"
    And No signature is set

  Scenario: Updating an up-to-date Nextcloud 10.0.6 on the beta channel with PHP 5.4
    Given There is a release with channel "beta"
    And The received version is "9.1.6.1"
    And The received PHP version is "5.4.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.8.1" is available
    And URL to download is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And URL to documentation is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And EOL is set to "1"
    And No signature is set
    And Autoupdater is set to "0"

  Scenario: Updating an up-to-date Nextcloud 10.0.6 on the beta channel without sending PHP version
    Given There is a release with channel "beta"
    And The received version is "9.1.6.1"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.8.1" is available
    And URL to download is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And URL to documentation is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And EOL is set to "1"
    And No signature is set
    And Autoupdater is set to "0"

  Scenario: Updating an outdated Nextcloud 10.0.1 on the beta channel with PHP 5.6
    Given There is a release with channel "beta"
    And The received version is "9.1.1.1"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.8.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-11.0.8.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    CaYUimboWU3dURynPxieGo9V8KoNHe5js2XdivdjWQ1vsyfsnz1Nim33c0bQWzA5
    PosPk3vMUWxJpNKP92D0uyz1Xutkc/tCgsjsXrDaMzl1HUZ9W/PFWEtXTddD5fbJ
    8idQFiyiXNNpdDJ/gZjaUZcLWEgMI9MVoeFyKY1OORuJz1e9+I/UBHMTGo81H63X
    ApiCSIfXvfvbMMA6DOtorWjDJoHvCkrLef3zqEDDL5bF8NGVE/9f2hh2vSlJex45
    ko5tNR4IIGM3bIRBhw9455+Tc3dVZEpGBr6Yy3vSJmrQKYQ/degEe+S7ZWyVc3TQ
    ZH1PxQilL7ihAvnOb2oU1Q==
    """

  Scenario: Updating an outdated Nextcloud 11.0.0 beta on the beta channel
    Given There is a release with channel "beta"
    And The received version is "11.0.0.2"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.12.0" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-12.0.12RC1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    ZE9hGE8L9oyIO+40mZLpohpyy9YUqsfWP1+B0cplu0uoDo927mPRQUhDznx/bUuo
    X6NtWgJcR+4M0C9sFcw3v/9FxnW35LB27LhioXR9FV0wtlyNS+xe9NHjy2TC+RFD
    sVlbHpWaGCFmj0cgghIuYVyQj8ySqRkj3BI5lAn6pm8oFteZt3qtGyUusPHDVEpV
    mzSi9YSB8yaepkMWuUjU+kIX7Wq2VJquvhVXkHoRh6TzRSY+INmJwhlsCYxuwArF
    jBvKFBVnJa3rTilYBLvGSVf/ekNSXDs53SvMv0x6tkbYATCcLCd3ATDWQUvVGLyL
    IvgAbQ/Dni2m51wMvf1r2A==
    """

  Scenario: Updating an outdated Nextcloud 11.0.0 beta on the beta channel without an mtime
    Given There is a release with channel "beta"
    And The received version is "11.0.0.2"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.12.0" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-12.0.12RC1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    ZE9hGE8L9oyIO+40mZLpohpyy9YUqsfWP1+B0cplu0uoDo927mPRQUhDznx/bUuo
    X6NtWgJcR+4M0C9sFcw3v/9FxnW35LB27LhioXR9FV0wtlyNS+xe9NHjy2TC+RFD
    sVlbHpWaGCFmj0cgghIuYVyQj8ySqRkj3BI5lAn6pm8oFteZt3qtGyUusPHDVEpV
    mzSi9YSB8yaepkMWuUjU+kIX7Wq2VJquvhVXkHoRh6TzRSY+INmJwhlsCYxuwArF
    jBvKFBVnJa3rTilYBLvGSVf/ekNSXDs53SvMv0x6tkbYATCcLCd3ATDWQUvVGLyL
    IvgAbQ/Dni2m51wMvf1r2A==
    """

  Scenario: Updating an outdated Nextcloud 12.0.0 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "12.0.0.15"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.7.0" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-13.0.7RC1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    EjIoObsKTpRFrVec56CfAkWiYBmSNeihnjGAjaQxZQuvBI6KddWBCpraa9S5x2XZ
    6BYNwcSGV+GFywLce3EJIMoWj2orWJrXy+xybRp1ytC3mfgFkFXr2DGuEckoVW6P
    Z+1hufpwaoxwloFjwAsFFB/ErFBjPDk1zf/YGbgjSNZVNw+E/ubwkQzitnWaWOzb
    n7dQGehoXKKVIUqASoS+2yZLBWbjJig3buPZ3Wq9mqHvQ30wPcR5AdRrRB0vUhy/
    gpFgCUPDsZndE1iopuWIEM2Yu3oF1MH+UhJ6zV8kAOoilT4NiViXYbUzdWQs24Aw
    nffa7Emuno34NcuHHSDQNA==
    """

  Scenario: Updating an up-to-date Nextcloud 12.0.7 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "12.0.7.1"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.7.0" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-13.0.7RC1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    EjIoObsKTpRFrVec56CfAkWiYBmSNeihnjGAjaQxZQuvBI6KddWBCpraa9S5x2XZ
    6BYNwcSGV+GFywLce3EJIMoWj2orWJrXy+xybRp1ytC3mfgFkFXr2DGuEckoVW6P
    Z+1hufpwaoxwloFjwAsFFB/ErFBjPDk1zf/YGbgjSNZVNw+E/ubwkQzitnWaWOzb
    n7dQGehoXKKVIUqASoS+2yZLBWbjJig3buPZ3Wq9mqHvQ30wPcR5AdRrRB0vUhy/
    gpFgCUPDsZndE1iopuWIEM2Yu3oF1MH+UhJ6zV8kAOoilT4NiViXYbUzdWQs24Aw
    nffa7Emuno34NcuHHSDQNA==
    """

  Scenario: Updating an outdated Nextcloud 13.0.0 on the beta channel on PHP 5.6
    Given There is a release with channel "beta"
    And The received version is "13.0.0.8"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.7.0" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-13.0.7RC1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    EjIoObsKTpRFrVec56CfAkWiYBmSNeihnjGAjaQxZQuvBI6KddWBCpraa9S5x2XZ
    6BYNwcSGV+GFywLce3EJIMoWj2orWJrXy+xybRp1ytC3mfgFkFXr2DGuEckoVW6P
    Z+1hufpwaoxwloFjwAsFFB/ErFBjPDk1zf/YGbgjSNZVNw+E/ubwkQzitnWaWOzb
    n7dQGehoXKKVIUqASoS+2yZLBWbjJig3buPZ3Wq9mqHvQ30wPcR5AdRrRB0vUhy/
    gpFgCUPDsZndE1iopuWIEM2Yu3oF1MH+UhJ6zV8kAOoilT4NiViXYbUzdWQs24Aw
    nffa7Emuno34NcuHHSDQNA==
    """

  Scenario: Updating an outdated Nextcloud 13.0.0 on the beta channel on PHP 5.6
    Given There is a release with channel "beta"
    And The received version is "13.0.0.8"
    And The received PHP version is "5.6.0"
    And the installation mtime is "90"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.7.0" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-13.0.7RC1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    EjIoObsKTpRFrVec56CfAkWiYBmSNeihnjGAjaQxZQuvBI6KddWBCpraa9S5x2XZ
    6BYNwcSGV+GFywLce3EJIMoWj2orWJrXy+xybRp1ytC3mfgFkFXr2DGuEckoVW6P
    Z+1hufpwaoxwloFjwAsFFB/ErFBjPDk1zf/YGbgjSNZVNw+E/ubwkQzitnWaWOzb
    n7dQGehoXKKVIUqASoS+2yZLBWbjJig3buPZ3Wq9mqHvQ30wPcR5AdRrRB0vUhy/
    gpFgCUPDsZndE1iopuWIEM2Yu3oF1MH+UhJ6zV8kAOoilT4NiViXYbUzdWQs24Aw
    nffa7Emuno34NcuHHSDQNA==
    """

  Scenario: Updating an outdated Nextcloud 13.0.0 on the beta channel on PHP 7.0
    Given There is a release with channel "beta"
    And The received version is "13.0.0.8"
    And The received PHP version is "7.0.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "14.0.1.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-14.0.1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/14/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    GMLD/dgAkP8AtldfrBib1Jz9WAehw3wqnCRfReCckOt5XfGY8DjtGzDuyt285862
    8wOPvmEIZsrGSooGiAgNv4H3kXO21EzzBwOyov26dyh+OtTxfxpN6yLEKpcRSWPj
    GweHorjisB2gqf6P/nD9yo69QCEIZKm8O2wx09K+QC8jwJ+UxdSm6p7b/d14lPwW
    n6hwHIcpwKicNJiLGWhHpslC64nIqp+DAbOeFtl+mVGpigyNec5+JekMVCayAGAs
    RS5Otchsk2GtWqPWtQEWSbkPFxuIJY9ij1RY+ocABIfQ8b55pbwkRNpjAawq5+3G
    UhPQ296yv/FbIxF+rWpL+g==
    """

  Scenario: Updating an outdated Nextcloud 13.0.0 on the beta channel on PHP 7.0
    Given There is a release with channel "beta"
    And The received version is "13.0.0.8"
    And The received PHP version is "7.0.0"
    And the installation mtime is "90"
    When The request is sent
    Then The response is non-empty
    And Update to version "14.0.1.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-14.0.1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/14/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    GMLD/dgAkP8AtldfrBib1Jz9WAehw3wqnCRfReCckOt5XfGY8DjtGzDuyt285862
    8wOPvmEIZsrGSooGiAgNv4H3kXO21EzzBwOyov26dyh+OtTxfxpN6yLEKpcRSWPj
    GweHorjisB2gqf6P/nD9yo69QCEIZKm8O2wx09K+QC8jwJ+UxdSm6p7b/d14lPwW
    n6hwHIcpwKicNJiLGWhHpslC64nIqp+DAbOeFtl+mVGpigyNec5+JekMVCayAGAs
    RS5Otchsk2GtWqPWtQEWSbkPFxuIJY9ij1RY+ocABIfQ8b55pbwkRNpjAawq5+3G
    UhPQ296yv/FbIxF+rWpL+g==
    """

  Scenario: Updating an outdated Nextcloud 14.0.0 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "14.0.0.8"
    And The received PHP version is "7.0.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "14.0.1.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-14.0.1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/14/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    GMLD/dgAkP8AtldfrBib1Jz9WAehw3wqnCRfReCckOt5XfGY8DjtGzDuyt285862
    8wOPvmEIZsrGSooGiAgNv4H3kXO21EzzBwOyov26dyh+OtTxfxpN6yLEKpcRSWPj
    GweHorjisB2gqf6P/nD9yo69QCEIZKm8O2wx09K+QC8jwJ+UxdSm6p7b/d14lPwW
    n6hwHIcpwKicNJiLGWhHpslC64nIqp+DAbOeFtl+mVGpigyNec5+JekMVCayAGAs
    RS5Otchsk2GtWqPWtQEWSbkPFxuIJY9ij1RY+ocABIfQ8b55pbwkRNpjAawq5+3G
    UhPQ296yv/FbIxF+rWpL+g==
    """
