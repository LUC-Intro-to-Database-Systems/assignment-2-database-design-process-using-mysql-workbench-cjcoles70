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

> - Online Ordering: The company as a website where customer can select products, specify and customizations and place orders.  Orders are not completed until payment has been made.  

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

ORDER_ITEM: Attributes - ItemID (Primary Key), Item_Description, Order_message,Item_Qty, CakeID (Foreign Key), Size_ShapeID (Foreign Key), Item_has_DecorationsID (Foreign Key)

DECORATIONS: Attributes - DecorationID (Primary Key), Dec_Type, Dec_Name , Dec_Shape, Dec_Color, Dec_Sell_Price

CUSTOMER: Attributes - CustomerID(Primary Key) , Customer_AddressID,Customer_Phone,Customer_Email

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






