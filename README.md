# perl_is.cr
Web-API for [perl.is](https://perl.is/) a free API for random Alan Perlis epigrams.

## Example
```cr
require "./ip_stack"

perl_is = PerlIs.new
epigram = perl_is.get_random_epigram()
puts epigram
```
