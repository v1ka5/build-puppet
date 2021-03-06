# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
class packages::mailx {
    case $::operatingsystem {
        CentOS: {
            package {
                "mailx":
                    ensure => latest;
            }
        }

        Darwin: {
            # Postfix ships with OS X
        }

        default: {
            fail("cannot install on $::operatingsystem")
        }
    }
}
