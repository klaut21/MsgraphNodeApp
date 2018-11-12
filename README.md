# MsgraphNodeApp
Docker alpine image with node.js and python to show basic Microsoft Graph authentification.

Except the dockerfile, this code refers to the tutorial here: https://github.com/microsoftgraph/msgraph-training-nodeexpressapp

## Authentification

You first have to register your application here: https://apps.dev.microsoft.com

Before building the application, you need to customize the g**raph-tutorial/.env** file accordingly. 

Add your Microsoft application ID and password.

```
OAUTH_APP_ID=ADD YOUR APPLICATION ID
OAUTH_APP_PASSWORD=ADD YOUR PASSWORD
OAUTH_REDIRECT_URI=http://localhost:3000/auth/callback
OAUTH_SCOPES='profile offline_access user.read calendars.read'
OAUTH_AUTHORITY=https://login.microsoftonline.com/common
OAUTH_ID_METADATA=/v2.0/.well-known/openid-configuration
OAUTH_AUTHORIZE_ENDPOINT=/oauth2/v2.0/authorize
OAUTH_TOKEN_ENDPOINT=/oauth2/v2.0/token
```


