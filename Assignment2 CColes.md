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

STAFF: Attributes - StaffID (Primary Key), Staff_Name,Staff_Position, Staff_Phone,Staff_email,Staff_Address1, Staff_Address2, Staff_City, Staff_ZIP, Staff_State, 
Staff_Position   

CAKE_TYPE: Attributes - CakeID (Primary Key), CakeName,Cake_Category (Classic,Seasonal,Special Occasion),RecipeID (Foreign Key), SizeShapeID, Cake_Price   

SIZE_SHAPE: Attributes - SizeShapeID (Primary Key), Shape, Size   

ORDER_TABLE: Attributes - OrderID (Primary Key), Order_Date, payment_status (Paid or Unpaid) ,customer_CustomerID (Foreign Key)   

ORDER_ITEM: Attributes - ItemID (Primary Key), Order_message,Item_Qty, cake_type_CakeID (Foreign Key)

DECORATIONS: Attributes - DecorationID (Primary Key), Dec_Type, Dec_Description , Dec_Sell_Price   

CUSTOMER: Attributes - CustomerID(Primary Key) , Customer_Name, Customer_Phone,Customer_Email ,customer_address1, customer_address2, customer_City,
customer_ZIP, customer_State   

# Associative Entity  
ORDER_ITEM_have_DECORATIONS: Attributes - ItemID (Foreign Key),DecorationID  (Foreign Key)    

STAFF_make_ORDER_ITEM: Attributes - ItemID (Foreign Key), StaffID (Foreign Key)  

ORDER_ITEM_has_ORDER_TABLE: Attributes order_item_ItemID (Foreign Key), order_table_OrderID (Foreign Key)


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

# ER Diagram

![image](https://github.com/LUC-Intro-to-Database-Systems/assignment-2-database-design-process-using-mysql-workbench-cjcoles70/assets/149743690/5f548ec2-9b01-4dde-8c6c-c48469a882f9)   


# QUERIES. Please note that all queries have been saved as views in the database

```
CREATE VIEW Order_Items_View AS

--this is a query to list order_items, which staff member is preparing them and what is the status 

SELECT staff.Staff_Name, staff.Staff_Position,  order_item.Item_Qty, staff_makes_order_item.staff_makes_order_status, cake_type.CakeName, size_shape.Shape,size_shape.Size,ItemID

FROM staff
INNER JOIN staff_makes_order_item
ON staff.StaffID = staff_makes_order_item.staff_StaffID 

INNER JOIN order_item
ON staff_makes_order_item.order_item_ItemID = order_item.ItemID

INNER JOIN cake_type
ON order_item.cake_type_CakeID = cake_type.CakeID

INNER JOIN size_shape
ON cake_type.SizeShapeID = size_shape.SizeShapeID;
```

![image](https://github.com/LUC-Intro-to-Database-Systems/assignment-2-database-design-process-using-mysql-workbench-cjcoles70/assets/149743690/d021bc87-32a3-4bb3-b212-e729db3cce8c)


```
CREATE VIEW Order_Items_baking_View AS

-- This query looks to list those order item that are in the baking process only

SELECT staff.Staff_Name, staff.Staff_Position,  order_item.Item_Qty, staff_makes_order_item.staff_makes_order_status, cake_type.CakeName, size_shape.Shape,size_shape.Size

FROM staff
INNER JOIN staff_makes_order_item
ON staff.StaffID = staff_makes_order_item.staff_StaffID AND staff_makes_order_item.staff_makes_order_status = 'Baking'

INNER JOIN order_item
ON staff_makes_order_item.order_item_ItemID = order_item.ItemID

INNER JOIN cake_type
ON order_item.cake_type_CakeID = cake_type.CakeID

INNER JOIN size_shape
ON cake_type.SizeShapeID = size_shape.SizeShapeID;
```
![image](https://github.com/LUC-Intro-to-Database-Systems/assignment-2-database-design-process-using-mysql-workbench-cjcoles70/assets/149743690/664e3fb1-7fe5-49d6-a99f-0cd891b69bc2)

```
CREATE VIEW customer_with_orders_view AS

-- This query is listing customers with orders

SELECT customer.Customer_Name, customer.Customer_Phone, order_table.Order_Date, order_table.Payment_Status, order_table.OrderID

FROM customer
INNER JOIN order_table
ON customer.CustomerID = order_table.customer_CustomerID;
```
![image](https://github.com/LUC-Intro-to-Database-Systems/assignment-2-database-design-process-using-mysql-workbench-cjcoles70/assets/149743690/f466bc22-65af-421c-9068-eab9e1dfc3a2)

```
CREATE VIEW customer_orders_with_items_view AS

-- in this query we join all records from two existing views to show orders with items which are being made

SELECT *
FROM customer_with_orders_view
INNER JOIN order_item_has_order_table
ON customer_with_orders_view.OrderID = order_table_OrderID

INNER JOIN Order_Items_View
ON Order_Items_View.ItemID = order_item_has_order_table.order_item_ItemID;
```
![image](https://github.com/LUC-Intro-to-Database-Systems/assignment-2-database-design-process-using-mysql-workbench-cjcoles70/assets/149743690/80630248-c9be-4fc7-afd3-a862f565579f)



