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

![image](https://github.com/LUC-Intro-to-Database-Systems/assignment-2-database-design-process-using-mysql-workbench-cjcoles70/assets/149743690/cc93d840-7b21-437c-bf77-200a18202017)

``` 
-- create the database CosmicCakes
CREATE database CosmicCakes;

-- Use CosmicCakes database to add tables to 
USE cosmiccakes;

-- Create RECIPE table
CREATE TABLE RECIPE (
    RecipeID INT  AUTO_INCREMENT PRIMARY KEY,
    Recipe_Name VARCHAR(255) NOT NULL,
    Recipe_Ingredients TEXT,
    Recipe_Instructions TEXT,
    Recipe_date DATE
);

-- Create STAFF table
CREATE TABLE STAFF (
    StaffID INT  AUTO_INCREMENT PRIMARY KEY,
    Staff_FirstName VARCHAR(50) NOT NULL,
    Staff_LastName VARCHAR(50) NOT NULL,
    Staff_Position VARCHAR(50) CHECK (Staff_Position IN ('Baker', 'Decorator','Shop Assistant')),
    Staff_Phone VARCHAR(15) NOT NULL,
    Staff_email VARCHAR(255) NOT NULL
);

-- Create CAKE_TYPE table
CREATE TABLE CAKE_TYPE (
    CakeID INT  AUTO_INCREMENT PRIMARY KEY ,
    CakeName VARCHAR(255) NOT NULL,
    Cake_Category VARCHAR(50) CHECK (Cake_Category IN('Traditional', 'Seasonal', 'Special Occasion')),
    RecipeID INT,
    FOREIGN KEY (RecipeID) REFERENCES RECIPE(RecipeID)
);

-- Create SIZE_SHAPE table
CREATE TABLE SIZE_SHAPE (
    SizeShapeID INT  AUTO_INCREMENT PRIMARY KEY,
    Shape VARCHAR(50) NOT NULL CHECK (Shape IN('Round','Square')) ,
    Size VARCHAR(50) NOT NULL CHECK (Size IN('6"','8"','12"'))
);

-- Create CAKE_PRICE table
CREATE TABLE CAKE_PRICE (
    CakeID INT AUTO_INCREMENT PRIMARY KEY,
    SizeShapeID INT,
    Cake_Sell_Price DECIMAL(10, 2),
    FOREIGN KEY (SizeShapeID) REFERENCES SIZE_SHAPE(SizeShapeID) ON DELETE CASCADE ON UPDATE RESTRICT,
    FOREIGN KEY (CakeID) REFERENCES CAKE_TYPE(CakeID) ON DELETE CASCADE ON UPDATE RESTRICT,
    UNIQUE ( CakeID,SizeShapeID)
);

-- Create ORDER table
CREATE TABLE ORDER_TABLE (
    OrderID INT  AUTO_INCREMENT PRIMARY KEY,
    Order_Date DATE NOT NULL,
    CustomerID INT,
    Payment_Status VARCHAR(20) CHECK(Payment_Status IN('Paid','Unpaid')) DEFAULT 'Unpaid',
    FOREIGN KEY (CustomerID) REFERENCES CUSTOMER(CustomerID) ON DELETE RESTRICT
   
);

-- Create ORDER_ITEM table
CREATE TABLE ORDER_ITEM (
    ItemID INT  AUTO_INCREMENT PRIMARY KEY,
    Item_Description TEXT NOT NULL,
    Order_message TEXT,
    Item_Qty INT,
    CakeID INT NOT NULL,
    SizeShapeID INT NOT NULL,
    Item_OrderID INT NOT NULL,
    FOREIGN KEY (CakeID) REFERENCES CAKE_TYPE(CakeID) ON DELETE RESTRICT,
    FOREIGN KEY (SizeShapeID) REFERENCES SIZE_SHAPE(SizeShapeID) ON DELETE RESTRICT,
    FOREIGN KEY (Item_OrderID) REFERENCES ORDER_TABLE(OrderID) ON DELETE CASCADE,
    UNIQUE(CakeID,SizeShapeID,Item_OrderID)
);

-- Create DECORATIONS table
CREATE TABLE DECORATIONS (
    DecorationID INT  AUTO_INCREMENT PRIMARY KEY ,
    Dec_Type VARCHAR(50) NOT NULL,
    Dec_Name VARCHAR(50) NOT NULL,
    Dec_Shape VARCHAR(50),
    Dec_Color VARCHAR(50),
    Dec_Sell_Price DECIMAL(10, 2) NOT NULL
);

-- Create CUSTOMER table
CREATE TABLE CUSTOMER (
    CustomerID INT  AUTO_INCREMENT PRIMARY KEY ,
    Customer_Name VARCHAR(50) NOT NULL,
    Customer_Phone VARCHAR(15),
    Customer_Email VARCHAR(255),
    UNIQUE (Customer_Name, Customer_Email)
);

-- Create CUSTOMER_ADDRESS table
CREATE TABLE CUSTOMER_ADDRESS (
    Cust_Address_ID INT  AUTO_INCREMENT PRIMARY KEY ,
    Cust_Address1 VARCHAR(255) NOT NULL,
    Cust_Address2 VARCHAR(255),
    Cust_City VARCHAR(50) NOT NULL,
    Cust_ZIP VARCHAR(5) NOT NULL,
    Cust_State VARCHAR(2) NOT NULL,
    CustomerID INT UNIQUE,
    FOREIGN KEY (CustomerID) REFERENCES CUSTOMER(CustomerID) ON DELETE CASCADE
);

-- Create STAFF_ADDRESS table
CREATE TABLE STAFF_ADDRESS (
    Staff_Address_ID INT AUTO_INCREMENT PRIMARY KEY  ,
    Staff_Address1 VARCHAR(255) NOT NULL,
    Staff_Address2 VARCHAR(255),
    Staff_City VARCHAR(50) NOT NULL,
    Staff_ZIP VARCHAR(5),
    Staff_State VARCHAR(2),
    StaffID INT UNIQUE,
    FOREIGN KEY (StaffID) REFERENCES STAFF(StaffID) ON DELETE CASCADE
);

-- Create ORDER_ITEM_have_DECORATIONS table (Associative Entity)
CREATE TABLE ORDER_ITEM_have_DECORATIONS (
    ItemID INT,
    DecorationID INT,
    PRIMARY KEY (ItemID, DecorationID),
    FOREIGN KEY (ItemID) REFERENCES ORDER_ITEM(ItemID) ON DELETE CASCADE,
    FOREIGN KEY (DecorationID) REFERENCES DECORATIONS(DecorationID) ON DELETE CASCADE
);

-- Create STAFF_make_ORDER_ITEM table (Associative Entity)
CREATE TABLE STAFF_make_ORDER_ITEM (
    ItemID INT,
    StaffID INT,
    PRIMARY KEY (ItemID, StaffID),
    FOREIGN KEY (ItemID) REFERENCES ORDER_ITEM(ItemID)ON DELETE CASCADE ,
    FOREIGN KEY (StaffID) REFERENCES STAFF(StaffID) ON DELETE CASCADE
);
```





