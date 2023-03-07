CREATE DATABASE ClearNoteDB

USE ClearNoteDB

CREATE TABLE Category (
  [Id] int,
  [CategoryName] varchar(50),
  PRIMARY KEY ([Id])
);

DROP TABLE Category
DROP TABLE Note

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


insert into Category ([Id], [CategoryName]) values (1, 'Skivee');
insert into Category ([Id], [CategoryName]) values (2, 'Livetube');
insert into Category ([Id], [CategoryName]) values (3, 'Kwilith');
insert into Category ([Id], [CategoryName]) values (4, 'Geba');
insert into Category ([Id], [CategoryName]) values (5, 'Photojam');
insert into Category ([Id], [CategoryName]) values (6, 'Jamia');
insert into Category ([Id], [CategoryName]) values (7, 'Fliptune');
insert into Category ([Id], [CategoryName]) values (8, 'Realcube');
insert into Category ([Id], [CategoryName]) values (9, 'Yamia');
insert into Category ([Id], [CategoryName]) values (10, 'Innotype');
insert into Category ([Id], [CategoryName]) values (11, 'Pixope');
insert into Category ([Id], [CategoryName]) values (12, 'Reallinks');
insert into Category ([Id], [CategoryName]) values (13, 'Nlounge');
insert into Category ([Id], [CategoryName]) values (14, 'Mudo');
insert into Category ([Id], [CategoryName]) values (15, 'Jaxnation');
insert into Category ([Id], [CategoryName]) values (16, 'Skivee');
insert into Category ([Id], [CategoryName]) values (17, 'Izio');
insert into Category ([Id], [CategoryName]) values (18, 'Quimba');
insert into Category ([Id], [CategoryName]) values (19, 'Divape');
insert into Category ([Id], [CategoryName]) values (20, 'Dynava');
insert into Category ([Id], [CategoryName]) values (21, 'Yodel');
insert into Category ([Id], [CategoryName]) values (22, 'Bluejam');
insert into Category ([Id], [CategoryName]) values (23, 'Skimia');
insert into Category ([Id], [CategoryName]) values (24, 'Eayo');
insert into Category ([Id], [CategoryName]) values (25, 'Janyx');
insert into Category ([Id], [CategoryName]) values (26, 'Divanoodle');
insert into Category ([Id], [CategoryName]) values (27, 'Gigazoom');
insert into Category ([Id], [CategoryName]) values (28, 'Mynte');
insert into Category ([Id], [CategoryName]) values (29, 'Bubblebox');
insert into Category ([Id], [CategoryName]) values (30, 'Jaxbean');
insert into Category ([Id], [CategoryName]) values (31, 'Reallinks');
insert into Category ([Id], [CategoryName]) values (32, 'Wikido');
insert into Category ([Id], [CategoryName]) values (33, 'Flipopia');
insert into Category ([Id], [CategoryName]) values (34, 'Yotz');
insert into Category ([Id], [CategoryName]) values (35, 'Ntag');
insert into Category ([Id], [CategoryName]) values (36, 'Dynava');
insert into Category ([Id], [CategoryName]) values (37, 'Kazu');
insert into Category ([Id], [CategoryName]) values (38, 'Brightbean');
insert into Category ([Id], [CategoryName]) values (39, 'Thoughtblab');
insert into Category ([Id], [CategoryName]) values (40, 'Geba');
insert into Category ([Id], [CategoryName]) values (41, 'Skinix');
insert into Category ([Id], [CategoryName]) values (42, 'BlogXS');
insert into Category ([Id], [CategoryName]) values (43, 'Blogspan');
insert into Category ([Id], [CategoryName]) values (44, 'Twitterbeat');
insert into Category ([Id], [CategoryName]) values (45, 'Jabberbean');
insert into Category ([Id], [CategoryName]) values (46, 'Omba');
insert into Category ([Id], [CategoryName]) values (47, 'Topicblab');
insert into Category ([Id], [CategoryName]) values (48, 'Flashset');
insert into Category ([Id], [CategoryName]) values (49, 'Avaveo');
insert into Category ([Id], [CategoryName]) values (50, 'Photobean');

SELECT * FROM Category