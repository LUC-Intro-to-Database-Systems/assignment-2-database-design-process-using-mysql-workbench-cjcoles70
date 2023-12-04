# Cosmic Cakes  

Cosmic Cakes is a local bakery that specializes in the production and sale of cakes and other baked goods. 
The main purpose of the business is to create and provide a variety of delicious and aesthetically pleasing baked products.  
Cosmic Cakes engages in the art and business of baking and selling cakes, catering to a wide range of customer preferences and special occasions.  
The success of a cake shop often depends on its ability to balance creativity, quality, and customer satisfaction.  
Here are some key activities and aspects associated with what a Cosmic Cakes typically does:

**Baking Cakes:**

> - Recipe Development: Cosmic Cakes often develops and refine recipes for a variety of cakes, considering factors such as flavor, texture, and presentation.  To ensure consistency in the product, receipes are saved and often referred to.
> - Baking Process: Skilled Bakers are reasposnible for the combination of ingredients, preparation and baking of cakes. Each Skilled Baker has a signature classic cake, and as such, classic cakes carry the Skilled Bakers name. Final decoration of the cakes is completed by the cake decorators.


**Product Offering:**

> - Cake Varieties: Cosmic Cakes provides three categories of cakes. Classic, Seasonal and those for Special Occasions.  All cakes come in three sizes, 6" , 10" and 12" and two types basic of shapes, round and square.
> - Cakes for special occasions do have some other options. There is the options for tiered cake, starting with a 12" base-section, 9" mid-section and 6" top section. For childrens birthday's there are a variety of other theme cakes e.g cars, planes, Pony etc.
> - Icing & fondants: A variety of icing and fondants is also available for selction when chosing a ckae for special occasions.
> - Cupcakes: In addition to the larger cakes, they also produce a range of cupcakes in all three categories.  


**Customization:**

> - Custom Orders: Cosmic Cakes often takes custom orders for Special Occasions such as birthdays, weddings, and anniversaries. They may create unique designs and decorations based on customer preferences.  


**Decoration and Presentation:**  

> - Cake Decoration: Cake decorators work on the visual appeal of cakes, using various techniques like frosting, fondant, and edible decorations to create visually stunning and thematic designs.  
> - Packaging: Cake decorators are responsible for packaging to ensure that cakes are transported safely and maintain their freshness.


**Retail Sales:**

> - Storefront Operations: Cosmic Cakes has a physical storefront where customers can walk in and purchase cakes directly.  The Classic cakes and Seasonal cakes are 

**Online Presence:**  

> - Online Ordering: The company as a website where customer can select products, specify and customizations and place orders.  
> - Social Media Presence: Social media is used to showcase their creations, connect with customers, and promote special offers.  

# Definitions  

**Skilled Bakers:**  Skilled Bakers are bakers those that have served the company for a minimum of 3 years, have worked themselves up through the ranks and whose cakes are celebrated by their peers.   
**Special Occasions:**  Cakes for Special Occasions are typically for birthdays, weddings, and anniversaries.   
**Classic** cakes are old time favorites such as ' Old-Fashioned Carrot Cake with Cream Cheese Frosting ', 'Spiced Devil's Food Cake' or 'Oklahoma Coconut Poke Cake'  
**Seasonal** cakes are more aligned to Thanksgiving, Christmas, 4th July etc. ' Apple Spice Cake with Brown Sugar Frosting' or ' Apple Gingerbread Skillet Cake'   

# Entities:

Recipe: Attributes - RecipeID (Primary Key), Recipe_Name, Recipe_Ingrediants, Recipe_Instructions, Recipe_author, Recipe_date  

Baker: Attributes - BakerID (Primary Key), FirstName, LastName, SignatureCake  

Cake: Attributes - CakeID (Primary Key), CakeName, Cake_Size, Cake_Shape, Category (Classic, Seasonal, Special Occasion), Tiered (for special occasions), Theme (for children's birthdays), Icing/Fondant (for special occasions)  

Cupcake: Attributes - CupcakeID (Primary Key), CupcakeName, Category (Classic, Seasonal, Special Occasion), Icing/Fondant (for special occasions)  

Order: Attributes - OrderID (Primary Key), OrderDate, CustomerID (Foreign Key)  

Decoration: Attributes - DecorationID (Primary Key), Technique, Design, Edible  

Packaging: Attributes - PackagingID (Primary Key), PackagingType  

# Associative Entity  
Order_has_Cake: Attributes - CakeID (Foreign Key), OrderID (Foreign Key)
Order_has_Cupcake: Attributes - CupcakeID (Foreign Key), OrderID (Foreign Key)
Cake_has_Decoration: Attributes - CakeID (Foreign Key), DecorationID (Foreign Key)


# Relationships:

One-to-Many relationship between Recipe and Cake (A recipe can be used for multiple cakes, but each cake uses one recipe).  

One-to-One relationship between Baker and Cake (Each baker has a signature cake).  

One-to-Many relationship between Cake and Decoration (A cake can have multiple decorations, but each decoration is for one cake).  

Many-to-Many relationship between Order and Cake (An order can include multiple cakes, and a cake can be part of multiple orders). This relationship is represented using an *associative entity* .

One-to-Many relationship between Cake and Packaging (A cake can have one packaging type, but a packaging type can be used for multiple cakes).

One-to-Many relationship between Cake and Cupcake (A cake can have multiple cupcakes, but each cupcake is associated with one cake).

One-to-Many relationship between Cake and Baker (A cake is associated with one baker, but a baker may have multiple cakes).

One-to-Many relationship between Order and Packaging (An order can have one packaging type, but a packaging type can be used for multiple orders).

One-to-Many relationship between Customer and Order (A customer can place multiple orders, but each order is placed by one customer).

Many-to-Many relationship between Order and Decoration (An order can include multiple decorations, and a decoration can be part of multiple orders). This relationship is represented using an ***associative entity*** .

Many-to-Many relationship between Cake and IcingFondant (A cake can have multiple icing/fondant options, and an icing/fondant option can be used for multiple cakes). This relationship is represented using an ***associative entity*** .

Many-to-Many relationship between Order and Cupcake (An order can include multiple cupcakes, and a cupcake can be part of multiple orders). This relationship is represented using an ***associative entity*** .

One-to-Many relationship between Order and Customer (An order is placed by one customer, but a customer may place multiple orders).

One-to-Many relationship between Order and Baker (An order includes cakes baked by one baker, but a baker may have multiple orders).

One-to-Many relationship between Cake and OnlineOrder (A cake can be part of an online order, but an online order may include multiple cakes).

One-to-Many relationship between Order and SocialMedia (An order may be promoted on social media, but a social media post may include multiple orders).

