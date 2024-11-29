# Dummy app: ersatz

`ersatz` is a dummy Rails app used to support RSpec testing of icon components as part of a client
Rails app.

# Operability
It is not intended for any actual use and is as stripped down as possible on the assumption its server will never actually be started (and will fail due to a lack of puma support).

Rails console though will still work for ersatz but is only intended for debugging purposes when
necessary.

# .gitignore
The top level .gitignore file for the overall gem governs what from this app is subject to
source code version control. See that file for details.
