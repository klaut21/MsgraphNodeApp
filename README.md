# MsgraphNodeApp
Docker alpine image with node.js to show basic Microsoft Graph authentification.

Except the dockerfile, this code refers to the tutorial here: https://github.com/microsoftgraph/msgraph-training-nodeexpressapp

## Authentification

You first have to register your application here: https://apps.dev.microsoft.com

Before building the application, you need to add the **graph-tutorial/.env** file.   

Create a new file **.env** in directory **graph-tutorial**, copy the code below and add your Microsoft application ID and password.

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


