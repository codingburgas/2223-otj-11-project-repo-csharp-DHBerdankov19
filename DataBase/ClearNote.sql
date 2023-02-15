CREATE DATABASE ClearNoteDB

USE ClearNoteDB

CREATE TABLE Category (
	ID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	CategoryName VARCHAR(20) NOT NULL
)

CREATE TABLE NoteLayout (
	ID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	NoteLayoutID INT FOREIGN KEY REFERENCES Note(ID) NOT NULL,
	BackgroundColour VARCHAR(20) NULL,
	TextColour VARCHAR(20) NULL
)



CREATE TABLE [User] (
	ID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	FirstName VARCHAR(30) NOT NULL,
	LastName VARCHAR(30) NOT NULL,
	Email VARCHAR(50) NOT NULL,
	[Password] VARCHAR(20) NOT NULL,
	PhoneNumber INT NULL
)

CREATE TABLE Task (
	ID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	UserID INT FOREIGN KEY REFERENCES [User](ID) NOT NULL,
	Title VARCHAR(30) NOT NULL,
	DueDate DATE NOT NULL,
	CompletionDate DATE NOT NULL,
	[Status] BIT NOT NULL
)


CREATE TABLE Note (
	ID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	UserID INT FOREIGN KEY REFERENCES [User](ID) NOT NULL,
	CategoryID INT FOREIGN KEY REFERENCES Category(ID) NOT NULL,
	
	Title VARCHAR(30) NOT NULL,
	DateOfCreation DATE NOT NULL,
	LastModified DATE NOT NULL
)







CREATE TABLE Category (
  Id int,
  CategoryName varchar,
  PRIMARY KEY (Id)
);

CREATE TABLE [User] (
  Id int,
  FirstName varchar,
  LastName varchar,
  DateOfBirth date,
  Email varchar,
  [Password] varchar,
  PhoneNumber int,
  PRIMARY KEY (Id)
);

CREATE TABLE Task (
  Id int,
  UserId int,
  Title varchar,
  DueDate date,
  CompletionDate date,
  [Status] bit,
  PRIMARY KEY (Id),
  FOREIGN KEY (UserId) REFERENCES [User](Id)
);

CREATE TABLE NoteLayout (
  Id int,
  NoteLayoutId int,
  BackgroundColour varchar,
  TextColour varchar,
  PRIMARY KEY (Id)
);

CREATE TABLE Note (
  Id int,
  UserId int,
  CategoryId int,
  NoteLayoutId int,
  Title varchar,
  DateOfCreation date,
  LastModified date,
  PRIMARY KEY (Id),
  FOREIGN KEY (UserId) REFERENCES [User](Id),
  FOREIGN KEY (Id) REFERENCES NoteLayout(NoteLayoutId),
  FOREIGN KEY (CategoryId) REFERENCES Category(Id)
);