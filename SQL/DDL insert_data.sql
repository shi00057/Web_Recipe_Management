USE GroupTask;

-- Insert users into the users table
INSERT INTO users (id, username, email, password) VALUES
(1, 'user1', 'user1@example.com', 'password1'),
(2, 'user2', 'user2@example.com', 'password2'),
(3, 'user3', 'user3@example.com', 'password3'),
(4, 'user4', 'user4@example.com', 'password4'),
(5, 'user5', 'user5@example.com', 'password5'),
(6, 'user6', 'user6@example.com', 'password6'),
(7, 'user7', 'user7@example.com', 'password7'),
(8, 'user8', 'user8@example.com', 'password8'),
(9, 'user9', 'user9@example.com', 'password9'),
(10, 'user10', 'user10@example.com', 'password10');

-- Insert recipes into the recipes table
INSERT INTO recipes (id, user_id, title, instructions, image_url, cuisine, dietary_preferences) VALUES
(1, 6, 'Oatmeal Cookies', 
'Sift together the flour, baking soda, and cinnamon. Stir in the oats and set aside.
Cream the butter until light and fluffy. Add the sugars and continue creaming until the mixture is lightened. Add the eggs one at a time, scraping down the bowl frequently and mixing well after each addition. Add the orange juice concentrate, vanilla extract, and salt.
Fold in the flour mixture and the raisins. Portion the dough onto paper-lined sheet pans.
Bake at 375°F (190°C) until golden, approximately 10 to 12 minutes.', 
'./Image/Oatmeal_Cookies.jpg', 'Canada', 'sweet');

INSERT INTO recipes (id, user_id, title, instructions, image_url, cuisine, dietary_preferences) VALUES
(2, 8, 'Traditional Shortbread', 
'Blend the butter and powdered sugar in a mixing bowl without creaming. Stir in the vanilla and salt, mixing thoroughly. Add the flour and mix until just combined.
Divide the dough into four equal portions. Roll each piece of dough into 8-inch (20-centimeter) disks. Wrap in plastic. Freeze until hard, approximately 30 minutes.
Remove from the freezer and unwrap, then lightly brush each disk with egg wash. Cut each disk into eight wedges. Dock the wedges with a fork.
Bake at 375°F (190°C) until pale golden brown, approximately 15 to 20 minutes.', 
'./Image/Traditional_Shortbread.jpg', 'Canada', 'sweet');

INSERT INTO recipes (id, user_id, title, instructions, image_url, cuisine, dietary_preferences) VALUES
(3, 1, 'Gingerbread Cookies', 
'Cream the butter and sugar until light and fluffy. Add the molasses and egg and beat to blend well; set aside.
Stir together the remaining ingredients. Gradually add the flour mixture to the butter mixture, beating until just blended. Gather the dough into a ball and wrap in plastic wrap; refrigerate at least 1 hour.
On a lightly floured board, roll out the gingerbread to a thickness of 1/4 inch (6 millimeters). Cut out the cookies with a floured cutter and transfer to greased baking sheets.
Bake at 325°F (160°C) until the cookies are lightly browned around the edges and feel barely firm when touched, approximately 10 minutes. Transfer to wire racks to cool, then decorate as desired with Royal Icing.', 
'./Image/Gingerbread_Cookies.jpg', 'USA', 'sweet and ginger');

INSERT INTO recipes (id, user_id, title, instructions, image_url, cuisine, dietary_preferences) VALUES
(4, 6, 'Churros (Fluted Mexican Doughnut Sticks)', 
'Combine the cinnamon and sugar in a quarter-size hotel pan. Set aside.
Bring the water and salt to a boil in a heavy saucepan.
Remove the boiling salted water from the heat. Add the flour all at once. Stir vigorously with a firm spatula until a soft dough forms.
Transfer the dough immediately to the bowl of a mixer fitted with the paddle attachment. On medium to high speed, add one-third of the egg whites. Mix until completely combined. Scrape down the bowl. Repeat the process until all of the egg whites are incorporated. Add the vanilla.
Pipe the batter using a medium star tip into 6- to 8-inch (15- to 20-centimeter) strips on very lightly oiled parchment paper.
Slide the piped batter into oil heated to 375°F (190°C). Fry in batches until crisp, approximately 3 to 5 minutes. Drain briefly on paper towels, then roll in the cinnamon sugar. Serve warm with Chocolate Fudge Sauce.', 
'./Image/Churros.jpg', 'Mexico', 'cinnamon');

INSERT INTO recipes (id, user_id, title, instructions, image_url, cuisine, dietary_preferences) VALUES
(5, 8, 'Summer Berry Cobbler', 
'Combine the berries with the 10 ounces of sugar and the vinegar. Set aside while preparing the drop biscuits.
To make the drop biscuits, sift the dry ingredients together in a large bowl. Stir in the 8 ounces (240 grams) of sugar. Cut the butter into the dry ingredients until it resembles coarse meal.
Pour 4 fluid ounces (120 milliliters) of buttermilk over the flour mixture and stir in by hand. The dough should form a sticky ball. Add additional buttermilk gradually if necessary.
Divide the berries between 12 lightly buttered ramekins or 6 two-serving-size baking dishes. Using a #20 portion scoop, place mounds of the dough over the berries.
Bake at 350°F (180°C) until the dough is golden brown with a dry interior, and the berry mixture bubbles, approximately 25 to 35 minutes. Top with powdered sugar or ice cream if desired.', 
'./Image/Summer_Berry_Cobbler.jpg', 'USA', 'sweet and sour');

INSERT INTO recipes (id, user_id, title, instructions, image_url, cuisine, dietary_preferences) VALUES
(6, 1, 'Yellow Cake', 
'Sift together the flour and baking powder. Set aside.
Cream the butter until light and lump-free in the bowl of a 6 quart (6.5 liter) mixer fitted with the paddle attachment. Add the granulated sugar, corn syrup and salt. Blend just until no lumps remain. The mixture will be stiff.
Gradually add the egg yolks, allowing them to fully incorporate before adding more yolks. Scrape down the bowl after each addition. Add the vanilla and almond extract (if using).
Mix the batter on medium speed until light. Then continue mixing another 5 to 6 minutes.
Fold in the flour mixture alternately with the buttermilk in three additions, ending with the flour and scraping well in between.
Scale 1 pound 4 ounces (600 grams) of batter into four buttered and floured 9-inch (22-centimeter) pans. Bake at 350°F (180°C) until the center of the cake bounces back when lightly pressed, approximately 28 minutes.
Allow to cool for 15 minutes before unmolding onto paper-lined sheet pans.', 
'./Image/Yellow_Cake.jpg', 'USA', 'sweet');

INSERT INTO recipes (id, user_id, title, instructions, image_url, cuisine, dietary_preferences) VALUES
(7, 8, 'Traditional French Buttercream', 
'Combine the sugar, corn syrup and water in a small saucepan and bring to a boil.
Meanwhile, place the eggs and egg yolks in the bowl of a mixer fitted with the whip attachment; start whipping the mixture on medium speed the moment the sugar solution begins to boil.
Continue boiling until the syrup reaches 250°F (120°C). When the syrup is ready, increase the mixer speed to high and carefully pour the sugar syrup in a steady even stream down the inside of the bowl.
Continue whipping until the mixture is mousselike and cools to approximately 78°F (25°C).
Reduce the speed to medium and gradually add the butter; whip until light and aerated.
Add the vanilla and blend until combined.', 
'./Image/Traditional_French_Buttercream.jpg', 'France', 'sweet');

INSERT INTO recipes (id, user_id, title, instructions, image_url, cuisine, dietary_preferences) VALUES
(8, 1, 'Cream Cheese Icing', 
'Blend the cream cheese on low speed in the bowl of a mixer fitted with the paddle attachment. Add the powdered sugar in four increments, stirring well between additions and scraping down the bowl frequently.
Add the softened butter and vanilla. Blend on low speed until smooth, scraping down the bowl frequently.', 
'./Image/Cream_Cheese_Icing.jpg', 'USA', 'sweet');

INSERT INTO recipes (id, user_id, title, instructions, image_url, cuisine, dietary_preferences) VALUES
(9, 8, 'Pastry Cream (Crème Pâtissière)', 
'Bring the milk, vanilla bean and 3 ounces (120 grams) of the sugar to a boil in a large nonreactive saucepan.
Whisk the egg yolks in a mixing bowl. In a separate bowl, combine the remaining sugar and the cornstarch. Whisk the sugar mixture into the egg yolks.
Temper the yolk mixture with one-quarter of the boiling milk. Return the yolk mixture to the pan and cook, whisking vigorously, until the cream boils and is well thickened. Allow the pastry cream to boil approximately 2 minutes, stirring constantly.
Remove the pastry cream from heat and immediately pour it into a clean mixing bowl.
Fold in the butter if using until melted. Do not overmix, as this will thin the custard.
Cover by placing plastic wrap on the surface of the custard. Chill over an ice bath. Remove the vanilla bean just before using the pastry cream.', 
'./Image/Pastry_Cream.jpg', 'France', 'sweet and vanilla');

INSERT INTO recipes (id, user_id, title, instructions, image_url, cuisine, dietary_preferences) VALUES
(10, 6, 'French or Italian Bread', 
'Combine the water and yeast in the bowl of a mixer, 6 quart (6.5 liter) or larger, fitted with a dough hook. Add the remaining ingredients and mix on low speed until all the flour is incorporated.
Increase the speed to medium and knead the dough until it is smooth and elastic.
Ferment the dough until doubled, approximately 1 to 3 hours. Punch down, divide and shape as desired. Proof the loaves until doubled.
Score the loaves then bake them at 425°F (218°C), with steam injected during the first few minutes of baking, until the crust is well developed and golden brown and the bread is baked through, approximately 12 minutes for rolls and 20 minutes for small loaves.', 
'./Image/Italian_Bread.jpg', 'Italian', 'savory');

-- Insert recipe ingredients into the recipe_ingredients table
INSERT INTO recipe_ingredients (recipe_id, ingredient, amount) VALUES
(1, 'All-purpose or pastry flour', '315 g'),
(1, 'Baking soda', '4 g'),
(1, 'Cinnamon, ground', '6 g'),
(1, 'Quick-cooking oats', '270 g'),
(1, 'Unsalted butter, softened', '270 g'),
(1, 'Granulated sugar', '270 g'),
(1, 'Dark brown sugar', '270 g'),
(1, 'Eggs', '95 g (2 eggs)'),
(1, 'Orange juice concentrate', '45 ml'),
(1, 'Vanilla extract', '15 ml'),
(1, 'Salt', '5 g'),
(1, 'Raisins', '360 g');

INSERT INTO recipe_ingredients (recipe_id, ingredient, amount) VALUES
(2, 'Unsalted butter, softened', '480 g'),
(2, 'Powdered sugar', '240 g'),
(2, 'Vanilla extract', '15 ml'),
(2, 'Salt', '5 g'),
(2, 'Pastry or all-purpose flour', '570 g'),
(2, 'Egg wash', 'as needed');

INSERT INTO recipe_ingredients (recipe_id, ingredient, amount) VALUES
(3, 'Unsalted butter, softened', '120 g'),
(3, 'Dark brown sugar', '120 g'),
(3, 'Molasses, dark', '180 ml'),
(3, 'Egg', '50 g (1 egg)'),
(3, 'All-purpose flour', '360 g'),
(3, 'Baking soda', '4 g'),
(3, 'Salt', '3 g'),
(3, 'Ginger, ground', '4 g'),
(3, 'Cinnamon, ground', '2 g'),
(3, 'Nutmeg, ground', '1 g'),
(3, 'Cloves, ground', '1 g'),
(3, 'Royal Icing', 'as needed');

INSERT INTO recipe_ingredients (recipe_id, ingredient, amount) VALUES
(4, 'Cinnamon, ground', '15 g'),
(4, 'Granulated sugar', '120 g'),
(4, 'Water', '480 ml'),
(4, 'Salt', '5 g'),
(4, 'Pastry flour', '240 g'),
(4, 'Egg whites', '90 g (3 whites)'),
(4, 'Vanilla extract', '5 ml'),
(4, 'Chocolate Fudge Sauce', 'as needed');

INSERT INTO recipe_ingredients (recipe_id, ingredient, amount) VALUES
(5, 'Assorted berries (blueberries, blackberries, raspberries and/or sliced strawberries)', '2 qt. (2 lt)'),
(5, 'Granulated sugar', '300 g'),
(5, 'Balsamic vinegar', '30 ml'),
(5, 'All-purpose flour', '240 g'),
(5, 'Baking powder', '4 g'),
(5, 'Salt', '15 g'),
(5, 'Baking soda', '2 g'),
(5, 'Nutmeg', '0.5 g'),
(5, 'Granulated sugar', '240 g'),
(5, 'Unsalted butter, cold', '120 g'),
(5, 'Buttermilk', '120–180 ml');

INSERT INTO recipe_ingredients (recipe_id, ingredient, amount) VALUES
(6, 'Cake flour', '540 g'),
(6, 'Baking powder', '17 g'),
(6, 'Unsalted butter, softened', '480 g'),
(6, 'Granulated sugar', '600 g'),
(6, 'Corn syrup, glucose or additional sugar', '90 g'),
(6, 'Salt', '6 g'),
(6, 'Egg yolks', '300 g (16 yolks)'),
(6, 'Vanilla extract', '30 ml'),
(6, 'Almond extract (optional)', '65 ml'),
(6, 'Buttermilk', '360 ml');

INSERT INTO recipe_ingredients (recipe_id, ingredient, amount) VALUES
(7, 'Granulated sugar', '570 g'),
(7, 'Corn syrup or glucose', '90 g'),
(7, 'Water', '180 ml'),
(7, 'Eggs', '150 g (3 eggs)'),
(7, 'Egg yolks', '180 g (10 yolks)'),
(7, 'Unsalted butter, room temperature', '780 g'),
(7, 'Vanilla extract', '30 ml');

INSERT INTO recipe_ingredients (recipe_id, ingredient, amount) VALUES
(8, 'Cream cheese, softened', '1440 g'),
(8, 'Powdered sugar, sifted', '600 g'),
(8, 'Unsalted butter, softened', '240 g'),
(8, 'Vanilla extract', '15 ml');

INSERT INTO recipe_ingredients (recipe_id, ingredient, amount) VALUES
(9, 'Milk', '1 qt. (1 lt)'),
(9, 'Vanilla bean, split', '1'),
(9, 'Granulated sugar', '225 g'),
(9, 'Egg yolks', '180 g (10 yolks)'),
(9, 'Cornstarch', '75 g'),
(9, 'Unsalted butter (optional)', '60 g');

INSERT INTO recipe_ingredients (recipe_id, ingredient, amount) VALUES
(10, 'Water (temperature controlled)', '1170 ml'),
(10, 'Active dry yeast', '28 g'),
(10, 'Bread flour', '1.8 kg'),
(10, 'Salt', '36 g');

-- Insert data into the favorites table
-- This table stores the relationship between users and their favorite recipes
INSERT INTO favorites (user_id, recipe_id) VALUES
(1, 3),
(2, 5),
(3, 7),
(1, 2),
(2, 4),
(3, 6);

-- Insert data into the ratings table
-- This table stores user ratings for different recipes
INSERT INTO ratings (user_id, recipe_id, rating) VALUES
(1, 3, 5),
(2, 5, 4),
(3, 7, 3),
(1, 2, 5),
(2, 4, 4),
(3, 6, 5);
