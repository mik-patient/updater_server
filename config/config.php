<?php
/**
 * @license MIT <http://opensource.org/licenses/MIT>
 */

/**
 * Welcome to the almighty configuration file. In this file the update definitions for each version are released. Please
 * make sure to read below description of the config format carefully before proceeding.
 *
 * Nextcloud updates are delivered by a release channel, at the moment the following channels are available:
 *
 * - production
 * - stable
 * - beta
 * - daily
 *
 * With exception of daily (which is a daily build of master) all of them need to be configured manually. The config
 * array looks like the following:
 *
 * 'production' => [
 * 	'9.1' => [
 * 		// 95% of instances on 9.1 will get this response
 * 		'95' => [
 * 			'latest' => '10.0.0',
 * 			'web' => 'https://docs.nextcloud.org/server/10/admin_manual/maintenance/upgrade.html',
 * 			// downloadUrl is an optional entry, if not specified the URL is generated using https://download.nextcloud.com/server/releases/nextcloud-'.$newVersion['latest'].'.zip
 * 			'downloadUrl' => 'https://download.nextcloud.com/foo.zip',
 * 			// internalVersion
 * 			'internalVersion' => '9.1.0'
 * 			// autoupdater is an optional boolean value to define whether the update should be just announced or also delivered
 * 			// defaults to true
 * 			'autoupdater' => true,
 * 			// minPHPVersion is used to check the transferred PHP against this one here and allows to skip updates that are not compatible with this version of PHP
 * 			// if nothing is set the PHP version is not checked
 * 			'minPHPVersion' => '5.4',
 * 		],
 * 		// 5% of instances on 9.1 will get this response
 * 		'5' => [
 * 			'latest' => '11.0.0',
 * 			'web' => 'https://docs.nextcloud.org/server/10/admin_manual/maintenance/upgrade.html',
 *			// downloadUrl is an optional entry, if not specified the URL is generated using https://download.nextcloud.com/server/releases/nextcloud-'.$newVersion['latest'].'.zip
 * 			'downloadUrl' => 'https://download.nextcloud.com/foo.zip',
 *			// internalVersion
 * 			'internalVersion' => '11.0.0'
 * 			// autoupdater is an optional boolean value to define whether the update should be just announced or also delivered
 * 			// defaults to true
 * 			'autoupdater' => true,
 *			// minPHPVersion is used to check the transferred PHP against this one here and allows to skip updates that are not compatible with this version of PHP
 * 			// if nothing is set the PHP version is not checked
 * 			'minPHPVersion' => '5.4',
 * 		],
 * 	],
 * ]
 *
 * In this case if a Nextcloud with the major release of 8.2 sends an update request the 8.2.3 version is returned if the
 * current Nextcloud version is below 8.2.
 *
 * The search for releases in the config array is fuzzy and happens as following:
 * 	1. Major.Minor.Maintenance.Revision
 * 	2. Major.Minor.Maintenance
 * 	3. Major.Minor
 * 	4. Major
 *
 * Once a result has been found this one is taken. This allows it to define an update order in case some releases should
 * not be skipped. Let's take a look at an example:
 *
 * 'production' => [
 * 	'8.2.0' => [
 * 		'100' => [
 * 			'latest' => '8.2.1',
 * 			'web' => 'https://docs.nextcloud.org/server/8.2/admin_manual/maintenance/upgrade.html',
 * 		],
 * 	],
 * 	'8.2' => [
 * 		'100' => [
 * 			'latest' => '8.2.4',
 * 			'web' => 'https://docs.nextcloud.org/server/8.2/admin_manual/maintenance/upgrade.html',
 * 		],
 * 	],
 * 	'8.2.4' => [
 * 		'5' => [
 * 			'latest' => '9.0.0',
 * 			'web' => 'https://docs.nextcloud.org/server/8.2/admin_manual/maintenance/upgrade.html',
 * 		],
 * 		'95' => [
 * 			'latest' => '8.2.5',
 * 			'web' => 'https://docs.nextcloud.org/server/8.2/admin_manual/maintenance/upgrade.html',
 * 		],
 * 	],
 * ]
 *
 * This configuration array would have the following meaning:
 *
 * 1. 8.2.0 instances would be delivered 8.2.1
 * 2. All instances below 8.2.4 EXCEPT 8.2.0 would be delivered 8.2.4
 * 3. 8.2.4 instances get 9.0.0 delivered with a 5% chance and 8.2.5 with a 95% chance
 *
 * Oh. And be a nice person and also adjust the integration tests at /tests/integration/features/update.feature after doing
 * a change to the update logic. That way you can also ensure that your changes will do what you wanted them to do. The
 * tests are automatically executed on Travis or you can do it locally:
 *
 * 	- php -S localhost:8888 ./index.php &
 * 	- cd tests/integration/ && ../../vendor/bin/behat .
 */

return [
	'production' => [
		'12' => [
			'100' => [
				'latest' => '12.0.5',
				'internalVersion' => '12.0.5.3',
				'downloadUrl' => 'https://download.nextcloud.com/server/releases/nextcloud-12.0.5.zip',
				'web' => 'https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html',
				'minPHPVersion' => '5.6',
				'signature' => 'N4ncV+GOn/DPTXUdmj/BH94vCxa4DpbsUI3fDM5HmW4kgVLZ6KTWKwsXVjG0Ec9z
kkkhnJ+Hu4s21Y0w0Rs56tld3/9W+dsDw2CKsNCwBEuU3hwLj+7kckrNotOI7WDb
GhhaUf0PKu5NisMBUBM8t+PZrR3+CvTkLOptrE6SiOtUvfs1qKTc/N93e8NNgSyS
IAM/a0bj2SoROGohFjsWVEddHa39X2GD9T6lGULUR6TV5lGE9ODhsbsiITijUJVF
O7rE5QeqzfSChkZ0/uP8OtrgRmBLE8PffZrsPPbFrAWaYPF7X3nZ66dzXO4PE7zl
q6dAKP/WzDTOIWq0Tk2cFg==',
			],
		],
		'11' => [
			'100' => [
				'latest' => '12.0.5',
				'internalVersion' => '12.0.5.3',
				'downloadUrl' => 'https://download.nextcloud.com/server/releases/nextcloud-12.0.5.zip',
				'web' => 'https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html',
				'minPHPVersion' => '5.6',
				'signature' => 'N4ncV+GOn/DPTXUdmj/BH94vCxa4DpbsUI3fDM5HmW4kgVLZ6KTWKwsXVjG0Ec9z
kkkhnJ+Hu4s21Y0w0Rs56tld3/9W+dsDw2CKsNCwBEuU3hwLj+7kckrNotOI7WDb
GhhaUf0PKu5NisMBUBM8t+PZrR3+CvTkLOptrE6SiOtUvfs1qKTc/N93e8NNgSyS
IAM/a0bj2SoROGohFjsWVEddHa39X2GD9T6lGULUR6TV5lGE9ODhsbsiITijUJVF
O7rE5QeqzfSChkZ0/uP8OtrgRmBLE8PffZrsPPbFrAWaYPF7X3nZ66dzXO4PE7zl
q6dAKP/WzDTOIWq0Tk2cFg==',
			],
		],
		'9.1' => [
			'100' => [
				'latest' => '11.0.6',
				'internalVersion' => '11.0.6.1',
				'downloadUrl' => 'https://download.nextcloud.com/server/releases/nextcloud-11.0.6.zip',
				'web' => 'https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html',
				'minPHPVersion' => '5.6',
				'signature' => 'OaNjted6Hw/rpiE07lbWTCRgePzWO970h3/I2wRyXwctlYv5BKdFBF7Q2L6BG3ml
alihAAjVXU9kxK/YL40ZIK7MW2RwIXTOnNSzXbi4VqpX11UhshVvRqsR+xubg0jI
8aa1ahICZaezkfW32AdIOVmVxTfz7JOrxKEq1fg5/4n5z0J5jyBKkx2a2ZVLaMLO
Fs4ECJ2ntpMtD4+2X0V4TXNZN3LPpDHE5vwTBHcJr52R0+s96731FYRUGesGmsHb
xG0LjsK2vZOV4ZHT3tZPHGUV1Nrpfj5LIuCyPgn0w+XqTBm+AuF1W5MsgtDq0GOo
/l4U06AGoCaWHiYAKXbHGg==',
			],
			'101' => [
				'latest' => '10.0.6',
				'internalVersion' => '9.1.6.1',
				'downloadUrl' => 'https://download.nextcloud.com/server/prereleases/nextcloud-10.0.6.zip',
				'web' => 'https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html',
				'minPHPVersion' => '5.4',
			],
			'102' => [
				'latest' => '11.0.6',
				'internalVersion' => '11.0.6.1',
				'downloadUrl' => 'https://nextcloud.com/outdated-php-5-4-5-5/',
				'web' => 'https://nextcloud.com/outdated-php-5-4-5-5/',
				'minPHPVersion' => '5.4',
				'autoupdater' => '0',
			],
		],
		'9.0' => [
			'100' => [
				'latest' => '10.0.6',
				'internalVersion' => '9.1.6.1',
				'downloadUrl' => 'https://download.nextcloud.com/server/prereleases/nextcloud-10.0.6.zip',
				'web' => 'https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html',
				'minPHPVersion' => '5.4',
			],
		],
		'8.2' => [
			'100' => [
				'latest' => '9.0.58',
				'internalVersion' => '9.0.58',
				'downloadUrl' => 'https://download.nextcloud.com/server/releases/nextcloud-9.0.58.zip',
				'web' => 'https://docs.nextcloud.org/server/9/admin_manual/maintenance/manual_upgrade.html',
				'minPHPVersion' => '5.4',
			],
		],
	],
	'stable' => [
		'12' => [
			'100' => [
				'latest' => '12.0.5',
				'internalVersion' => '12.0.5.3',
				'downloadUrl' => 'https://download.nextcloud.com/server/releases/nextcloud-12.0.5.zip',
				'web' => 'https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html',
				'minPHPVersion' => '5.6',
				'signature' => 'N4ncV+GOn/DPTXUdmj/BH94vCxa4DpbsUI3fDM5HmW4kgVLZ6KTWKwsXVjG0Ec9z
kkkhnJ+Hu4s21Y0w0Rs56tld3/9W+dsDw2CKsNCwBEuU3hwLj+7kckrNotOI7WDb
GhhaUf0PKu5NisMBUBM8t+PZrR3+CvTkLOptrE6SiOtUvfs1qKTc/N93e8NNgSyS
IAM/a0bj2SoROGohFjsWVEddHa39X2GD9T6lGULUR6TV5lGE9ODhsbsiITijUJVF
O7rE5QeqzfSChkZ0/uP8OtrgRmBLE8PffZrsPPbFrAWaYPF7X3nZ66dzXO4PE7zl
q6dAKP/WzDTOIWq0Tk2cFg==',
			],
		],
		'11' => [
			'100' => [
				'latest' => '12.0.5',
				'internalVersion' => '12.0.5.3',
				'downloadUrl' => 'https://download.nextcloud.com/server/releases/nextcloud-12.0.5.zip',
				'web' => 'https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html',
				'minPHPVersion' => '5.6',
				'signature' => 'N4ncV+GOn/DPTXUdmj/BH94vCxa4DpbsUI3fDM5HmW4kgVLZ6KTWKwsXVjG0Ec9z
kkkhnJ+Hu4s21Y0w0Rs56tld3/9W+dsDw2CKsNCwBEuU3hwLj+7kckrNotOI7WDb
GhhaUf0PKu5NisMBUBM8t+PZrR3+CvTkLOptrE6SiOtUvfs1qKTc/N93e8NNgSyS
IAM/a0bj2SoROGohFjsWVEddHa39X2GD9T6lGULUR6TV5lGE9ODhsbsiITijUJVF
O7rE5QeqzfSChkZ0/uP8OtrgRmBLE8PffZrsPPbFrAWaYPF7X3nZ66dzXO4PE7zl
q6dAKP/WzDTOIWq0Tk2cFg==',
			],
		],
		'9.1' => [
			'100' => [
				'latest' => '11.0.7',
				'internalVersion' => '11.0.7.3',
				'downloadUrl' => 'https://download.nextcloud.com/server/releases/nextcloud-11.0.7.zip',
				'web' => 'https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html',
				'minPHPVersion' => '5.6',
				'signature' => 'seXLXR/sD23IWlku0PyyKg50GKjXJPgit96/C9Tj2oJepqGqxUZB790CcblUYNrB
at3G1R2XCFegzaNuXTE/O8fAQxeHXXzPxaewgOgR0UseM4JzqxrYMdM1t85PqRYH
rykDSzNdzgkwnKCT5hoLjbJgDSputtmFpt4AOntKL8/IIlLgMjptkF6qSzP6PchK
KKYwskUesNWrab2Xxcfzs+tOP4dMpk/CPMiA+9gItdDdJPqFoFAGw+GH/oyP7iBq
78kFVkRzB85QYZhYf+cm/YdXQOXgV/qtNPiEdZsD3ucTfqPFGiOB7ncgZEv2Z0iH
I/7HIwvOscdRPzvEVi32ag==',
			],
			'101' => [
				'latest' => '10.0.6',
				'internalVersion' => '9.1.6.1',
				'downloadUrl' => 'https://download.nextcloud.com/server/prereleases/nextcloud-10.0.6.zip',
				'web' => 'https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html',
				'minPHPVersion' => '5.4',
			],
			'102' => [
				'latest' => '11.0.6',
				'internalVersion' => '11.0.6.1',
				'downloadUrl' => 'https://nextcloud.com/outdated-php-5-4-5-5/',
				'web' => 'https://nextcloud.com/outdated-php-5-4-5-5/',
				'minPHPVersion' => '5.4',
				'autoupdater' => '0',
			],
		],
		'9.0' => [
			'100' => [
				'latest' => '10.0.6',
				'internalVersion' => '9.1.6.1',
				'downloadUrl' => 'https://download.nextcloud.com/server/prereleases/nextcloud-10.0.6.zip',
				'web' => 'https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html',
				'minPHPVersion' => '5.4',
			],
		],
		'8.2' => [
			'100' => [
				'latest' => '9.0.58',
				'internalVersion' => '9.0.58',
				'downloadUrl' => 'https://download.nextcloud.com/server/releases/nextcloud-9.0.58.zip',
				'web' => 'https://docs.nextcloud.org/server/9/admin_manual/maintenance/manual_upgrade.html',
				'minPHPVersion' => '5.4',
			],
		],
	],
	'beta' => [
		'13' => [
			'100' => [
				'latest' => '13.0.0 RC 4',
				'internalVersion' => '13.0.0.13',
				'downloadUrl' => 'https://download.nextcloud.com/server/prereleases/nextcloud-13.0.0RC4.zip',
				'web' => 'https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html',
				'minPHPVersion' => '5.6',
				'signature' => 'BHnnXhU4rAJFktfQ9qSHCSpRdD8OYpfGyGe1JiG7Xvv19sn3pDHm0yXTSIb6c7n6
mmDeXZkep2lnUrP37qInutYRZMAqSAwyJwoc2ecShd779Sl+l8j39vk+7gbwF/bw
ThELb1dOHd1qS+D1GLW90gBpZxeUm/bwASqCb0zSjC8nLaO520SiUgccrscT8zNv
F/9EkNExfQ4xhSA/jYI4wh0RpCvIw6YOcVeIjUnYUcSgvzeiZRPYrCrSk6CClbdJ
8CkdXFHupnv4NhuXtrifO/lTGcewIvYsgGsBHLbibLCZ+qweUQ5pHRfXqv5Jm4uX
Udl0s1UIvhl1noGXSd9Uag==',
			],
		],
		'12' => [
			'100' => [
				'latest' => '13.0.0 RC 4',
				'internalVersion' => '13.0.0.13',
				'downloadUrl' => 'https://download.nextcloud.com/server/prereleases/nextcloud-13.0.0RC4.zip',
				'web' => 'https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html',
				'minPHPVersion' => '5.6',
				'signature' => 'BHnnXhU4rAJFktfQ9qSHCSpRdD8OYpfGyGe1JiG7Xvv19sn3pDHm0yXTSIb6c7n6
mmDeXZkep2lnUrP37qInutYRZMAqSAwyJwoc2ecShd779Sl+l8j39vk+7gbwF/bw
ThELb1dOHd1qS+D1GLW90gBpZxeUm/bwASqCb0zSjC8nLaO520SiUgccrscT8zNv
F/9EkNExfQ4xhSA/jYI4wh0RpCvIw6YOcVeIjUnYUcSgvzeiZRPYrCrSk6CClbdJ
8CkdXFHupnv4NhuXtrifO/lTGcewIvYsgGsBHLbibLCZ+qweUQ5pHRfXqv5Jm4uX
Udl0s1UIvhl1noGXSd9Uag==',
			],
		],
		'11' => [
			'100' => [
				'latest' => '11.0.7',
				'internalVersion' => '11.0.7.3',
				'downloadUrl' => 'https://download.nextcloud.com/server/releases/nextcloud-11.0.7.zip',
				'web' => 'https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html',
				'minPHPVersion' => '5.6',
				'signature' => 'seXLXR/sD23IWlku0PyyKg50GKjXJPgit96/C9Tj2oJepqGqxUZB790CcblUYNrB
at3G1R2XCFegzaNuXTE/O8fAQxeHXXzPxaewgOgR0UseM4JzqxrYMdM1t85PqRYH
rykDSzNdzgkwnKCT5hoLjbJgDSputtmFpt4AOntKL8/IIlLgMjptkF6qSzP6PchK
KKYwskUesNWrab2Xxcfzs+tOP4dMpk/CPMiA+9gItdDdJPqFoFAGw+GH/oyP7iBq
78kFVkRzB85QYZhYf+cm/YdXQOXgV/qtNPiEdZsD3ucTfqPFGiOB7ncgZEv2Z0iH
I/7HIwvOscdRPzvEVi32ag==',
			],
		],
		'9.1' => [
			'100' => [
				'latest' => '11.0.7',
				'internalVersion' => '11.0.7.3',
				'downloadUrl' => 'https://download.nextcloud.com/server/releases/nextcloud-11.0.7.zip',
				'web' => 'https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html',
				'minPHPVersion' => '5.6',
				'signature' => 'seXLXR/sD23IWlku0PyyKg50GKjXJPgit96/C9Tj2oJepqGqxUZB790CcblUYNrB
at3G1R2XCFegzaNuXTE/O8fAQxeHXXzPxaewgOgR0UseM4JzqxrYMdM1t85PqRYH
rykDSzNdzgkwnKCT5hoLjbJgDSputtmFpt4AOntKL8/IIlLgMjptkF6qSzP6PchK
KKYwskUesNWrab2Xxcfzs+tOP4dMpk/CPMiA+9gItdDdJPqFoFAGw+GH/oyP7iBq
78kFVkRzB85QYZhYf+cm/YdXQOXgV/qtNPiEdZsD3ucTfqPFGiOB7ncgZEv2Z0iH
I/7HIwvOscdRPzvEVi32ag==',
			],
			'101' => [
				'latest' => '10.0.6',
				'internalVersion' => '9.1.6.1',
				'downloadUrl' => 'https://download.nextcloud.com/server/prereleases/nextcloud-10.0.6.zip',
				'web' => 'https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html',
				'minPHPVersion' => '5.4',
			],
			'102' => [
				'latest' => '11.0.6',
				'internalVersion' => '11.0.6.1',
				'downloadUrl' => 'https://nextcloud.com/outdated-php-5-4-5-5/',
				'web' => 'https://nextcloud.com/outdated-php-5-4-5-5/',
				'minPHPVersion' => '5.4',
				'autoupdater' => '0',
			],
		],
		'9.0' => [
			'100' => [
				'latest' => '10.0.6',
				'internalVersion' => '9.1.6.1',
				'downloadUrl' => 'https://download.nextcloud.com/server/prereleases/nextcloud-10.0.6.zip',
				'web' => 'https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html',
				'minPHPVersion' => '5.4',
			],
		],
		'8.2' => [
			'100' => [
				'latest' => '9.0.58',
				'internalVersion' => '9.0.58',
				'downloadUrl' => 'https://download.nextcloud.com/server/releases/nextcloud-9.0.58.zip',
				'web' => 'https://docs.nextcloud.org/server/9/admin_manual/maintenance/manual_upgrade.html',
				'minPHPVersion' => '5.4',
			],
		],
	],
	'daily' => [
		'14' => [
			'downloadUrl' => 'https://download.nextcloud.com/server/daily/latest-master.zip',
			'web' => 'https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html',
			'minPHPVersion' => '7.0',
		],
		'13' => [
			'downloadUrl' => 'https://download.nextcloud.com/server/daily/latest-stable13.zip',
			'web' => 'https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html',
			'minPHPVersion' => '5.6',
		],
		'12' => [
			'downloadUrl' => 'https://download.nextcloud.com/server/daily/latest-stable12.zip',
			'web' => 'https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html',
			'minPHPVersion' => '5.6',
		],
		'11' => [
			'downloadUrl' => 'https://download.nextcloud.com/server/daily/latest-stable11.zip',
			'web' => 'https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html',
			'minPHPVersion' => '5.6',
		],
		'9.1' => [
			'downloadUrl' => 'https://download.nextcloud.com/server/daily/latest-stable10.zip',
			'web' => 'https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html',
			'minPHPVersion' => '5.4',
		],
		'9.0' => [
			'downloadUrl' => 'https://download.nextcloud.com/server/daily/latest-stable9.zip',
			'web' => 'https://docs.nextcloud.org/server/9/admin_manual/maintenance/manual_upgrade.html',
			'minPHPVersion' => '5.4',
		],
		'8.2' => [
			'downloadUrl' => 'https://download.nextcloud.com/server/daily/latest-stable9.zip',
			'web' => 'https://docs.nextcloud.org/server/9/admin_manual/maintenance/manual_upgrade.html',
			'minPHPVersion' => '5.4',
		],
	],
];
