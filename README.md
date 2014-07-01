# Carrierwave Example

carrierwave 0.10.0 + rmagick + rails 4.1.2 is being a pain. Using this repository as a way to troubleshoot this issue.

# Solution

Adding `gem 'rmagick', require: 'RMagick'` seems to do the trick. [Source](https://github.com/carrierwaveuploader/carrierwave/issues/1330)

This fixes 'stack level too deep' issues. Unsure of "bin/rails:6: warning: already initialized constant APP_PATH" issue.
