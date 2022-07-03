# Short Url
A simple ruby on rails server that provides API to have short URL. This is not a production grade URL shortener.  

## How to Run

TODO 


## API Spec
| METHOD | API             | Description                               |
| ------ | --------------- | ----------------------------------------- |
| `GET`  | `/v1/:shortUrl` | returns back original url given short url |
| `POST` | `/v1/:longUrl`  | takes longUrl and returns short URL       |

### Persistence
Data are stored in local SQL Lite database. API will talk to database for both `GET` and `POST` call. 
