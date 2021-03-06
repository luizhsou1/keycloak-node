# keycloak test

# Instalação Keycloak via Docker

~~~shell
dokcer-compose up
~~~

## Instalar dependências

~~~shell
npm install
~~~

#### Para obter um token por usuário e senha

~~~shell
./get-token.sh client_id secret username password
./get-token.sh myclient c700db83-ce88-4482-a01d-0b5d345c27ac myuser 123456 (Exemplo)
~~~

#### Para obter um token por Refresh Token

~~~shell
./get-token-for-refresh-token.sh client_id secret refresh_token
./get-token-for-refresh-token.sh myclient c700db83-ce88-4482-a01d-0b5d345c27ac eyJhbGciOiJIUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJkZWNmNzdjZi0xZDhhLTRhYjUtODQ5ZS0xMjhkMTZmYjczZDQifQ.eyJleHAiOjE2MTUwNjU4MDEsImlhdCI6MTYxNTA2NDAwMSwianRpIjoiYzhjNDJlZDctZjQ5Mi00YWFmLWJjOWItM2NlY2YxN2U3NmI5IiwiaXNzIjoiaHR0cDovL2xvY2FsaG9zdDo4MDgwL2F1dGgvcmVhbG1zL215cmVhbG0iLCJhdWQiOiJodHRwOi8vbG9jYWxob3N0OjgwODAvYXV0aC9yZWFsbXMvbXlyZWFsbSIsInN1YiI6Ijc2N2UwM2VlLWRjYjItNGZlYi05ZmU2LWU4NmEwNjkyOGNmZSIsInR5cCI6IlJlZnJlc2giLCJhenAiOiJteWNsaWVudCIsInNlc3Npb25fc3RhdGUiOiI1ZTAzNTQwNS1mNzAxLTQ3OTUtYjVjZS1iZGZjNjBmNDk1NzciLCJzY29wZSI6InByb2ZpbGUgZW1haWwifQ.8JbmiKXDbirIwljqvba6dvECTyAlSHZUn38tvYj_Sg0 (Exemplo)
~~~

#### Passos para testar:

1. Acesse o [admin](http://localhost:8080/auth/admin) e logue com username: admin | password: admin;
2. Crie ao menos um usuário para teste, na aba **Credentials** forneça uma senha e desabilite **temporary**, depois na aba **Role Mappings**, no combo **Client Roles**, selecione `myclient` e depois selecione `user` e/ou `admin` e clique em **Add selected**;
3. Acesse o postman e importe o arquivo `keycloak_test.postman_collection.json` que está na raiz do projeto;
4. Atualize o `client_secret` e coloque no **x-www-form-urlencoded** e demais infos que precisar;
5. Logue com o usuário criado;
6. E agora é só fazer o teste, tentando acessar as rotas, e ver se tem permissão ou não de acesso.