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


<<<<<<< HEAD
insert into Category (Id, CategoryName) values (1, 'jmusla0');
insert into Category (Id, CategoryName) values (2, 'cmertin1');
insert into Category (Id, CategoryName) values (3, 'mchalcot2');
insert into Category (Id, CategoryName) values (4, 'zgeaney3');
insert into Category (Id, CategoryName) values (5, 'rdeluca4');
insert into Category (Id, CategoryName) values (6, 'ldayment5');
insert into Category (Id, CategoryName) values (7, 'ktheurer6');
insert into Category (Id, CategoryName) values (8, 'sfridd7');
insert into Category (Id, CategoryName) values (9, 'hbatham8');
insert into Category (Id, CategoryName) values (10, 'glivzey9');
insert into Category (Id, CategoryName) values (11, 'cwhopplesa');
insert into Category (Id, CategoryName) values (12, 'cmaccorleyb');
insert into Category (Id, CategoryName) values (13, 'cskewsc');
insert into Category (Id, CategoryName) values (14, 'shealeasd');
insert into Category (Id, CategoryName) values (15, 'toreagane');
insert into Category (Id, CategoryName) values (16, 'ntoffelf');
insert into Category (Id, CategoryName) values (17, 'rebdong');
insert into Category (Id, CategoryName) values (18, 'lbrambleh');
insert into Category (Id, CategoryName) values (19, 'dadamoi');
insert into Category (Id, CategoryName) values (20, 'lneesamj');
insert into Category (Id, CategoryName) values (21, 'dcanfieldk');
insert into Category (Id, CategoryName) values (22, 'sizaksonl');
insert into Category (Id, CategoryName) values (23, 'ehaggarthm');
insert into Category (Id, CategoryName) values (24, 'bgowmann');
insert into Category (Id, CategoryName) values (25, 'tlowero');
insert into Category (Id, CategoryName) values (26, 'mmenhenittp');
insert into Category (Id, CategoryName) values (27, 'jolivetiq');
insert into Category (Id, CategoryName) values (28, 'dgajewskir');
insert into Category (Id, CategoryName) values (29, 'rlettsoms');
insert into Category (Id, CategoryName) values (30, 'bkeyndt');
insert into Category (Id, CategoryName) values (31, 'hcumberledgeu');
insert into Category (Id, CategoryName) values (32, 'kgunthorpv');
insert into Category (Id, CategoryName) values (33, 'bclymaw');
insert into Category (Id, CategoryName) values (34, 'brosenaux');
insert into Category (Id, CategoryName) values (35, 'mchittocky');
insert into Category (Id, CategoryName) values (36, 'lbrazeltonz');
insert into Category (Id, CategoryName) values (37, 'lmeynell10');
insert into Category (Id, CategoryName) values (38, 'cdunley11');
insert into Category (Id, CategoryName) values (39, 'acarl12');
insert into Category (Id, CategoryName) values (40, 'vbirrel13');
insert into Category (Id, CategoryName) values (41, 'rrisby14');
insert into Category (Id, CategoryName) values (42, 'jbelloch15');
insert into Category (Id, CategoryName) values (43, 'kstiff16');
insert into Category (Id, CategoryName) values (44, 'tdominick17');
insert into Category (Id, CategoryName) values (45, 'sidwalevans18');
insert into Category (Id, CategoryName) values (46, 'bfawdry19');
insert into Category (Id, CategoryName) values (47, 'jocarney1a');
insert into Category (Id, CategoryName) values (48, 'chastings1b');
insert into Category (Id, CategoryName) values (49, 'twanderschek1c');
insert into Category (Id, CategoryName) values (50, 'cbinning1d');
insert into Category (Id, CategoryName) values (51, 'lronaghan1e');
insert into Category (Id, CategoryName) values (52, 'ntrace1f');
insert into Category (Id, CategoryName) values (53, 'efurbank1g');
insert into Category (Id, CategoryName) values (54, 'zrowthorn1h');
insert into Category (Id, CategoryName) values (55, 'ilaugherane1i');
insert into Category (Id, CategoryName) values (56, 'apaiton1j');
insert into Category (Id, CategoryName) values (57, 'clucian1k');
insert into Category (Id, CategoryName) values (58, 'nglayzer1l');
insert into Category (Id, CategoryName) values (59, 'agooms1m');
insert into Category (Id, CategoryName) values (60, 'bwitsey1n');
insert into Category (Id, CategoryName) values (61, 'cduiged1o');
insert into Category (Id, CategoryName) values (62, 'mskeermor1p');
insert into Category (Id, CategoryName) values (63, 'ljesper1q');
insert into Category (Id, CategoryName) values (64, 'emeenehan1r');
insert into Category (Id, CategoryName) values (65, 'iduligal1s');
insert into Category (Id, CategoryName) values (66, 'fscruby1t');
insert into Category (Id, CategoryName) values (67, 'frangall1u');
insert into Category (Id, CategoryName) values (68, 'vwiltshear1v');
insert into Category (Id, CategoryName) values (69, 'ssharply1w');
insert into Category (Id, CategoryName) values (70, 'mramsier1x');
insert into Category (Id, CategoryName) values (71, 'ckerwen1y');
insert into Category (Id, CategoryName) values (72, 'gbedinham1z');
insert into Category (Id, CategoryName) values (73, 'omacririe20');
insert into Category (Id, CategoryName) values (74, 'mmccome21');
insert into Category (Id, CategoryName) values (75, 'swinward22');
insert into Category (Id, CategoryName) values (76, 'rclimer23');
insert into Category (Id, CategoryName) values (77, 'hmonks24');
insert into Category (Id, CategoryName) values (78, 'dwainwright25');
insert into Category (Id, CategoryName) values (79, 'ktebald26');
insert into Category (Id, CategoryName) values (80, 'dswynfen27');
insert into Category (Id, CategoryName) values (81, 'mniles28');
insert into Category (Id, CategoryName) values (82, 'ecaustic29');
insert into Category (Id, CategoryName) values (83, 'bbealing2a');
insert into Category (Id, CategoryName) values (84, 'ckighly2b');
insert into Category (Id, CategoryName) values (85, 'cyurshev2c');
insert into Category (Id, CategoryName) values (86, 'dwinchurch2d');
insert into Category (Id, CategoryName) values (87, 'pkertess2e');
insert into Category (Id, CategoryName) values (88, 'twalley2f');
insert into Category (Id, CategoryName) values (89, 'mtarrant2g');
insert into Category (Id, CategoryName) values (90, 'ksubhan2h');
insert into Category (Id, CategoryName) values (91, 'moven2i');
insert into Category (Id, CategoryName) values (92, 'rrodder2j');
insert into Category (Id, CategoryName) values (93, 'fbyard2k');
insert into Category (Id, CategoryName) values (94, 'nwestfield2l');
insert into Category (Id, CategoryName) values (95, 'kfluin2m');
insert into Category (Id, CategoryName) values (96, 'mpinckard2n');
insert into Category (Id, CategoryName) values (97, 'snorthen2o');
insert into Category (Id, CategoryName) values (98, 'bfedorchenko2p');
insert into Category (Id, CategoryName) values (99, 'dearpe2q');
insert into Category (Id, CategoryName) values (100, 'abenterman2r');
=======
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
>>>>>>> fdea4cc51c4b944144bc9be59a06bd1b688a3b2d
