-- Create a table students which contains in order 5 columns :

-- StudentId with type INTEGER / auto-increment and primary key, not nullable
-- FirstName with type VARCHAR(80) / not nullable
-- LastName with type VARCHAR(80) / not nullable
-- Birthday with type DATE / not nullable
-- City with type VARCHAR(50) / not nullable

CREATE TABLE students (
  StudentId INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  FirstName VARCHAR NOT NULL,
  LastName VARCHAR NOT NULL,
  Birthday DATE NOT NULL,
  City VARCHAR NOT NULL
);