# Supported tags and respective `Dockerfile` links

-	[`latest` (*Dockerfile*)](https://github.com/danielcosta/php-for-automation/blob/master/Dockerfile)
-	[`phalcon` (*Dockerfile*)](https://github.com/danielcosta/php-for-automation/blob/phalcon/Dockerfile)
-	[`5.6` (*Dockerfile*)](https://github.com/danielcosta/php-for-automation/blob/5.6/Dockerfile)

# Example usage

```bash
# run phpunit
$ docker run --rm -v $(pwd):/app -w /app daccbr/php-for-automation vendor/bin/phpunit --log-junit=/app/report/phpunit.xml --coverage-html=/app/report/html --coverage-clover=/app/report/coverage.xml --testdox-html=/app/report/testdox/index.html
6856663cdefdec325839a4b7e1de38e8 # <- this is your unique <cluster_id>

# run composer install
$ docker run --rm -v $(pwd):/app -w /app daccbr/php-for-automation composer install

# run a composer script
$ docker run --rm -v $(pwd):/app -w /app daccbr/php-for-automation composer run my-script

# run script from a vendor (example after composer require squizlabs/php_codesniffer:~2.0)
$ docker run --rm -v $(pwd):/app -w /app daccbr/php-for-automation vendor/bin/phpcs --standard=PSR2 --report-full=report/phpcs.txt --report-checkstyle=report/phpcs.xml /data/src -v
```
