CREATE DATABASE ClearNoteDB

USE ClearNoteDB

CREATE TABLE Category (
  [Id] int,
  [CategoryName] varchar,
  PRIMARY KEY ([Id])
);

CREATE TABLE [User] (
  [Id] int,
  [FirstName] varchar,
  [LastName] varchar,
  [DateOfBirth] date,
  [Email] varchar,
  [Password] varchar,
  [PhoneNumber] int,
  PRIMARY KEY ([Id])
);

CREATE TABLE Task (
  [Id] int,
  [UserId] int,
  [Title] varchar,
  [DueDate] date,
  [CompletionDate] date,
  [Status] bit,
  PRIMARY KEY ([Id]),
  CONSTRAINT [FK_Task.UserId]
    FOREIGN KEY ([UserId])
      REFERENCES [User]([Id])
);

CREATE TABLE NoteLayout (
  [Id] int,
  [BackgroundColour] varchar,
  [TextColour] varchar,
  PRIMARY KEY ([Id])
);

CREATE TABLE Note (
  [Id] int,
  [UserId] int,
  [CategoryId] int,
  [NoteLayoutId] int,
  [Title] varchar,
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