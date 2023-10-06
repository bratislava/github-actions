# github-actions
Reusable github actions repository

## Setup new namespace

- set up access rights in kubernetes for service account with correct role bindings. 
- get base64 token for service account `kubectl get secret <service-account-secret-name> -n <namespace> -o json` and find token in response
- decode base64 token and add it to repository secret
- check harbor.bratislava.sk for proper access rights to new namespace for pipeline account
- create secret `harbor-secret-{cluster}-{namespace}-bratiska-cli` on proper cluster for pulling images form harbor