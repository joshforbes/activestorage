# ActiveStorage Issue

This repo attempts to show an issue with active storage and mysql.

When attaching files in subsequent tests cases - mysql loses connection.

Simply run `rails test` to see the failure

Note that running a single test will always pass and running just two will sometimes pass.

- Rails 5.2
- mysql2 0.5.1
- MacOS High Sierra 10.13.3
- MySQL 5.7.22

This issue was initially observed in a larger app where I have a Video model that requires a file to be valid. While testing a set of scopes on the model I realized when run together they would fail. In that app the file is faked out using 'create_after_upload!' but this repo contains the minimum setup to reproduce.
