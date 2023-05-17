CREATE DATABASE ClearNoteDB

USE ClearNoteDB

CREATE TABLE Category (
  [Id] int,
  [CategoryName] varchar(50),
  PRIMARY KEY ([Id])
);

CREATE TABLE [User] (
  [Id] int,
  [FirstName] varchar(50),
  [LastName] varchar(50),
  [Email] varchar(100),
  [Password] varchar(50),
  [PhoneNumber] varchar(50),
  PRIMARY KEY ([Id])
);

DROP TABLE [User]
DROP TABLE Task
DROP TABLE Note
DROP TABLE NoteLayout

CREATE TABLE Task (
  [Id] int,
  [UserId] int,
  [Title] varchar(100),
  [DueDate] date,
  [Status] bit,
  PRIMARY KEY ([Id]),
  CONSTRAINT [FK_Task.UserId]
    FOREIGN KEY ([UserId])
      REFERENCES [User]([Id])
);

CREATE TABLE NoteLayout (
  [Id] int,
  [BackgroundColour] varchar(20),
  [TextColour] varchar(20),
  PRIMARY KEY ([Id])
);

CREATE TABLE Note (
  [Id] int,
  [UserId] int,
  [CategoryId] int,
  [NoteLayoutId] int,
  [Title] varchar(100),
  [DateOfCreation] date,
  [LastModified] date,
  PRIMARY KEY ([Id]),
  CONSTRAINT [FK_Note.UserId]
    FOREIGN KEY ([UserId])
      REFERENCES [User]([Id]),
  CONSTRAINT [FK_Note.NoteLayoutId]
    FOREIGN KEY ([NoteLayoutId])
      REFERENCES [NoteLayout]([Id]),
  CONSTRAINT [FK_Note.CategoryId]
    FOREIGN KEY ([CategoryId])
      REFERENCES [Category]([Id])
);