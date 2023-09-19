CREATE TABLE Liga (
  Liga_Nr int NOT NULL,
  Verband varchar(255) NOT NULL,
  Erstaustragung date NOT NULL,
  Meister int DEFAULT NULL,
  Rekordspieler varchar(255) DEFAULT NULL,
  Spiele_Rekordspieler int DEFAULT NULL,
  PRIMARY KEY (Liga_Nr)
)

CREATE TABLE Verein (
  V_ID int NOT NULL,
  Name varchar(255) NOT NULL,
  Liga int DEFAULT NULL,
  PRIMARY KEY (V_ID),
  Foreign Key (Liga) REFERENCES Liga(Liga_Nr)
)