# Mass Fire Trucks Proxy

This application is run in Heroku to proxy requests to the AWS S3 bucket that
hosts the website.

## Getting started

Start the proxy locally:

```bash
$ bin/start-server
```

The proxy will be available at http://localhost:8080.

## Deployments

This application auto deploys to production when new commits are available in
the master branch.
