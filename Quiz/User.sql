use codeup_test_db;

CREATE TABLE user
(
    `id`        INT         NOT NULL AUTO_INCREMENT,
    'user_id'   INT         NOT NULL,
    `firstName` VARCHAR(50) NULL DEFAULT NULL,
    `lastName`  VARCHAR(50) NULL DEFAULT NULL,
    `email`     VARCHAR(50) NULL
);


CREATE TABLE questions (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `create_questionsID` INT NOT NULL,
    `questions` VARCHAR (10000) NOT NULL
    );

CREATE TABLE privilages (
    `user_id` INT NOT NULL,
    `admin_id` INT NOT NULL
    );

CREATE TABLE create_answer(
    `id` INT NOT NULL,
    `create_answerID` INT NOT NULL,
    `answers` VARCHAR(10000)

);

CREATE TABLE quest_answ(
    `questions_ID` INT NOT NULL,
    `answere_ID` INT NOT NULL
    );


