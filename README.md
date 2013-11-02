# jq + tools

## Install

Install [jq](https://github.com/stedolan/jq) binary and tools for using it:

`$ bash -c "$(curl -fsSL https://raw.github.com/sandinmyjoints/loggly-jsonify/master/install.sh)"`

## Use

`$ ./jq [options] <jq filter> [file]`

`file` isn't valid json? Use loggly-jsonify.

## Tools

### loggly-jsonify

Convert a log file where each line is a valid JSON object, but the file as a
whole is not, into valid JSON by wrapping it in an array and comma-separating
the objects. Works with, for example, output from
[winston-loggly](https://github.com/indexzero/winston-loggly).

