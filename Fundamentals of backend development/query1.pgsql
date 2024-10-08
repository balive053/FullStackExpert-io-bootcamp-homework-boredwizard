DROP table accounts;

CREATE TABLE IF NOT EXISTS accounts (
  user_id SERIAL PRIMARY KEY, 
  username VARCHAR (50) UNIQUE NOT NULL, 
  password VARCHAR (50) NOT NULL, 
  email VARCHAR (255) UNIQUE NOT NULL, 
  created_at TIMESTAMP NOT NULL default CURRENT_TIMESTAMP, 
  last_login TIMESTAMP not null default CURRENT_TIMESTAMP
);
