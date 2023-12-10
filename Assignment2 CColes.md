# Cosmic Cakes  

Cosmic Cakes is a local bakery that specializes in the production and sale of cakes and other baked goods. 
The main purpose of the business is to create and provide a variety of delicious and aesthetically pleasing baked products.  
Cosmic Cakes engages in the art and business of baking and selling cakes, catering to a wide range of customer preferences and special occasions.  
The success of a cake shop often depends on its ability to balance creativity, quality, and customer satisfaction.  
Here are some key activities and aspects associated with what a Cosmic Cakes typically does:

**Baking Cakes:**

> - Recipe Development: Cosmic Cakes often develops and refine recipes for a variety of cakes, considering factors such as flavor, texture, and presentation.  To ensure consistency in the product, receipes are saved and often referred to.
> - Baking Process: Skilled Bakers are reasposnible for the combination of ingredients, preparation and baking of cakes. Final decoration of the cakes is completed by the cake decorators.


**Product Offering:**

> - Cake Varieties: Cosmic Cakes provides three categories of cakes. Classic, Seasonal and those for Special Occasions.  All cakes come in three sizes, 6" , 10" and 12" and two types basic of shapes, round and square.
> - Cakes for special occasions do have some other options. There is the options for tiered cake, starting with a 12" base-section, 9" mid-section and 6" top section. For childrens birthday's there are a variety of other theme cakes e.g cars, planes, Pony etc.
> - Icing & fondants: A variety of icing and fondants is also available for selction when chosing a ckae for special occasions.
> - Cupcakes: In addition to the larger cakes, they also produce a range of cupcakes in all three categories.  


**Customization:**

> - Custom Orders: Cosmic Cakes often takes custom orders for Special Occasions such as birthdays, weddings, and anniversaries. They may create unique designs and decorations based on customer preferences.  


**Decoration and Presentation:**  

> - Cake Decoration: Cake decorators work on the visual appeal of cakes, using various techniques like frosting, fondant, and edible decorations to create visually stunning and thematic designs.  


**Retail Sales:**

> - Storefront Operations: Cosmic Cakes has a physical storefront where customers can walk in and purchase cakes directly.  Classic cakes and Seasonal cakes are baked fresh every day and are available for purchase the same day in the store. Cakes for Special Ocassions are by order only.

**Online Presence:**  

> - Online Ordering: The company as a website where customer can select products, specify and customizations and place orders.  Order items are not made until payment has been done.  

# Definitions  

**Special Occasions:**  Cakes for Special Occasions are typically for birthdays, weddings, and anniversaries.   
**Classic** cakes are old time favorites such as ' Old-Fashioned Carrot Cake with Cream Cheese Frosting ', 'Spiced Devil's Food Cake' or 'Oklahoma Coconut Poke Cake'  
**Seasonal** cakes are more aligned to Thanksgiving, Christmas, 4th July etc. ' Apple Spice Cake with Brown Sugar Frosting' or ' Apple Gingerbread Skillet Cake'   

# Entities:

RECIPE: Attributes - RecipeID (Primary Key), Recipe_Name, Recipe_Ingrediants, Recipe_Instructions, Recipe_date  

STAFF: Attributes - StaffID (Primary Key), Staff_FirstName,Satff_LastName, Staff_Position, Staff_Phone,Staff_email   

CAKE_TYPE: Attributes - CakeID (Primary Key), CakeName,Cake_Category (Classic,Seasonal,Special Occasion),RecipeID (Foreign Key)   

SIZE_SHAPE: Attributes - SizeShapeID (Primary Key), Shape, Size   

CAKE_PRICE: Attributes - CakeID (Primary Key), SizeShapeID, Cake_Sell_Price   

ORDER: Attributes - OrderID (Primary Key), Order_Date, CustomerID (Foreign Key),payment_status (Paid or Unpaid) ,Order_has_itemId (Foreign Key)   

ORDER_ITEM: Attributes - ItemID (Primary Key), Item_Description, Order_message,Item_Qty, CakeID (Foreign Key), Size_ShapeID (Foreign Key), Item_has_DecorationsID (Foreign  
 Key)

DECORATIONS: Attributes - DecorationID (Primary Key), Dec_Type, Dec_Name , Dec_Shape, Dec_Color, Dec_Sell_Price   

CUSTOMER: Attributes - CustomerID(Primary Key) , Customer_Name, Customer_Phone,Customer_Email   

CUSTOMER_ADDRESS: Attributes - Cust_Address_ID(Primary Key) , Cust_Address1, Cust_Address2,Cust_City,Cust_ZIP, Cust_State, CustomerID (Foreign Key)   

STAFF_ADDRESS: Attributes - Staff_Address_ID (Primary Key), Staff_Address1, Staff_Address2,Staff_City,Staff_ZIP, Staff_State, StaffID (Foreign Key)   

# Associative Entity  
ORDER_ITEM_have_DECORATIONS: Attributes - ItemID (Foreign Key),DecorationID  (Foreign Key)    

STAFF_make_ORDER_ITEM: Attributes - ItemID (Foreign Key), StaffID (Foreign Key)    


# Relationships:
CAKE_TYPE has one RECIPE: RECIPE is used for one CAKE_TYPE. There is One-to-One relationship between CAKE_TYPE and RECIPE   

Many STAFF will make ORDER_ITEM: Many ORDER_ITEM  made by many STAFF. There is a Many-to-Many relationship between STAFF and ORDER_ITEM    

STAFF have one STAFF_ADDRESS: ADDRESS may have one or more STAFF. There is One-to-Many relationship between STAFF and STAFF_ADDRESS    

ORDER has many ORDER_ITEM's : ORDER_ITEM has one ORDER. There is One-to-Many relationship between ORDER and ORDER_ITEM's    

ORDER_ITEM have one CAKE_TYPE: CAKE_TYPE can have one or more ORDER_ITEM. There is a One-to-Many relationship between ORDER_ITEM and CAKE_TYPE    

ORDER_ITEM have one SIZE_SHAPE: SIZE_SHAPE can have one or more ORDER_ITEM. There is a One-to-Many relationship between ORDER_ITEM and SIZE_SHAPE    

ORDER_ITEM have one or more DECORATIONS: DECORATIONS have one or more ORDER_ITEM. There is a Many-to-Many relationship between ORDER_ITEM and DECORATIONS      

CUSTOMER have one CUSTOMER_ADDRESS: CUSTOMER_ADDRESS may have one or more CUSTOMER. There is One-to-Many relationship between CUSTOMER and CUSTOMER_ADDRESS   

Customer can have one or many ORDER : ORDER has one CUSTOMER. There is One-to-Many relationship between CUSTOMER and ORDER

![image](https://github.com/LUC-Intro-to-Database-Systems/assignment-2-database-design-process-using-mysql-workbench-cjcoles70/assets/149743690/65bcab9a-2038-4f80-af17-cc801ee84cdc)

```
-- MySQL Script generated by MySQL Workbench
-- Sun Dec 10 10:37:45 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema cosmiccakes
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cosmiccakes
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cosmiccakes` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `cosmiccakes` ;

-- -----------------------------------------------------
-- Table `cosmiccakes`.`recipe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cosmiccakes`.`recipe` (
  `RecipeID` INT NOT NULL AUTO_INCREMENT,
  `Recipe_Name` VARCHAR(255) NOT NULL,
  `Recipe_Ingredients` TEXT NULL DEFAULT NULL,
  `Recipe_Instructions` TEXT NULL DEFAULT NULL,
  `Recipe_date` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`RecipeID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cosmiccakes`.`size_shape`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cosmiccakes`.`size_shape` (
  `SizeShapeID` INT NOT NULL AUTO_INCREMENT,
  `Shape` VARCHAR(50) NOT NULL,
  `Size` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`SizeShapeID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cosmiccakes`.`cake_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cosmiccakes`.`cake_type` (
  `CakeID` INT NOT NULL AUTO_INCREMENT,
  `CakeName` VARCHAR(255) NOT NULL,
  `Cake_Category` VARCHAR(50) NULL DEFAULT NULL,
  `RecipeID` INT NOT NULL,
  `SizeShapeID` INT NOT NULL,
  `Cake_Price` DECIMAL(6,2) NOT NULL,
  PRIMARY KEY (`CakeID`),
  INDEX `RecipeID` (`RecipeID` ASC) VISIBLE,
  INDEX `SizeShapeID_idx` (`SizeShapeID` ASC) VISIBLE,
  CONSTRAINT `cake_type_ibfk_1`
    FOREIGN KEY (`RecipeID`)
    REFERENCES `cosmiccakes`.`recipe` (`RecipeID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `SizeShapeID`
    FOREIGN KEY (`SizeShapeID`)
    REFERENCES `cosmiccakes`.`size_shape` (`SizeShapeID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cosmiccakes`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cosmiccakes`.`customer` (
  `CustomerID` INT NOT NULL AUTO_INCREMENT,
  `Customer_Name` VARCHAR(50) NOT NULL,
  `Customer_Phone` VARCHAR(15) NOT NULL,
  `Customer_Email` VARCHAR(255) NOT NULL,
  `customer_address1` VARCHAR(255) NOT NULL,
  `customer_address2` VARCHAR(255) NULL,
  `customer_City` VARCHAR(50) NOT NULL,
  `customer_ZIP` INT(5) NOT NULL,
  `customer_State` VARCHAR(2) NOT NULL,
  PRIMARY KEY (`CustomerID`),
  UNIQUE INDEX `Customer_Name` (`Customer_Name` ASC, `Customer_Email` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cosmiccakes`.`decorations`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cosmiccakes`.`decorations` (
  `DecorationID` INT NOT NULL AUTO_INCREMENT,
  `Dec_Type` VARCHAR(50) NOT NULL,
  `Dec_Description` TEXT NOT NULL,
  `Dec_Sell_Price` DECIMAL(4,2) NOT NULL,
  PRIMARY KEY (`DecorationID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cosmiccakes`.`order_item`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cosmiccakes`.`order_item` (
  `ItemID` INT NOT NULL AUTO_INCREMENT,
  `Order_message` TEXT NULL DEFAULT NULL,
  `Item_Qty` INT NULL DEFAULT NULL,
  `cake_type_CakeID` INT NOT NULL,
  PRIMARY KEY (`ItemID`),
  INDEX `fk_order_item_cake_type1_idx` (`cake_type_CakeID` ASC) VISIBLE,
  CONSTRAINT `fk_order_item_cake_type1`
    FOREIGN KEY (`cake_type_CakeID`)
    REFERENCES `cosmiccakes`.`cake_type` (`CakeID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cosmiccakes`.`order_table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cosmiccakes`.`order_table` (
  `OrderID` INT NOT NULL AUTO_INCREMENT,
  `Order_Date` DATE NOT NULL,
  `Payment_Status` VARCHAR(20) NULL DEFAULT NULL,
  `customer_CustomerID` INT NOT NULL,
  PRIMARY KEY (`OrderID`),
  INDEX `fk_order_table_customer1_idx` (`customer_CustomerID` ASC) VISIBLE,
  CONSTRAINT `fk_order_table_customer1`
    FOREIGN KEY (`customer_CustomerID`)
    REFERENCES `cosmiccakes`.`customer` (`CustomerID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cosmiccakes`.`staff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cosmiccakes`.`staff` (
  `StaffID` INT NOT NULL AUTO_INCREMENT,
  `Staff_Name` VARCHAR(50) NOT NULL,
  `Staff_Phone` VARCHAR(15) NOT NULL,
  `Staff_email` VARCHAR(255) NOT NULL,
  `Staff_Address1` VARCHAR(255) NOT NULL,
  `Staff_Address2` VARCHAR(255) NULL,
  `Staff_City` VARCHAR(50) NOT NULL,
  `Staff_ZIP` INT(5) NOT NULL,
  `Staff_State` CHAR(2) NOT NULL,
  `Staff_Position` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`StaffID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cosmiccakes`.`decorations_has_order_item`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cosmiccakes`.`decorations_has_order_item` (
  `decorations_DecorationID` INT NOT NULL,
  `order_item_ItemID` INT NOT NULL,
  PRIMARY KEY (`decorations_DecorationID`, `order_item_ItemID`),
  INDEX `fk_decorations_has_order_item_order_item1_idx` (`order_item_ItemID` ASC) VISIBLE,
  INDEX `fk_decorations_has_order_item_decorations1_idx` (`decorations_DecorationID` ASC) VISIBLE,
  CONSTRAINT `fk_decorations_has_order_item_decorations1`
    FOREIGN KEY (`decorations_DecorationID`)
    REFERENCES `cosmiccakes`.`decorations` (`DecorationID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_decorations_has_order_item_order_item1`
    FOREIGN KEY (`order_item_ItemID`)
    REFERENCES `cosmiccakes`.`order_item` (`ItemID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cosmiccakes`.`staff_makes_order_item`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cosmiccakes`.`staff_makes_order_item` (
  `staff_StaffID` INT NOT NULL,
  `order_item_ItemID` INT NOT NULL,
  PRIMARY KEY (`staff_StaffID`, `order_item_ItemID`),
  INDEX `fk_staff_has_order_item_order_item1_idx` (`order_item_ItemID` ASC) VISIBLE,
  INDEX `fk_staff_has_order_item_staff1_idx` (`staff_StaffID` ASC) VISIBLE,
  CONSTRAINT `fk_staff_makes_order_item_staff1`
    FOREIGN KEY (`staff_StaffID`)
    REFERENCES `cosmiccakes`.`staff` (`StaffID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_staff_makes_order_item_order_item1`
    FOREIGN KEY (`order_item_ItemID`)
    REFERENCES `cosmiccakes`.`order_item` (`ItemID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cosmiccakes`.`order_item_has_order_table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cosmiccakes`.`order_item_has_order_table` (
  `order_item_ItemID` INT NOT NULL,
  `order_table_OrderID` INT NOT NULL,
  PRIMARY KEY (`order_item_ItemID`, `order_table_OrderID`),
  INDEX `fk_order_item_has_order_table_order_table1_idx` (`order_table_OrderID` ASC) VISIBLE,
  INDEX `fk_order_item_has_order_table_order_item1_idx` (`order_item_ItemID` ASC) VISIBLE,
  CONSTRAINT `fk_order_item_has_order_table_order_item1`
    FOREIGN KEY (`order_item_ItemID`)
    REFERENCES `cosmiccakes`.`order_item` (`ItemID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_item_has_order_table_order_table1`
    FOREIGN KEY (`order_table_OrderID`)
    REFERENCES `cosmiccakes`.`order_table` (`OrderID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
```






