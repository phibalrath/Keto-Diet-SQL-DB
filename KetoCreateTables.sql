CREATE DATABASE `keto` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

CREATE TABLE `ingredient` (
  `recipeID` int(11) NOT NULL,
  `ingredientName` varchar(20) NOT NULL,
  `NumOfCarbsEach` int(11) DEFAULT NULL,
  `ingredientID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ingredientID`),
  UNIQUE KEY `ingredientName` (`ingredientName`),
  KEY `fk_recipes` (`recipeID`),
  CONSTRAINT `fk_recipes` FOREIGN KEY (`recipeID`) REFERENCES `recipes` (`RecipeID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `recipes` (
    `RecipeID` INT(11) NOT NULL AUTO_INCREMENT,
    `RecipeName` VARCHAR(30) NOT NULL,
    `NumberOfCarbs` INT(11) DEFAULT NULL,
    PRIMARY KEY (`RecipeID`),
    UNIQUE KEY `RecipeID` (`RecipeID`),
    UNIQUE KEY `RecipeName` (`RecipeName`)
)  ENGINE=INNODB AUTO_INCREMENT=11 DEFAULT CHARSET=UTF8MB4 COLLATE = UTF8MB4_0900_AI_CI;






