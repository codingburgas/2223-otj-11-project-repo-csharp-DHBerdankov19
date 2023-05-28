CREATE DATABASE ClearNoteDB

USE ClearNoteDB

CREATE TABLE Category (
  [Id] int,
  [CategoryName] varchar(50),
  PRIMARY KEY ([Id])
);

CREATE TABLE [User] (
  [Id] int,
  [Email] varchar(100),
  [Password] varchar(50),
  [PhoneNumber] varchar(50) NULL,
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
  [Title] varchar(50),
  [Content] varchar(2000),
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

insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (1, 'rpowter0@narod.ru', 'k7DdmjO5', '4326418363');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (2, 'fgroven1@irs.gov', '3ZPySZIy', '6257464939');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (3, 'dwetherhead2@taobao.com', 'TLf7bk', '6587250514');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (4, 'jfairholme3@rediff.com', 'Kab8pJUaBlM', '6682807647');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (5, 'cscandrett4@smugmug.com', 'OI0ZLRePsY', '8986266443');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (6, 'bnoble5@networkadvertising.org', 'JSXG98itl', '9654684251');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (7, 'dpawel6@cdc.gov', 'ZGb5Uqh3qqY', '4557511336');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (8, 'cjanoschek7@pcworld.com', 'VhssQIr', '5011415403');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (9, 'ccatherick8@disqus.com', 'O96nNXGgqNa3', '7359492055');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (10, 'telphinstone9@harvard.edu', 'XxTScSRg', '6067828233');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (11, 'tleborgnea@wordpress.org', 'LzD85jmlQuE', '6517890050');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (12, 'etapscottb@yelp.com', 'tbmzv8AQyITX', '4333548017');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (13, 'mapplebeec@google.es', 'Te2PopAidQ', '2635450647');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (14, 'cadneyd@moonfruit.com', '4qxLsg4njf', '1283502470');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (15, 'ppagdene@t-online.de', 'Yc1JUnxiZyN', '5391549266');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (16, 'cdemalcharf@friendfeed.com', 'qm5hwc', '7556828986');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (17, 'gmaloneyg@jalbum.net', 'nCDATdF', '6768713840');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (18, 'tpaddickh@hibu.com', 'IwuGweCemW', '6641923843');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (19, 'bshanklei@irs.gov', 'XB6zWoYSJV', '6737360426');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (20, 'oglendinningj@nytimes.com', 'r4EsGX4', '4154044826');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (21, 'hswayslandk@cpanel.net', 'dOpWp4npa', '9343216403');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (22, 'bmettsl@webeden.co.uk', 'NMkcZYodby', '6858254869');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (23, 'dlochheadm@addtoany.com', '2dbEIU', '2118101091');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (24, 'mrosgenn@chicagotribune.com', 'tIFIO07TCP', '3253427722');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (25, 'npennettio@dedecms.com', 'qegyP85ZjCv', '8345576523');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (26, 'aclowsp@twitter.com', 'peD4qUGhtq', '1742454394');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (27, 'aquestierq@harvard.edu', 'ElfKfjW3', '4124439482');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (28, 'severittr@google.co.uk', '6Fxziq3cp', '8264359974');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (29, 'gegers@shutterfly.com', '784FjTzEd2v', '3737922927');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (30, 'ttathamt@unc.edu', 'lx9KmA', '3102089825');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (31, 'ihillyattu@vkontakte.ru', '5vJWaVdO3', '8854780057');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (32, 'rfrenzlv@latimes.com', 'ZOiUocvqv', '9983379925');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (33, 'vjoskowitzw@imgur.com', '0NLPV5jHmj', '9879668843');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (34, 'tosirinx@cnbc.com', 'H2CuOOeMgzx', '6116586436');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (35, 'mtruemany@toplist.cz', 'epJbky3YTUT', '4349923647');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (36, 'elightollerz@mozilla.org', 'E34yco', '9738015865');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (37, 'gprickett10@slashdot.org', 'Xm9EhGu', '2654549237');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (38, 'bhartil11@independent.co.uk', 'HREYnHJ0TAKh', '8732868703');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (39, 'msinnat12@hhs.gov', '16R4opEO23', '2834597162');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (40, 'jfinnigan13@histats.com', 'UvLY0n', '4808768628');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (41, 'cgiffon14@umich.edu', 'Irv16utiAi', '3091822318');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (42, 'mnash15@imageshack.us', 'Ga7s4y7Ve', '1648158496');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (43, 'rmitten16@dmoz.org', 'TAZOq6Zl', '7547522248');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (44, 'btrittam17@ovh.net', 'C6K9NMXQabP', '3941243992');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (45, 'rjaycock18@surveymonkey.com', 'Zd4XbkGSfrx0', '9951740915');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (46, 'osimioni19@google.nl', '2Aa7bVd', '6954075061');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (47, 'wpauley1a@vimeo.com', 'lpswgLF4x2', '1286128399');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (48, 'pide1b@bloomberg.com', '5oxaPQ', '7896937439');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (49, 'swigglesworth1c@dyndns.org', 'U2v4dB', '3638364059');
insert into [User] ([Id], [Email], [Password], [PhoneNumber]) values (50, 'DHBerdankov19@codingburgas.bg', 'password', '7408338298');

SELECT * FROM Note