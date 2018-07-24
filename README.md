# Tokens Database
Postgres database of API tokens

## Instructions

Start a database instance:
`
docker run --name tokens_db -e POSTGRES_PASSWORD=mysecretpassword -e POSTGRES_DB=tokens_db -e POSTGRES_USER=obp -d openbookpublishers/tokens_db
`
