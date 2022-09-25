### Docker:

#### Start docker-compose services:

```
docker-compose up --build pythonapp
```


#### Stop docker compose services:

```sh
docker-compose down 
```

#### Access to the API:

```
localhost:5000/items
```

#### Create new Items:

```json
{
    "title": "item 2",
    "content": "this is the item 2 content"
}
```

