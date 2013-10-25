# JSONify

### Convert a log file as output by
    [winston-loggly](https://github.com/stedolan/jq) into valid JSON.

Each line is a valid JSON object, but the file as a whole is not.

1. Wrap file in [].
2. Append , to the end of each line but the last.
3. Parse with [jq](https://github.com/stedolan/jq) (optional).
