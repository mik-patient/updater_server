Feature: Testing the update scenario of releases
  Scenario: Updating an outdated ownCloud 8.2.5 on the production channel
    Given There is a release with channel "production"
    And The received version is "8.2.5"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.0.58" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-9.0.58.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/9/admin_manual/maintenance/manual_upgrade.html"
    And No signature is set

  Scenario: Updating an outdated ownCloud 8.2.5 on the stable channel
    Given There is a release with channel "stable"
    And The received version is "8.2.5"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.0.58" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-9.0.58.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/9/admin_manual/maintenance/manual_upgrade.html"
    And No signature is set
    
  Scenario: Updating an outdated ownCloud 8.2.5 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "8.2.5"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.0.58" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-9.0.58.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/9/admin_manual/maintenance/manual_upgrade.html"
    And No signature is set

  Scenario: Updating an outdated ownCloud 8.2.5 on the daily channel
    Given There is a release with channel "daily"
    And The received version is "8.2.5"
    And the received build is "2012-10-19T18:44:30+00:00%208ee2009de36e01a9866404f07722892f84c16e3e"
    When The request is sent
    Then The response is non-empty
    And Update to version "100.0.0.0" is available
    And URL to download is "https://download.nextcloud.com/server/daily/latest-stable9.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/9/admin_manual/maintenance/manual_upgrade.html"
    And No signature is set

  Scenario: Updating an outdated Nextcloud 9.0.50 on the production channel
    Given There is a release with channel "production"
    And The received version is "9.0.50"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.1.6.1" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-10.0.6.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And No signature is set

  Scenario: Updating an outdated Nextcloud 9.0.50 on the stable channel
    Given There is a release with channel "stable"
    And The received version is "9.0.50"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.1.6.1" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-10.0.6.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And No signature is set

  Scenario: Updating an outdated Nextcloud 9.0.50 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "9.0.50"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.1.6.1" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-10.0.6.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And No signature is set

  Scenario: Updating an up-to-date Nextcloud 9.0.55 on the production channel
    Given There is a release with channel "production"
    And The received version is "9.0.55"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.1.6.1" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-10.0.6.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And No signature is set

  Scenario: Updating an up-to-date Nextcloud 9.0.55 on the stable channel
    Given There is a release with channel "stable"
    And The received version is "9.0.55"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.1.6.1" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-10.0.6.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And No signature is set

  Scenario: Updating an outdated staged Nextcloud 10.0.3 with PHP 5.4 on the production channel
    Given There is a release with channel "production"
    And The received PHP version is "5.4.0"
    And the installation mtime is "60"
    And The received version is "9.1.0.2"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.1.6.1" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-10.0.6.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And No signature is set

  Scenario: Updating an up-to-date Nextcloud 10.0.3 with PHP 5.6 and no mtime on the production channel
    Given There is a release with channel "production"
    And The received PHP version is "5.6.0"
    And The received version is "9.1.0.2"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.6.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-11.0.6.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
    OaNjted6Hw/rpiE07lbWTCRgePzWO970h3/I2wRyXwctlYv5BKdFBF7Q2L6BG3ml
    alihAAjVXU9kxK/YL40ZIK7MW2RwIXTOnNSzXbi4VqpX11UhshVvRqsR+xubg0jI
    8aa1ahICZaezkfW32AdIOVmVxTfz7JOrxKEq1fg5/4n5z0J5jyBKkx2a2ZVLaMLO
    Fs4ECJ2ntpMtD4+2X0V4TXNZN3LPpDHE5vwTBHcJr52R0+s96731FYRUGesGmsHb
    xG0LjsK2vZOV4ZHT3tZPHGUV1Nrpfj5LIuCyPgn0w+XqTBm+AuF1W5MsgtDq0GOo
    /l4U06AGoCaWHiYAKXbHGg==
    """

  Scenario: Updating an up-to-date staged Nextcloud 10.0.6 with PHP 5.4 on the production channel
    Given There is a release with channel "production"
    And The received PHP version is "5.4.0"
    And the installation mtime is "60"
    And The received version is "9.1.6.1"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.6.1" is available
    And URL to download is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And URL to documentation is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And No signature is set
    And Autoupdater is set to "0"

  Scenario: Updating an up-to-date staged Nextcloud 10.0.6 with PHP 5.6 on the production channel
    Given There is a release with channel "production"
    And The received PHP version is "5.6.0"
    And the installation mtime is "60"
    And The received version is "9.1.6.1"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.6.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-11.0.6.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
    OaNjted6Hw/rpiE07lbWTCRgePzWO970h3/I2wRyXwctlYv5BKdFBF7Q2L6BG3ml
    alihAAjVXU9kxK/YL40ZIK7MW2RwIXTOnNSzXbi4VqpX11UhshVvRqsR+xubg0jI
    8aa1ahICZaezkfW32AdIOVmVxTfz7JOrxKEq1fg5/4n5z0J5jyBKkx2a2ZVLaMLO
    Fs4ECJ2ntpMtD4+2X0V4TXNZN3LPpDHE5vwTBHcJr52R0+s96731FYRUGesGmsHb
    xG0LjsK2vZOV4ZHT3tZPHGUV1Nrpfj5LIuCyPgn0w+XqTBm+AuF1W5MsgtDq0GOo
    /l4U06AGoCaWHiYAKXbHGg==
    """

  Scenario: Updating an up-to-date staged Nextcloud 10.0.6 with PHP 5.4 on the stable channel
    Given There is a release with channel "stable"
    And The received PHP version is "5.4.0"
    And the installation mtime is "60"
    And The received version is "9.1.6.1"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.6.1" is available
    And URL to download is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And URL to documentation is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And No signature is set
    And Autoupdater is set to "0"

  Scenario: Updating an outdated Nextcloud 10.0.2 on the stable channel without PHP version
    Given There is a release with channel "stable"
    And The received version is "9.1.2.0"
    When The request is sent
    When The request is sent
    Then The response is non-empty
    And Update to version "9.1.6.1" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-10.0.6.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And No signature is set

  Scenario: Updating an up-to-date staged Nextcloud 10.0.6 with PHP 5.6 on the stable channel
    Given There is a release with channel "stable"
    And The received PHP version is "5.6.0"
    And the installation mtime is "60"
    And The received version is "9.1.6.1"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.6.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-11.0.6.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
    OaNjted6Hw/rpiE07lbWTCRgePzWO970h3/I2wRyXwctlYv5BKdFBF7Q2L6BG3ml
    alihAAjVXU9kxK/YL40ZIK7MW2RwIXTOnNSzXbi4VqpX11UhshVvRqsR+xubg0jI
    8aa1ahICZaezkfW32AdIOVmVxTfz7JOrxKEq1fg5/4n5z0J5jyBKkx2a2ZVLaMLO
    Fs4ECJ2ntpMtD4+2X0V4TXNZN3LPpDHE5vwTBHcJr52R0+s96731FYRUGesGmsHb
    xG0LjsK2vZOV4ZHT3tZPHGUV1Nrpfj5LIuCyPgn0w+XqTBm+AuF1W5MsgtDq0GOo
    /l4U06AGoCaWHiYAKXbHGg==
    """

  Scenario: Updating an outdated Nextcloud 10.0.0 on the beta channel with PHP 5.6
    Given There is a release with channel "beta"
    And The received version is "9.1.0"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.7.0" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-11.0.7RC1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
    conEV+YMsFSYzmkFwMEkDRyVk8XEXIN9ASGmMaMQLnrnHNFP+xNqIAeYD5lOyXVY
    TrjIui/3AjwZv8GNSVHP2NZi0ubUk4GDSJFEAkAjLnoFe/ZRg4igQ6C2dBgja1vt
    2dMRhWeIavnb3pZDkuUnMfRHlu3CZ00BZbTjT9lBYZWRrV5t/wPhXtO3qANYg33X
    h/NC2uu1mWJxeiXuNjqwCjvabV1q5SkLP2m0H3cGJosS6ONw9huIlYR6vGpfmWr4
    xEmSKfWsGM80BiLHy0WXxELdjtHr3nGhmrMWMjK/OdX4KQ/4IHs6LHIR76zOzIrB
    lRO0pTDy+yQYqa0DQ3wjFQ==
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
    And No signature is set

  Scenario: Updating an up-to-date Nextcloud 10.0.6 on the beta channel with PHP 5.4
    Given There is a release with channel "beta"
    And The received version is "9.1.6.1"
    And The received PHP version is "5.4.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.6.1" is available
    And URL to download is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And URL to documentation is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And No signature is set
    And Autoupdater is set to "0"

  Scenario: Updating an up-to-date Nextcloud 10.0.6 on the beta channel without sending PHP version
    Given There is a release with channel "beta"
    And The received version is "9.1.6.1"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.6.1" is available
    And URL to download is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And URL to documentation is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And No signature is set
    And Autoupdater is set to "0"

  Scenario: Updating an outdated Nextcloud 10.0.1 on the beta channel with PHP 5.6
    Given There is a release with channel "beta"
    And The received version is "9.1.1.1"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.7.0" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-11.0.7RC1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
    conEV+YMsFSYzmkFwMEkDRyVk8XEXIN9ASGmMaMQLnrnHNFP+xNqIAeYD5lOyXVY
    TrjIui/3AjwZv8GNSVHP2NZi0ubUk4GDSJFEAkAjLnoFe/ZRg4igQ6C2dBgja1vt
    2dMRhWeIavnb3pZDkuUnMfRHlu3CZ00BZbTjT9lBYZWRrV5t/wPhXtO3qANYg33X
    h/NC2uu1mWJxeiXuNjqwCjvabV1q5SkLP2m0H3cGJosS6ONw9huIlYR6vGpfmWr4
    xEmSKfWsGM80BiLHy0WXxELdjtHr3nGhmrMWMjK/OdX4KQ/4IHs6LHIR76zOzIrB
    lRO0pTDy+yQYqa0DQ3wjFQ==
    """

  Scenario: Updating an outdated Nextcloud 11.0.0 beta on the beta channel
    Given There is a release with channel "beta"
    And The received version is "11.0.0.2"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.7.0" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-11.0.7RC1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
    conEV+YMsFSYzmkFwMEkDRyVk8XEXIN9ASGmMaMQLnrnHNFP+xNqIAeYD5lOyXVY
    TrjIui/3AjwZv8GNSVHP2NZi0ubUk4GDSJFEAkAjLnoFe/ZRg4igQ6C2dBgja1vt
    2dMRhWeIavnb3pZDkuUnMfRHlu3CZ00BZbTjT9lBYZWRrV5t/wPhXtO3qANYg33X
    h/NC2uu1mWJxeiXuNjqwCjvabV1q5SkLP2m0H3cGJosS6ONw9huIlYR6vGpfmWr4
    xEmSKfWsGM80BiLHy0WXxELdjtHr3nGhmrMWMjK/OdX4KQ/4IHs6LHIR76zOzIrB
    lRO0pTDy+yQYqa0DQ3wjFQ==
    """

  Scenario: Updating an outdated Nextcloud 11.0.0 beta on the beta channel without an mtime
    Given There is a release with channel "beta"
    And The received version is "11.0.0.2"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.7.0" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-11.0.7RC1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
    conEV+YMsFSYzmkFwMEkDRyVk8XEXIN9ASGmMaMQLnrnHNFP+xNqIAeYD5lOyXVY
    TrjIui/3AjwZv8GNSVHP2NZi0ubUk4GDSJFEAkAjLnoFe/ZRg4igQ6C2dBgja1vt
    2dMRhWeIavnb3pZDkuUnMfRHlu3CZ00BZbTjT9lBYZWRrV5t/wPhXtO3qANYg33X
    h/NC2uu1mWJxeiXuNjqwCjvabV1q5SkLP2m0H3cGJosS6ONw9huIlYR6vGpfmWr4
    xEmSKfWsGM80BiLHy0WXxELdjtHr3nGhmrMWMjK/OdX4KQ/4IHs6LHIR76zOzIrB
    lRO0pTDy+yQYqa0DQ3wjFQ==
    """

  Scenario: Updating a non-staged outdated Nextcloud 11.0.0 stable without PHP version
    Given There is a release with channel "stable"
    And The received version is "11.0.0.2"
    And The installation mtime is "20"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.4.3" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-12.0.4.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
    pdpExf2i5sgwNzkP7fcOKWBcMoZzsSe8PwjZYYi0ZFlUqayQMnlVqmZ0Lc/hBWg/
    AAuiH+WViv/dHfxECMlcHTVBFABCn8qqHlfllfEoLVGI2V3GoOOYdij72N5pFm3Z
    8A8ccUEHso3QjdhiwcofSyJ5vxWdJZvruNIdW9M+UfW3Sm98HYoirRUEdvEBKJzZ
    OOkWI1NexeTzPBErQneNvI1iXl5LSV9Ert4HfIVkMA8Wfpvt8X6tH7G5pGpBrky3
    nc4UiS2SHl724076KdRNT3amt3XvhkSs6WukH6hAxiWIvygBVRYbAE2tUW+7UPoh
    1lfbqYRCWrhsrulksMda/A==
    """

  Scenario: Updating a staged outdated Nextcloud 11.0.0 stable without PHP version
    Given There is a release with channel "stable"
    And The received version is "11.0.0.2"
    And The installation mtime is "15"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.4.3" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-12.0.4.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
    pdpExf2i5sgwNzkP7fcOKWBcMoZzsSe8PwjZYYi0ZFlUqayQMnlVqmZ0Lc/hBWg/
    AAuiH+WViv/dHfxECMlcHTVBFABCn8qqHlfllfEoLVGI2V3GoOOYdij72N5pFm3Z
    8A8ccUEHso3QjdhiwcofSyJ5vxWdJZvruNIdW9M+UfW3Sm98HYoirRUEdvEBKJzZ
    OOkWI1NexeTzPBErQneNvI1iXl5LSV9Ert4HfIVkMA8Wfpvt8X6tH7G5pGpBrky3
    nc4UiS2SHl724076KdRNT3amt3XvhkSs6WukH6hAxiWIvygBVRYbAE2tUW+7UPoh
    1lfbqYRCWrhsrulksMda/A==
    """

  Scenario: Updating an outdated Nextcloud 11.0.0 production without PHP version
    Given There is a release with channel "production"
    And The received version is "11.0.0.2"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.6.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-11.0.6.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
    OaNjted6Hw/rpiE07lbWTCRgePzWO970h3/I2wRyXwctlYv5BKdFBF7Q2L6BG3ml
    alihAAjVXU9kxK/YL40ZIK7MW2RwIXTOnNSzXbi4VqpX11UhshVvRqsR+xubg0jI
    8aa1ahICZaezkfW32AdIOVmVxTfz7JOrxKEq1fg5/4n5z0J5jyBKkx2a2ZVLaMLO
    Fs4ECJ2ntpMtD4+2X0V4TXNZN3LPpDHE5vwTBHcJr52R0+s96731FYRUGesGmsHb
    xG0LjsK2vZOV4ZHT3tZPHGUV1Nrpfj5LIuCyPgn0w+XqTBm+AuF1W5MsgtDq0GOo
    /l4U06AGoCaWHiYAKXbHGg==
    """

  Scenario: Updating a non-staged outdated Nextcloud 11.0.0 beta on the empty channel - will use the stable channel then
    Given There is a release with channel ""
    And The received version is "11.0.0.2"
    And the installation mtime is "20"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.4.3" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-12.0.4.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
    pdpExf2i5sgwNzkP7fcOKWBcMoZzsSe8PwjZYYi0ZFlUqayQMnlVqmZ0Lc/hBWg/
    AAuiH+WViv/dHfxECMlcHTVBFABCn8qqHlfllfEoLVGI2V3GoOOYdij72N5pFm3Z
    8A8ccUEHso3QjdhiwcofSyJ5vxWdJZvruNIdW9M+UfW3Sm98HYoirRUEdvEBKJzZ
    OOkWI1NexeTzPBErQneNvI1iXl5LSV9Ert4HfIVkMA8Wfpvt8X6tH7G5pGpBrky3
    nc4UiS2SHl724076KdRNT3amt3XvhkSs6WukH6hAxiWIvygBVRYbAE2tUW+7UPoh
    1lfbqYRCWrhsrulksMda/A==
    """

  Scenario: Updating an outdated Nextcloud 12.0.0 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "12.0.0.15"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.5.0" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-12.0.5RC1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
    EW7B8CT39IWaZ+7Et//JXbzUoWSZZ0lgp8DGfZg8stAoKMei1LetY+mpg5j2l7IM
    DLT2c+B6OiLYZIBmqfexSzW0935kewlBnHc4iD0Pi3PrFHIHzphBmqBZHTAh5nLN
    YWjAQGTC8KYLPqBoWYyWQ5WDK4SGNwIrsu5DlCN42ioBpZohrlu9vSIDq2peoXdi
    yKjY6G/Lo4SXG0m5zslpN1cK63DnKYgGqKoXgWnF4LfX3fT4cbtPYhyAPJMRH91u
    GRHTam7qzRDin1H1uq6yvFeOEU5kE6bTso2GJBfEmN0V4oaJWrpgZovCy/5yMDDJ
    3cpEfirKTkDi8etfILgNhA==
    """

  Scenario: Updating an up-to-date Nextcloud 12.0.4 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "12.0.4.3"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.5.0" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-12.0.5RC1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
    EW7B8CT39IWaZ+7Et//JXbzUoWSZZ0lgp8DGfZg8stAoKMei1LetY+mpg5j2l7IM
    DLT2c+B6OiLYZIBmqfexSzW0935kewlBnHc4iD0Pi3PrFHIHzphBmqBZHTAh5nLN
    YWjAQGTC8KYLPqBoWYyWQ5WDK4SGNwIrsu5DlCN42ioBpZohrlu9vSIDq2peoXdi
    yKjY6G/Lo4SXG0m5zslpN1cK63DnKYgGqKoXgWnF4LfX3fT4cbtPYhyAPJMRH91u
    GRHTam7qzRDin1H1uq6yvFeOEU5kE6bTso2GJBfEmN0V4oaJWrpgZovCy/5yMDDJ
    3cpEfirKTkDi8etfILgNhA==
    """

  Scenario: Updating an outdated Nextcloud 13.0.0 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "13.0.0.8"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.0.9" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-13.0.0beta4.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
    noYYOzFveAbmTne7XANMHTRBjZGp4U/dGXdsCDdJ6iG+xWMKhY2Dp8Ud6FBfzl01
    WMxbczaTUAXz9NJ8q9v/JU+8Cg2U8Bs9VI1xvN3iGbqus8ZsUkyelxi+q7dKqW1c
    v/Y6PA375Ni6nmUViO3QMABLDdqpC+DKRGXo2Y3HcW63exaL9QmMwr2UHL8P2II2
    eG+WZDnjM2FElTOfF1vQdVYJkNOOhrAfJqw85iLg/hbOgTNxiArtZk5I2iW5L3lL
    rJe127m0qaYbnjtuRwreqskDvgRkqKiN2H+CtrtWrBAbFrPUw1mdH2izZowU33e5
    aPqrdR1bsE6UW/Z5tL+Lsg==
    """

  Scenario: Updating a non-staged outdated Nextcloud 11.0.0 beta on the stable channel
    Given There is a release with channel "stable"
    And The received version is "11.0.0.2"
    And The received PHP version is "5.6.0"
    And The installation mtime is "20"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.4.3" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-12.0.4.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
    pdpExf2i5sgwNzkP7fcOKWBcMoZzsSe8PwjZYYi0ZFlUqayQMnlVqmZ0Lc/hBWg/
    AAuiH+WViv/dHfxECMlcHTVBFABCn8qqHlfllfEoLVGI2V3GoOOYdij72N5pFm3Z
    8A8ccUEHso3QjdhiwcofSyJ5vxWdJZvruNIdW9M+UfW3Sm98HYoirRUEdvEBKJzZ
    OOkWI1NexeTzPBErQneNvI1iXl5LSV9Ert4HfIVkMA8Wfpvt8X6tH7G5pGpBrky3
    nc4UiS2SHl724076KdRNT3amt3XvhkSs6WukH6hAxiWIvygBVRYbAE2tUW+7UPoh
    1lfbqYRCWrhsrulksMda/A==
    """

  Scenario: Updating a non-staged up-to-date Nextcloud 11.0.0 on the stable channel
    Given There is a release with channel "stable"
    And The received version is "11.0.6.1"
    And The installation mtime is "20"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.4.3" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-12.0.4.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
    pdpExf2i5sgwNzkP7fcOKWBcMoZzsSe8PwjZYYi0ZFlUqayQMnlVqmZ0Lc/hBWg/
    AAuiH+WViv/dHfxECMlcHTVBFABCn8qqHlfllfEoLVGI2V3GoOOYdij72N5pFm3Z
    8A8ccUEHso3QjdhiwcofSyJ5vxWdJZvruNIdW9M+UfW3Sm98HYoirRUEdvEBKJzZ
    OOkWI1NexeTzPBErQneNvI1iXl5LSV9Ert4HfIVkMA8Wfpvt8X6tH7G5pGpBrky3
    nc4UiS2SHl724076KdRNT3amt3XvhkSs6WukH6hAxiWIvygBVRYbAE2tUW+7UPoh
    1lfbqYRCWrhsrulksMda/A==
    """

  Scenario: Updating an up-to-date Nextcloud 11.0.0 on the stable channel without mtime
    Given There is a release with channel "stable"
    And The received version is "11.0.6.1"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.4.3" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-12.0.4.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
    pdpExf2i5sgwNzkP7fcOKWBcMoZzsSe8PwjZYYi0ZFlUqayQMnlVqmZ0Lc/hBWg/
    AAuiH+WViv/dHfxECMlcHTVBFABCn8qqHlfllfEoLVGI2V3GoOOYdij72N5pFm3Z
    8A8ccUEHso3QjdhiwcofSyJ5vxWdJZvruNIdW9M+UfW3Sm98HYoirRUEdvEBKJzZ
    OOkWI1NexeTzPBErQneNvI1iXl5LSV9Ert4HfIVkMA8Wfpvt8X6tH7G5pGpBrky3
    nc4UiS2SHl724076KdRNT3amt3XvhkSs6WukH6hAxiWIvygBVRYbAE2tUW+7UPoh
    1lfbqYRCWrhsrulksMda/A==
    """

  Scenario: Updating a non-staged outdated Nextcloud 11.0.0 beta on the production channel
    Given There is a release with channel "production"
    And The received version is "11.0.0.2"
    And The received PHP version is "5.6.0"
    And The installation mtime is "20"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.6.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-11.0.6.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
    OaNjted6Hw/rpiE07lbWTCRgePzWO970h3/I2wRyXwctlYv5BKdFBF7Q2L6BG3ml
    alihAAjVXU9kxK/YL40ZIK7MW2RwIXTOnNSzXbi4VqpX11UhshVvRqsR+xubg0jI
    8aa1ahICZaezkfW32AdIOVmVxTfz7JOrxKEq1fg5/4n5z0J5jyBKkx2a2ZVLaMLO
    Fs4ECJ2ntpMtD4+2X0V4TXNZN3LPpDHE5vwTBHcJr52R0+s96731FYRUGesGmsHb
    xG0LjsK2vZOV4ZHT3tZPHGUV1Nrpfj5LIuCyPgn0w+XqTBm+AuF1W5MsgtDq0GOo
    /l4U06AGoCaWHiYAKXbHGg==
    """

  Scenario: Updating a non-staged up-to-date Nextcloud 11.0.6 on the production channel with PHP 5.6
    Given There is a release with channel "production"
    And The received version is "11.0.6.1"
    And The received PHP version is "5.6.0"
    And The installation mtime is "20"
    When The request is sent
    Then The response is empty

  Scenario: Updating a non-staged up-to-date Nextcloud 11.0.6 on the production channel without PHP version
    Given There is a release with channel "production"
    And The received version is "11.0.6.1"
    And The installation mtime is "20"
    When The request is sent
    Then The response is empty

 Scenario: Updating an outdated Nextcloud 12.0.0 beta on the beta channel
    Given There is a release with channel "beta"
    And The received version is "12.0.0.16"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.5.0" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-12.0.5RC1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
    EW7B8CT39IWaZ+7Et//JXbzUoWSZZ0lgp8DGfZg8stAoKMei1LetY+mpg5j2l7IM
    DLT2c+B6OiLYZIBmqfexSzW0935kewlBnHc4iD0Pi3PrFHIHzphBmqBZHTAh5nLN
    YWjAQGTC8KYLPqBoWYyWQ5WDK4SGNwIrsu5DlCN42ioBpZohrlu9vSIDq2peoXdi
    yKjY6G/Lo4SXG0m5zslpN1cK63DnKYgGqKoXgWnF4LfX3fT4cbtPYhyAPJMRH91u
    GRHTam7qzRDin1H1uq6yvFeOEU5kE6bTso2GJBfEmN0V4oaJWrpgZovCy/5yMDDJ
    3cpEfirKTkDi8etfILgNhA==
    """

 Scenario: Updating an up-to-date Nextcloud 12.0.4 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "12.0.4.3"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.5.0" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-12.0.5RC1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
    EW7B8CT39IWaZ+7Et//JXbzUoWSZZ0lgp8DGfZg8stAoKMei1LetY+mpg5j2l7IM
    DLT2c+B6OiLYZIBmqfexSzW0935kewlBnHc4iD0Pi3PrFHIHzphBmqBZHTAh5nLN
    YWjAQGTC8KYLPqBoWYyWQ5WDK4SGNwIrsu5DlCN42ioBpZohrlu9vSIDq2peoXdi
    yKjY6G/Lo4SXG0m5zslpN1cK63DnKYgGqKoXgWnF4LfX3fT4cbtPYhyAPJMRH91u
    GRHTam7qzRDin1H1uq6yvFeOEU5kE6bTso2GJBfEmN0V4oaJWrpgZovCy/5yMDDJ
    3cpEfirKTkDi8etfILgNhA==
    """

 Scenario: Updating an outdated Nextcloud 12.0.0 beta on the stable channel
    Given There is a release with channel "stable"
    And The received version is "12.0.0.16"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.4.3" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-12.0.4.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
    pdpExf2i5sgwNzkP7fcOKWBcMoZzsSe8PwjZYYi0ZFlUqayQMnlVqmZ0Lc/hBWg/
    AAuiH+WViv/dHfxECMlcHTVBFABCn8qqHlfllfEoLVGI2V3GoOOYdij72N5pFm3Z
    8A8ccUEHso3QjdhiwcofSyJ5vxWdJZvruNIdW9M+UfW3Sm98HYoirRUEdvEBKJzZ
    OOkWI1NexeTzPBErQneNvI1iXl5LSV9Ert4HfIVkMA8Wfpvt8X6tH7G5pGpBrky3
    nc4UiS2SHl724076KdRNT3amt3XvhkSs6WukH6hAxiWIvygBVRYbAE2tUW+7UPoh
    1lfbqYRCWrhsrulksMda/A==
    """

 Scenario: Updating an up-to-date Nextcloud 12.0.4 beta on the stable channel
    Given There is a release with channel "stable"
    And The received version is "12.0.4.3"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is empty

 Scenario: Updating an outdated Nextcloud 12.0.0 beta on the production channel
    Given There is a release with channel "production"
    And The received version is "12.0.0.16"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.4.3" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-12.0.4.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
    pdpExf2i5sgwNzkP7fcOKWBcMoZzsSe8PwjZYYi0ZFlUqayQMnlVqmZ0Lc/hBWg/
    AAuiH+WViv/dHfxECMlcHTVBFABCn8qqHlfllfEoLVGI2V3GoOOYdij72N5pFm3Z
    8A8ccUEHso3QjdhiwcofSyJ5vxWdJZvruNIdW9M+UfW3Sm98HYoirRUEdvEBKJzZ
    OOkWI1NexeTzPBErQneNvI1iXl5LSV9Ert4HfIVkMA8Wfpvt8X6tH7G5pGpBrky3
    nc4UiS2SHl724076KdRNT3amt3XvhkSs6WukH6hAxiWIvygBVRYbAE2tUW+7UPoh
    1lfbqYRCWrhsrulksMda/A==
    """

 Scenario: Updating an up-to-date Nextcloud 12.0.4 beta on the production channel
    Given There is a release with channel "production"
    And The received version is "12.0.4.3"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is empty

  Scenario: Updating an outdated Nextcloud 9.0 daily
    Given There is a release with channel "daily"
    And The received version is "9.0.100"
    And the received build is "2012-10-19T18:44:30+00:00%208ee2009de36e01a9866404f07722892f84c16e3e"
    When The request is sent
    Then The response is non-empty
    And Update to version "100.0.0.0" is available
    And URL to download is "https://download.nextcloud.com/server/daily/latest-stable9.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/9/admin_manual/maintenance/manual_upgrade.html"
    And No signature is set

  Scenario: Updating an up-to-date Nextcloud 9.0 daily
    Given There is a release with channel "daily"
    And The received version is "9.0.100"
    And the received build is "2019-10-19T18:44:30+00:00"
    When The request is sent
    Then The response is empty

  Scenario: Updating an outdated Nextcloud 10.0 daily
    Given There is a release with channel "daily"
    And The received version is "9.1.100"
    And the received build is "2012-10-19T18:44:30+00:00%208ee2009de36e01a9866404f07722892f84c16e3e"
    When The request is sent
    Then The response is non-empty
    And Update to version "100.0.0.0" is available
    And URL to download is "https://download.nextcloud.com/server/daily/latest-stable10.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And No signature is set

  Scenario: Updating an up-to-date Nextcloud 10.0 daily
    Given There is a release with channel "daily"
    And The received version is "9.1.100"
    And the received build is "2019-10-19T18:44:30+00:00"
    When The request is sent
    Then The response is empty

  Scenario: Updating an outdated Nextcloud 11.0 daily
    Given There is a release with channel "daily"
    And The received version is "11.0.100"
    And the received build is "2012-10-19T18:44:30+00:00%208ee2009de36e01a9866404f07722892f84c16e3e"
    When The request is sent
    Then The response is non-empty
    And Update to version "100.0.0.0" is available
    And URL to download is "https://download.nextcloud.com/server/daily/latest-stable11.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And No signature is set

  Scenario: Updating an up-to-date Nextcloud 11.0 daily
    Given There is a release with channel "daily"
    And The received version is "11.0.100"
    And the received build is "2019-10-19T18:44:30+00:00"
    When The request is sent
    Then The response is empty

  Scenario: Updating an outdated Nextcloud 12.0 daily
    Given There is a release with channel "daily"
    And The received version is "12.0.100"
    And the received build is "2012-10-19T18:44:30+00:00%208ee2009de36e01a9866404f07722892f84c16e3e"
    When The request is sent
    Then The response is non-empty
    And Update to version "100.0.0.0" is available
    And URL to download is "https://download.nextcloud.com/server/daily/latest-stable12.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html"
    And No signature is set

  Scenario: Updating an up-to-date Nextcloud 12.0 daily
    Given There is a release with channel "daily"
    And The received version is "12.0.100"
    And the received build is "2019-10-19T18:44:30+00:00"
    When The request is sent
    Then The response is empty

  Scenario: Updating an outdated Nextcloud 13.0 daily
    Given There is a release with channel "daily"
    And The received version is "13.0.100"
    And the received build is "2012-10-19T18:44:30+00:00%208ee2009de36e01a9866404f07722892f84c16e3e"
    When The request is sent
    Then The response is non-empty
    And Update to version "100.0.0.0" is available
    And URL to download is "https://download.nextcloud.com/server/daily/latest-master.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html"
    And No signature is set

  Scenario: Updating an up-to-date Nextcloud 13.0 daily
    Given There is a release with channel "daily"
    And The received version is "13.0.100"
    And the received build is "2019-10-19T18:44:30+00:00"
    When The request is sent
    Then The response is empty
