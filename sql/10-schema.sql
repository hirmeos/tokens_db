CREATE TABLE authority(
  authority varchar(255) PRIMARY KEY NOT NULL
);

CREATE TABLE account(
  account_id varchar(255) PRIMARY KEY NOT NULL,
  name varchar(255) NOT NULL,
  surname varchar(255) NOT NULL,
  email varchar(255) UNIQUE NOT NULL,
  password varchar(255) NOT NULL,
  authority varchar(255) NOT NULL REFERENCES authority(authority) ON UPDATE CASCADE
);

CREATE TABLE token (
  token varchar(255) PRIMARY KEY NOT NULL,
  timestamp timestamp with time zone NOT NULL,
  expiry timestamp with time zone NOT NULL
);

CREATE TABLE account_token (
  account_id varchar(255) PRIMARY KEY NOT NULL REFERENCES account(account_id) ON DELETE CASCADE ON UPDATE CASCADE,
  token varchar(255) UNIQUE NOT NULL REFERENCES token(token) ON DELETE CASCADE ON UPDATE RESTRICT
);
