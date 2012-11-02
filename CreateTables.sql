-----------------------------------
--Create Tweets and Search tables--
-----------------------------------

PRAGMA foreign_keys = ON;
CREATE TABLE
tweet
(
T_ID int NOT NULL PRIMARY KEY,
Search_ID int NOT NULL,
UserName varchar(180),
TweetTime datetime,
Location varchar(180),
Tweet varchar(180),
FOREIGN KEY (Search_ID) REFERENCES search(S_ID)
);

CREATE TABLE
search
(
S_ID int NOT NULL PRIMARY KEY,
SearchTime datetime,
Words varchar(180),
ExactPhrase varchar(180),
AnyWords varchar(180),
NotWords varchar(180),
Hastags varchar(180),
Language varchar(180),
FromAccount varchar(180),
ToAccount varchar(180),
MentionAccount varchar(180),
NearPlace varchar(180),
Positive int(1) NOT NULL,
Negative int(1) NOT NULL,
Question int(1) NOT NULL,
IncludeRetweets int(1) NOT NULL
);

