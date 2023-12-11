SELECT * FROM cosmiccakes.customer;
INSERT INTO cosmiccakes.customer (Customer_Name,Customer_Phone,Customer_Email,customer_address1,customer_address2,customer_City,customer_ZIP,customer_State) VALUES ('Emily Thompson','555-1234','emily.thompson@email.com','123 Oak Street','','Cityville',98765,'CA'),
('James Rodriguez','555-5678','james.rodriguez@email.com','456 Maple Avenue','','Townsville',54321,'NY'),
('Olivia Wilson','555-9876','olivia.wilson@email.com','789 Pine Road','','Villagetown',12345,'TX'),
('Alex Johnson','555-4321','alex.johnson@email.com','101 Elm Lane','','Hamletville',67890,'FL'),
('Sophia Martinez','555-8765','sophia.martinez@email.com','202 Cedar Court','','Boroughburg',34567,'AZ'),
('Mia Clark','555-6789','mia.clark@email.com','404 Fir Avenue','','Citytown',87654,'WA'),
('Liam Brown','555-3456','liam.brown@email.com','505 Spruce Road','','Villagesville',23456,'OR'),
('Ava White','555-7890','ava.white@email.com','606 Pine Lane','','Hamletburg',45678,'NV'),
('Noah Taylor','555-6543','noah.taylor@email.com','707 Oak Court','','Townville',78901,'UT');

SELECT * FROM cosmiccakes.staff;
INSERT INTO cosmiccakes.staff (Staff_Name,Staff_Phone,Staff_email,Staff_Address1,Staff_Address2,Staff_City,Staff_ZIP,Staff_State,Staff_Position) VALUES ('Sophia Turner','555-1111','sophia.turner@email.com','321 Pine Street','','Cityburg',54321,'TX','Baker'),
('Jackson Miller','555-2222','jackson.miller@email.com','456 Elm Avenue','','Townsville',67890,'FL','Baker'),
('Olivia Harris','555-3333','olivia.harris@email.com','789 Maple Road','','Villagetown',87654,'CA','Baker'),
('Ethan Anderson','555-4444','ethan.anderson@email.com','987 Cedar Lane','','Boroughville',23456,'NY','Baker'),
('Ava Cooper','555-5555','ava.cooper@email.com','654 Birch Court','','Villageburg',34567,'CO','Baker'),
('Benjamin Taylor','555-6666','benjamin.taylor@email.com','321 Oak Street','','Hamlettown',78901,'WA','Decorator'),
('Mia Davis','555-7777','mia.davis@email.com','654 Fir Avenue','','Cityville',12345,'NV','Decorator'),
('Liam White','555-8888','liam.white@email.com','987 Pine Road','','Villagetown',67890,'OR','Decorator'),
('Emma Robinson','555-9999','emma.robinson@email.com','234 Spruce Lane','','Hamletville',45678,'AZ','Decorator'),
('Noah Smith','555-0000','noah.smith@email.com','876 Cedar Road','','Townsville',23456,'UT','Decorator');

SELECT * FROM cosmiccakes.recipe;

INSERT INTO cosmiccakes.recipe(Recipe_Name,Recipe_Ingredients,Recipe_Instructions,Recipe_date) VALUES ('Chocolate Fudge Cake','- 2 cups all-purpose flour - 1¾ cups granulated sugar - ¾ cup cocoa powder - 2 tsp baking soda - 1 tsp baking powder - 1 tsp salt - 2 eggs - 1 cup milk - ½ cup vegetable oil - 2 tsp vanilla extract - 1 cup boiling water','1. Preheat oven to 350°F (175°C). 2. Grease and flour two 9-inch round cake pans. 3. Mix dry ingredients, add wet ingredients, and beat. 4. Stir in boiling water. 5. Bake for 30-35 minutes. Let cool before frosting.','2023-12-05'),
('Vanilla Bean Pound Cake','- 2½ cups all-purpose flour - 2½ tsp baking powder - 1 cup unsalted butter, softened - 2 cups granulated sugar - 4 large eggs - 1 vanilla bean (or 2 tsp vanilla extract) - 1 cup whole milk','1. Preheat oven to 325°F (163°C). 2. Grease and flour a 10-inch tube or bundt pan. 3. Whisk dry ingredients. 4. Cream butter and sugar, add eggs and vanilla. 5. Alternate adding dry ingredients and milk. 6. Bake for 60-70 minutes.','2023-12-05'),
('Lemon Blueberry Cake','- 2 cups all-purpose flour - 2 tsp baking powder - ½ tsp salt - 1 cup unsalted butter, softened - 1½ cups granulated sugar - 4 large eggs - 1 tsp vanilla extract - ½ cup milk - Zest of 2 lemons - 1½ cups fresh blueberries','1. Preheat oven to 350°F (175°C). 2. Grease and flour two 8-inch round cake pans. 3. Whisk dry ingredients. 4. Cream butter and sugar, add eggs, vanilla, and milk. 5. Fold in blueberries. 6. Bake for 25-30 minutes.','2023-12-05'),
('Carrot Cake with Cream Cheese Frosting','- 2 cups all-purpose flour - 1¾ cups granulated sugar - 1 tsp baking powder - ½ tsp baking soda - 1 tsp cinnamon - ½ tsp nutmeg - ½ tsp salt - 1 cup vegetable oil - 4 large eggs - 2 cups grated carrots - ½ cup crushed pineapple, drained - 1 cup chopped nuts (optional) - Cream cheese frosting','1. Preheat oven to 350°F (175°C). 2. Grease and flour two 9-inch round cake pans. 3. Sift dry ingredients. 4. Mix in wet ingredients. 5. Fold in carrots, pineapple, and nuts. 6. Bake for 35-40 minutes. Frost when cooled.','2023-12-05'),
('Red Velvet Cake','- 2½ cups all-purpose flour - 1½ cups granulated sugar - 1 tsp baking powder - 1 tsp baking soda - 1 tsp cocoa powder - 1½ cups vegetable oil - 1 cup buttermilk - 2 large eggs - 2 tbsp red food coloring - 1 tsp vanilla extract','1. Preheat oven to 350°F (175°C). 2. Grease and flour two 9-inch round cake pans. 3. Sift dry ingredients. 4. Mix in wet ingredients. 5. Pour into pans. 6. Bake for 30-35 minutes. Cool before frosting.','2023-12-05'),
('Coconut Lime Cake','- 2 cups all-purpose flour - 1½ tsp baking powder - ½ tsp baking soda - ½ tsp salt - 1 cup unsalted butter, softened - 1½ cups granulated sugar - 4 large eggs - 1 cup coconut milk - Zest of 3 limes - 1 cup shredded coconut','1. Preheat oven to 350°F (175°C). 2. Grease and flour two 9-inch round cake pans. 3. Whisk dry ingredients. 4. Cream butter and sugar, add eggs, coconut milk, and lime zest. 5. Fold in shredded coconut. 6. Bake for 25-30 minutes.','2023-12-05'),
('Banana Nut Bread Cake','- 2 cups all-purpose flour - 1½ tsp baking powder - ½ tsp baking soda - ½ tsp salt - ½ cup unsalted butter, softened - 1 cup granulated sugar - 2 large eggs - 3 ripe bananas, mashed - ½ cup sour cream - 1 tsp vanilla extract - 1 cup chopped nuts (walnuts or pecans)','1. Preheat oven to 350°F (175°C). 2. Grease and flour a 9x5-inch loaf pan. 3. Whisk dry ingredients. 4. Cream butter and sugar, add eggs, bananas, sour cream, and vanilla. 5. Mix in dry ingredients. 6. Fold in chopped nuts. 7. Bake for 60-70 minutes.','2023-12-05'),
('Strawberry Shortcake','- 2 cups all-purpose flour - ¼ cup granulated sugar - 1 tbsp baking powder - ½ tsp salt - ½ cup unsalted butter, cold and cubed - ¾ cup milk - 1 tsp vanilla extract - Fresh strawberries, sliced - Whipped cream','1. Preheat oven to 425°F (220°C). 2. In a large bowl, whisk together flour, sugar, baking powder, and salt. 3. Cut in butter until the mixture resembles coarse crumbs. 4. Add milk and vanilla. 5. Knead briefly and pat into a round. 6. Cut into wedges. 7. Bake for 12-15 minutes. 8. Cool, split, and fill with strawberries and whipped cream.','2023-12-05'),
('Pineapple Upside-Down Cake','- 1 cup all-purpose flour - 1 cup granulated sugar - 1 tsp baking powder - ¼ tsp salt - ½ cup unsalted butter, melted - 1 cup brown sugar - 1 can (20 oz) pineapple slices, drained - Maraschino cherries','1. Preheat oven to 350°F (175°C). 2. Grease and flour a 9-inch round cake pan. 3. Sprinkle brown sugar in the pan, arrange pineapple slices, and place cherries in the centers. 4. In a bowl, whisk flour, sugar, baking powder, and salt. 5. Add melted butter and mix until smooth. 6. Pour batter over the pineapple. 7. Bake for 35-40 minutes. 8. Let cool for 10 minutes, then invert onto a serving plate.','2023-12-05'),
('Mocha Almond Cake','- 1½ cups all-purpose flour - 1 cup granulated sugar - ⅓ cup cocoa powder - 1 tsp baking powder - ½ tsp baking soda - ½ tsp salt - 2 large eggs - ½ cup vegetable oil - 1 cup strong brewed coffee, cooled - 1 tsp almond extract - ½ cup sliced almonds (for topping)','1. Preheat oven to 350°F (175°C). 2. Grease and flour two 8-inch round cake pans. 3. Sift dry ingredients. 4. In a separate bowl, mix eggs, oil, coffee, and almond extract. 5. Add wet ingredients to dry and mix until smooth. 6. Pour batter into pans. 7. Sprinkle sliced almonds on top. 8. Bake for 25-30 minutes. 9. Cool before serving.','2023-12-05');

SELECT * FROM cosmiccakes.decorations;

INSERT INTO cosmiccakes.decorations(Dec_Type,Dec_Description,Dec_Sell_Price) VALUES ('Fondant Flowers','Delicate, edible flowers made from rolled fondant, perfect for adding a touch of elegance to cakes.',5),
('Buttercream Rosettes','Swirled decorations created using buttercream icing, resembling beautiful rosettes or flowers.',5),
('Edible Glitter','Shimmering, edible glitter that adds a sparkly touch to cakes, cupcakes, and other desserts.',5),
('Chocolate Ganache Drizzle','A glossy, decadent chocolate ganache drizzled over the cake, providing both flavor and visual appeal.',5),
('Marzipan Figures','Sculpted figures made from marzipan, a sweet almond paste, creating adorable and intricate cake toppers.',5),
('Fresh Flowers','Real, edible flowers strategically placed on the cake for a natural and vibrant decoration.',6),
('Royal Icing Piping','Elaborate designs piped onto the cake using royal icing, creating intricate patterns and details.',6),
('Whipped Cream Swirls','Light and fluffy swirls of whipped cream that add a creamy and delicious touch to the cake.',6),
('Chocolate Shards','Artfully arranged shards of chocolate, providing a sophisticated and visually stunning decoration.',6),
('Fruit Garnishes','Slices of fresh fruit, such as berries or citrus, arranged on the cake for a refreshing and colorful decoration.',6),
('Sprinkle Medley','A mix of colorful sprinkles or nonpareils, adding a playful and festive element to the cake.',6),
('Drip Effect','A stylish drip effect created with ganache, caramel, or colorful icing, cascading down the sides of the cake.',4.5),
('Candied Nuts','Nuts, such as pecans or almonds, candied and arranged on the cake for a crunchy and sweet topping.',4.5),
('Ganache Piped Borders','Piped borders made of rich chocolate ganache, framing the edges of the cake and enhancing its appearance.',4.5),
('Gold Leaf Accents','Delicate, edible gold leaf accents applied to the cake for a luxurious and elegant touch.',4.5),
('Ombre Frosting','Gradual color transition in the frosting, creating a visually stunning ombre effect on the entire cake.',4.5),
('Wafer Paper Flowers','Thin, edible flowers made from wafer paper, offering a delicate and ethereal appearance.',4.5),
('Caramel Drizzle','A luscious caramel drizzle over the cake, adding sweetness and a beautiful pattern to the surface.',4.5),
('Mirror Glaze','A glossy and reflective glaze that covers the cake, creating a mirror-like finish with vibrant colors.',4.5),
('Dusted Cocoa Powder','Lightly dusted cocoa powder on the top of the cake, providing a simple yet elegant decoration.',4.5),
('Sculpted Chocolate Decor','Intricately sculpted chocolate pieces, such as curls or shapes, used to decorate the cake and add a luxurious touch.',4.5),
('Pearlized Sprinkles','Sprinkles with a pearly finish, perfect for adding a touch of sophistication and glamour to the cake.',8),
('Candied Citrus Peel','Thin strips of candied citrus peel, such as orange or lemon, used to garnish the cake and provide a zesty flavor.',8),
('Lace Fondant Appliqué','Delicate lace-like patterns made from fondant and applied to the cake, creating a vintage and romantic look.',8),
('Ribbon Fondant Borders','Fondant strips shaped like ribbons and arranged as decorative borders around the cake layers.',8),
('Coconut Shavings','Fluffy and sweet coconut shavings sprinkled on top of the frosting for a tropical and textured decoration.',8),
('Patterned Stencils','Intricate patterns stenciled onto the cake using powdered sugar or cocoa, adding a detailed and professional touch.',8),
('Dainty Macarons','Miniature macarons arranged as a decorative border or clustered on top of the cake, offering a delightful and colorful display.',8),
('Gilded Fondant Accents','Fondant accents with a metallic gold finish, applied strategically to enhance the cakes overall design.',8);

SELECT * FROM cosmiccakes.cake_type;

INSERT INTO cosmiccakes.cake_type (CakeName, Cake_Category, RecipeID, SizeShapeID, Cake_Price) VALUES ('\'Lemon Blueberry Cake\'', 'SEASONAL SUMMER', 1004, 3003, 10),('\'Red Velvet Cake\'', 'CLASSIC', 1006, 3002, 12),('\'Mocha Almond Cake\'', 'CLASSIC', 1011, 2002, 12.00);


