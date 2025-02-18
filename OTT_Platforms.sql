-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2025-02-18 19:33:56.859

-- tables
-- Table: Content
CREATE TABLE Content (
    Title varchar(128)  NOT NULL,
    year int  NOT NULL,
    Rating int  NULL,
    number_of_seasons int  NULL,
    Duration int  NOT NULL,
    ID int  NOT NULL,
    OTT_Platform_ID int  NOT NULL,
    Language_ID int  NOT NULL,
    Genre_ID int  NOT NULL,
    Director_ID int  NOT NULL,
    Content_Type_ID int  NOT NULL,
    CONSTRAINT Content_pk PRIMARY KEY (ID)
);

-- Table: Content_Type
CREATE TABLE Content_Type (
    content_type int  NOT NULL,
    ID int  NOT NULL,
    CONSTRAINT Content_Type_pk PRIMARY KEY (ID)
);

-- Table: Director
CREATE TABLE Director (
    Total_number_of_directions int  NOT NULL,
    Director_name varchar(32)  NOT NULL,
    ID int  NOT NULL,
    Age int  NOT NULL,
    CONSTRAINT Director_pk PRIMARY KEY (ID)
);

-- Table: Genre
CREATE TABLE Genre (
    Genre_type varchar(32)  NOT NULL,
    ID int  NOT NULL,
    CONSTRAINT Genre_pk PRIMARY KEY (ID)
);

-- Table: Language
CREATE TABLE Language (
    Language varchar(32)  NOT NULL,
    ID int  NOT NULL,
    CONSTRAINT Language_pk PRIMARY KEY (ID)
);

-- Table: OTT_Content_Type
CREATE TABLE OTT_Content_Type (
    OTT_Platform_ID int  NOT NULL,
    Content_Type_ID int  NOT NULL,
    OC_ID int  NOT NULL,
    Content_Available int  NOT NULL,
    CONSTRAINT OTT_Platform_Content_Type_pk PRIMARY KEY (OC_ID)
);

-- Table: OTT_Director
CREATE TABLE OTT_Director (
    OTT_Platform_ID int  NOT NULL,
    Director_ID int  NOT NULL,
    OD_ID int  NOT NULL,
    Content_Available int  NOT NULL,
    CONSTRAINT OTT_Platform_Director_pk PRIMARY KEY (OD_ID)
);

-- Table: OTT_Genre
CREATE TABLE OTT_Genre (
    OTT_Platform_ID int  NOT NULL,
    Genre_ID int  NOT NULL,
    OG_ID int  NOT NULL,
    Content_Available int  NOT NULL,
    CONSTRAINT OTT_Platform_Genre_pk PRIMARY KEY (OG_ID)
);

-- Table: OTT_Language
CREATE TABLE OTT_Language (
    OTT_Platform_ID int  NOT NULL,
    Language_ID int  NOT NULL,
    OL_ID int  NOT NULL,
    Content_Available int  NOT NULL,
    CONSTRAINT OTT_Platform_Language_pk PRIMARY KEY (OL_ID)
);

-- Table: OTT_Platform
CREATE TABLE OTT_Platform (
    OTT_Platform varchar(64)  NOT NULL,
    Total_number_of_contents int  NOT NULL,
    Number_of_users int  NOT NULL,
    ID int  NOT NULL,
    CONSTRAINT OTT_Platform_pk PRIMARY KEY (ID)
);

-- Table: Subscription_Plan
CREATE TABLE Subscription_Plan (
    Plan_name varchar(32)  NOT NULL,
    Price int  NOT NULL,
    Duration varchar(64)  NOT NULL,
    Max_Devices int  NOT NULL,
    Ad_supported int  NOT NULL,
    ID int  NOT NULL,
    OTT_Platform_ID int  NOT NULL,
    CONSTRAINT Subscription_Plan_pk PRIMARY KEY (ID)
);

-- foreign keys
-- Reference: Content_Content_Type (table: Content)
ALTER TABLE Content ADD CONSTRAINT Content_Content_Type FOREIGN KEY Content_Content_Type (Content_Type_ID)
    REFERENCES Content_Type (ID);

-- Reference: Content_Director (table: Content)
ALTER TABLE Content ADD CONSTRAINT Content_Director FOREIGN KEY Content_Director (Director_ID)
    REFERENCES Director (ID);

-- Reference: Content_Genre (table: Content)
ALTER TABLE Content ADD CONSTRAINT Content_Genre FOREIGN KEY Content_Genre (Genre_ID)
    REFERENCES Genre (ID);

-- Reference: Content_Language (table: Content)
ALTER TABLE Content ADD CONSTRAINT Content_Language FOREIGN KEY Content_Language (Language_ID)
    REFERENCES Language (ID);

-- Reference: Movie_Streaming_Platform (table: Content)
ALTER TABLE Content ADD CONSTRAINT Movie_Streaming_Platform FOREIGN KEY Movie_Streaming_Platform (OTT_Platform_ID)
    REFERENCES OTT_Platform (ID);

-- Reference: OTT_Platform_Content_Type_Content_Type (table: OTT_Content_Type)
ALTER TABLE OTT_Content_Type ADD CONSTRAINT OTT_Platform_Content_Type_Content_Type FOREIGN KEY OTT_Platform_Content_Type_Content_Type (Content_Type_ID)
    REFERENCES Content_Type (ID);

-- Reference: OTT_Platform_Content_Type_OTT_Platform (table: OTT_Content_Type)
ALTER TABLE OTT_Content_Type ADD CONSTRAINT OTT_Platform_Content_Type_OTT_Platform FOREIGN KEY OTT_Platform_Content_Type_OTT_Platform (OTT_Platform_ID)
    REFERENCES OTT_Platform (ID);

-- Reference: OTT_Platform_Director_Director (table: OTT_Director)
ALTER TABLE OTT_Director ADD CONSTRAINT OTT_Platform_Director_Director FOREIGN KEY OTT_Platform_Director_Director (Director_ID)
    REFERENCES Director (ID);

-- Reference: OTT_Platform_Director_OTT_Platform (table: OTT_Director)
ALTER TABLE OTT_Director ADD CONSTRAINT OTT_Platform_Director_OTT_Platform FOREIGN KEY OTT_Platform_Director_OTT_Platform (OTT_Platform_ID)
    REFERENCES OTT_Platform (ID);

-- Reference: OTT_Platform_Genre_Genre (table: OTT_Genre)
ALTER TABLE OTT_Genre ADD CONSTRAINT OTT_Platform_Genre_Genre FOREIGN KEY OTT_Platform_Genre_Genre (Genre_ID)
    REFERENCES Genre (ID);

-- Reference: OTT_Platform_Genre_OTT_Platform (table: OTT_Genre)
ALTER TABLE OTT_Genre ADD CONSTRAINT OTT_Platform_Genre_OTT_Platform FOREIGN KEY OTT_Platform_Genre_OTT_Platform (OTT_Platform_ID)
    REFERENCES OTT_Platform (ID);

-- Reference: OTT_Platform_Language_Language (table: OTT_Language)
ALTER TABLE OTT_Language ADD CONSTRAINT OTT_Platform_Language_Language FOREIGN KEY OTT_Platform_Language_Language (Language_ID)
    REFERENCES Language (ID);

-- Reference: OTT_Platform_Language_OTT_Platform (table: OTT_Language)
ALTER TABLE OTT_Language ADD CONSTRAINT OTT_Platform_Language_OTT_Platform FOREIGN KEY OTT_Platform_Language_OTT_Platform (OTT_Platform_ID)
    REFERENCES OTT_Platform (ID);

-- Reference: Subscription_Plan_Streaming_Platform (table: Subscription_Plan)
ALTER TABLE Subscription_Plan ADD CONSTRAINT Subscription_Plan_Streaming_Platform FOREIGN KEY Subscription_Plan_Streaming_Platform (OTT_Platform_ID)
    REFERENCES OTT_Platform (ID);

-- End of file.

