-----------------------------------
--Create Tweets and Search tables--
-----------------------------------

CREATE TABLE
tweet
(
T_ID int NOT NULL PRIMARY KEY,
--Search_ID int FOREIGN KEY REFERENCES Search(S_ID),
UserName varchar(180),
TweetTime datetime,
Location varchar(180),
Tweet varchar(180)
)

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
Positive YesNo NOT NULL,
Negative YesNo NOT NULL,
Question YesNo NOT NULL,
IncludeRetweets YesNo NOT NULL
)

