-- Create a table students which contains in order 5 columns :

-- StudentId with type INTEGER / auto-increment and primary key, not nullable
-- FirstName with type VARCHAR(80) / not nullable
-- LastName with type VARCHAR(80) / not nullable
-- Birthday with type DATE / not nullable
-- City with type VARCHAR(50) / not nullable

CREATE TABLE students (
  StudentId INTEGER PRIMARY KEY NOT NULL,
  FirstName VARCHAR(80) NOT NULL,
  LastName VARCHAR(80) NOT NULL,
  Birthday DATE NOT NULL,
  City VARCHAR(50) NOT NULL
);