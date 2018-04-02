CREATE TABLE Book (ID VARCHAR(255) NOT NULL, description VARCHAR(255), price FLOAT, publish_date VARCHAR(255), title VARCHAR(255), type VARCHAR(255), CATALOG_ID INTEGER, PRIMARY KEY (ID))
CREATE TABLE AUTHOR (ID VARCHAR(255) NOT NULL, name VARCHAR(255), PRIMARY KEY (ID))
CREATE TABLE Catalog (ID INTEGER NOT NULL, PRIMARY KEY (ID))
CREATE TABLE AUTHOR_BOOK (listBooks_ID VARCHAR(255) NOT NULL, listAuthor_ID VARCHAR(255) NOT NULL, PRIMARY KEY (listBooks_ID, listAuthor_ID))
ALTER TABLE Book ADD CONSTRAINT FK_Book_CATALOG_ID FOREIGN KEY (CATALOG_ID) REFERENCES Catalog (ID)
ALTER TABLE AUTHOR_BOOK ADD CONSTRAINT FK_AUTHOR_BOOK_listBooks_ID FOREIGN KEY (listBooks_ID) REFERENCES Book (ID)
ALTER TABLE AUTHOR_BOOK ADD CONSTRAINT FK_AUTHOR_BOOK_listAuthor_ID FOREIGN KEY (listAuthor_ID) REFERENCES AUTHOR (ID)
CREATE TABLE SEQUENCE (SEQ_NAME VARCHAR(50) NOT NULL, SEQ_COUNT DECIMAL(38), PRIMARY KEY (SEQ_NAME))
INSERT INTO SEQUENCE(SEQ_NAME, SEQ_COUNT) values ('SEQ_GEN', 0)