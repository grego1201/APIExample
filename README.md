This is an API example build in Ruby on Rails. In this project, we'll have a database with people, communicateds and attachments. The objective of this example is to build up an API which has an endpoint that returns all communicateds that have an adult as receiver and total of attachments of filtered communicateds.

## Developed with
- Ruby 2.6.4
- Rails 6.1.4
- PostgreSQL 9.6.22
- Debian 10
- Bundler 1.17.
- cURL and Postman

## Install project
First of all you must have installed `Ruby 2.6.4` and `PostgreSQL 9.6.22`. When you have already installed it clone the repository with:
```
git clone https://github.com/grego1201/APIExample.git
```
Once you have cloned the repository the next step is to install gems. Run `bundle install` for that.
The next step is to setup database. You can create, migrate and populate it with that commands:

```
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed
```

To initialize the server you can do it as standard rails project with:
```
rails s
```

## Functionality
To use the API you've to start the server with `rails s`. Once the server is up you can use the endpoint using `/communicateds` path and `GET` method. Here is an example with curl:
```
curl GET 'localhost:3000/communicateds'
```

Although you can import postman collection with the file `public/APIExample.postman_collection.json`.

This endpoint should return all the communicateds that have an adult (person older than 18 years) as receptor and total of attachments of that filtered communicateds. Output example:

```json
{
    "communicateds": [
        {
            "id": 1,
            "subject": "Est doloribus reiciendis architecto.",
            "body": "Quidem non a. Nam aperiam sed. Qui quis iusto.",
            "last_communicated_id": null,
            "creator_id": 22,
            "receptor_id": 10,
            "created_at": "2021-07-17T13:44:05.254Z",
            "updated_at": "2021-07-17T13:44:05.254Z"
        }
    ],
    "total_attachments": 2
}
```
