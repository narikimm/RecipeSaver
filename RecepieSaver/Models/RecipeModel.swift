//
//  RecipeModel.swift
//  RecepieSaver
//
//  Created by Kim Nari on 2022/09/21.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case snackAndAppetizer = "Snack & Appetizer"
    case side = "Side"
    case dessert = "Dessert"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
    Recipe(name: "Ratatouille Bruschetta",
           image:"https://www.forksoverknives.com/wp-content/uploads/fly-images/161019/Summery-Ratatouille-Bruschetta-wordpress-360x270-c.jpg",
           description:
            "Ratatouille, a traditional French dish, is often referred to as “peasants’ stew” due to its birthplace in the Provence countryside, where farmers needed to use up excess produce that ripened over the summer months. Luckily for us, people from all walks of life now enjoy this scrumptious dish. In this version, to help you save time, we’ve taken out the extra step of sautéing onions and garlic before stewing a medley of veggies with fresh herbs. Ratatouille is often served in a bowl with a piece of crusty bread on the side for dipping, but we decided to turn this stew into a hand-held meal by spooning it on top of toasted bread to create bruschetta. Garnish with your favorite toppings, and enjoy as a snack or serve as an appetizer at your next gathering!",
           ingredients: "3 medium tomatoes, peeled and chopped, or one 15-oz. can diced tomatoes, undrained\n3 medium zucchini, halved lengthwise and cut into ½-inch-thick slices\n1 medium eggplant, cut into ½-inch chunks\n1 medium onion, thinly sliced\n1 small bell pepper (any color), cut into ½-inch pieces\n2 cloves garlic, minced\n1 tablespoon herbes de Provence or Italian seasoning, or 1 sprig each fresh thyme, rosemary, oregano, sage, and parsley\n1 bay leaf (optional)\nSea salt, to taste\nFreshly ground black pepper, to taste\n1 loaf whole grain bread\nSliced olives (optional)\nChopped fresh basil, for garnish",
           directions: "In a medium saucepan combine the first eight ingredients (through bay leaf, if using). Add 1 cup water. Season with salt and pepper. Bring to simmering over medium; reduce heat to medium-low. Simmer, covered, 20 to 30 minutes or until vegetables are tender. (Alternately, cook ratatouille in a slow cooker on high 2 hours or in a multicooker on high pressure 5 minutes.)\nCut bread loaf into 10 thin slices and toast the slices. Spoon ratatouille on top of each slice and garnish with sliced olives and/or chopped fresh basil.",
           category: "Snack & Appetizer",
           datePublished: "2022-08-15",
           url: "https://www.forksoverknives.com/recipes/vegan-snacks-appetizers/ratatouille-bruschetta/"),
    Recipe(name: "Mini Bell Pepper Poppers",
           image:"https://www.forksoverknives.com/wp-content/uploads/fly-images/92180/Mini-Bell-Pepper-Poppers-360x270-c.jpg",
           description:
            "The shape and size of mini bell peppers make them the perfect vessel for this handheld party snack. The filling for these vegan poppers is sweet, crunchy and a little juicy, with a hint of spice from Tajin seasoning—an addictive Mexican-style blend of chili, salt, and dehydrated lime juice. You can assemble these poppers a day ahead of time and store them in the fridge until ready to serve. Check out more of our favorite bell pepper recipes!",
           ingredients: "40 mini bell peppers, tops cut and cored (about 24 oz.)\n3 ripe mangoes, very finely diced (3 cups)\n1 Persian cucumber, very finely diced (½ cup)\n1 medium tomato, very finely diced (½ cup)\n1 scallion, thinly sliced (¼ cup)\n2 tablespoons finely chopped fresh cilantro\n2 tablespoons fresh lemon juice or apple cider vinegar\n1½ tablespoons pure maple syrup\nSea salt\nDash of Tajin seasoning (optional)",
           directions: "Place peppers in a steamer basket in a large saucepan. Add water to saucepan just below basket. Bring to boiling. Steam, covered, 10 to 15 minutes, or until peppers are soft but not limp. Alternatively, roast the peppers: Preheat oven to 350°F; place peppers on a parchment-lined baking sheet; bake for 10 minutes; then remove and let stand for 10 minutes.\nMeanwhile, prepare the filling: In a medium bowl mix together the remaining ingredients.\nSpoon filling into peppers, placing filled peppers upright in a baking dish as you go to prevent filling from spilling out. Chill in the refrigerator for at least 1 hour or until ready to serve.",
           category: "Snack & Appetizer",
           datePublished: "2019-06-28",
           url: "https://www.forksoverknives.com/recipes/vegan-snacks-appetizers/mini-bell-pepper-vegan-poppers/"),
    Recipe(name: "Creamy Roasted Cauliflower Soup",
           image:"https://www.forksoverknives.com/wp-content/uploads/fly-images/159964/Roasted-Cauliflower-Soup-wordpress-360x270-c.jpg",
           description:
            "This mellow-flavored cauliflower soup is pure comfort in a bowl. Hearty potatoes are puréed with the cauliflower into a velvety texture and enhanced with the warming flavors of nutmeg and cayenne. The garnish of roasted florets and fresh herbs adds a delicious contrasting texture to the creamy soup—not to mention a restaurant-quality presentation! Enjoy this recipe as a light lunch or add some heft by serving it alongside a grilled sandwich or salad.",
           ingredients: "1 2-lb. head cauliflower, cut into florets (6 cups)\n2 medium russet potatoes, peeled and cubed (2 cups)\n1 cup chopped sweet onion\n4 cloves garlic\n3 to 4 tablespoons white wine vinegar\n4 cups low-sodium vegetable broth\n½ teaspoon freshly grated nutmeg\n¼ teaspoon cayenne pepper\nChopped fresh herbs, such as parsley, thyme, or basil\nFreshly ground black pepper, to taste",
           directions: "Preheat oven to 450°F. Line two 15x10-inch baking pans with foil. Spread cauliflower, potatoes, onion, and garlic evenly in pans. Sprinkle with 2 tablespoons of the vinegar and 2 tablespoons water. Roast 25 to 30 minutes or until vegetables are tender and browned.\nSet aside 2 cups of the roasted vegetables for garnish. Transfer the remaining vegetables to a large pot. Add broth and 3 cups water. Bring to boiling; reduce heat. Simmer, uncovered, 15 minutes to blend flavors. Using an immersion blender, blend soup. (Or carefully transfer in batches to a blender. Cover and blend.) Stir in the remaining 1 to 2 tablespoons of vinegar, the nutmeg, and cayenne.\nServe soup topped with reserved vegetables, the herbs, and black pepper.",
           category: "Soup",
           datePublished: "2022-03-4",
           url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/creamy-roasted-cauliflower-soup/"),
    Recipe(name: "Lemony Spring Pea Toasts",
           image:"https://www.forksoverknives.com/wp-content/uploads/fly-images/160043/spring-pea-mash-toasts-wordpress-360x270-c.jpg",
           description:
            "These veggie-packed toasts take just 20 minutes to prepare and make for a refreshing meal any time of day. A lemony spring pea mash makes a tasty base for pickled cauliflower and thinly sliced cucumbers and radishes. When fresh spring peas are out of season or otherwise hard to find, you can substitute frozen peas in this recipe; just steam them with the edamame. For more fast-fixing mealtime inspiration, check out our favorite 39 Quick and Healthy 30-Minute Meals.",
           ingredients: "½ cup small purple or white cauliflower florets\n¼ cup slivered red onion\n2 tablespoons apple cider vinegar\n2 cups shelled fresh spring peas\n¼ cup fresh or frozen shelled edamame, thawed if frozen\n2 tablespoons chopped scallion\n2 to 3 teaspoons fresh lemon juice\n1 teaspoon chopped fresh tarragon or mint\n1 small clove garlic, minced\n¼ teaspoon hot pepper sauce\nSea salt, to taste\n2 hearty whole grain bread slices, toasted\nVery thin halved slices cucumber\nVery thin halved slices watermelon radishes or regular radishes\nAleppo pepper or freshly ground black pepper, to taste",
           directions: "To make pickled cauliflower, in a small saucepan combine cauliflower, red onion, vinegar, and 2 tablespoons water. Bring to boiling; remove from heat. Cover and let stand 15 minutes; drain and set aside.\nMeanwhile, place peas in a steamer basket in a large saucepan. Add water to saucepan to just below basket. Bring to boiling. Steam, covered, 12 minutes or until tender. Transfer peas to a colander and rinse under cold water; transfer to a bowl. Add edamame to steamer basket. Steam, covered, 2 minutes. Transfer edamame to colander and rinse under cold water; drain.\nAdd the next five ingredients (through hot pepper sauce) to the bowl with the peas. Mash mixture to combine. Season with salt.\nSpread pea mash on toasted bread slices. Top with edamame, cucumber, radishes, and pickled cauliflower mixture. Sprinkle with Aleppo pepper.",
           category: "Breakfast",
           datePublished: "2022-03-28",
           url: "https://www.forksoverknives.com/recipes/vegan-breakfast/lemony-spring-pea-toasts/"),
    Recipe(name: "Herbed Breakfast Hash",
           image:"https://www.forksoverknives.com/wp-content/uploads/fly-images/158221/herbed-breakfast-hash-wordpress-360x270-c.jpg",
           description:
            "Hash is a great dish for using up leftover veggies in your fridge that you don’t know what to do with. Seasoned with fragrant garlic, smoky chili powder, and lots of fresh herbs, this recipe is a  hearty and healthy way to start your day. Serve it with a side of whole grain toast and a scoop of homemade vegan yogurt, and you’ve got a breakfast of champions!\nTip: To neatly slice corn from the cob, stand the stem end on the center hole of a tube pan. Slice downward so kernels fall into the pan.",
           ingredients: "½ cup chopped onion\n½ cup chopped red bell pepper\n3 cloves garlic, minced\n1 teaspoon chili powder\n1½ cups low-sodium vegetable broth\n2 lb. chopped red potatoes\n1½ cups fresh sweet corn kernels (cut from 3 ears)\n1 medium zucchini, halved lengthwise and sliced\n1 cup grape tomatoes, halved\n⅓ cup chopped fresh herbs, such as basil, dill, parsley, and/or thyme\nSea salt, to taste\nFreshly ground black pepper, to taste",
           directions: "In an extra-large skillet cook onion, bell pepper, garlic, and chili powder over medium 3 to 4 minutes, stirring occasionally. Add vegetable broth, 1 to 2 tablespoons at a time, as needed to prevent sticking. Add potatoes and 1 cup of the broth. Cover and cook 10 to 15 minutes or until potatoes are almost tender.\nAdd corn, zucchini, and the remaining broth; cook 5 to 7 minutes or until tender. Stir in tomatoes and herbs. Cook 1 to 2 minutes or until heated through. Season with salt and black pepper.",
           category: "Breakfast",
           datePublished: "2021-08-31",
           url: "https://www.forksoverknives.com/recipes/vegan-breakfast/herbed-breakfast-hash/"),
    Recipe(name: "Spaghetti Squash Pho",
           image:"https://www.forksoverknives.com/wp-content/uploads/fly-images/160010/Spaghetti-Squash-Pho-wordpress-360x270-c.jpg",
           description:
            "Traditional Vietnamese pho uses rice noodles to soak up the flavorful broth, but this plant-based remix substitutes tender strands of spaghetti squash for a veggie-forward version that’s equally delicious. Shiitake mushrooms and warming spices add a rich depth of flavor to the soup while soy-marinated tofu slabs add substance to the lightness of this dish. Top each bowl with a colorful assortment of garnishes such as edamame, carrots, radishes, and scallions for the full-on pho experience!",
           ingredients: "1 medium spaghetti squash, halved lengthwise\n1 3-inch piece fresh ginger, peeled and sliced\n1 3-inch piece fresh turmeric, peeled and sliced\n4 leaves Thai basil, plus additional for garnish\n6 cloves garlic, quartered\n1 teaspoon black peppercorns\n2 cups low-sodium vegetable broth\n2 heads baby bok choy, sliced (8 oz.)\n4 oz. fresh shiitake mushrooms, stemmed and thinly sliced\n½ of a 12-oz. package extra-firm silken tofu, cut into four ¼-inch-thick slabs\n1 teaspoon reduced-sodium soy or tamari sauce\n1 cup shelled edamame, steamed\n1 cup matchstick-cut carrots\n½ cup slivered radishes\n½ cup slivered scallions\nLime wedges\nSriracha sauce (optional)\nFreshly ground black pepper (optional)",
           directions: "Scoop seeds out of spaghetti squash. Place, cut sides down, in a 2-quart square baking dish. (Squash halves will overlap slightly.) Microwave 5 to 8 minutes or until starting to soften. (Squash will not be fully tender at this point.) Cool until easy to handle. Use a fork to scrape pulp into a 4- to 6-quart pot.\nPlace ginger, turmeric, basil, garlic, and peppercorns on a double-thick 8-inch square of 100-percent-cotton cheesecloth. Bring up corners and tie closed with 100-percent-cotton kitchen string. Add to pot with broth and 2 cups water. Bring to boiling; reduce heat. Cover and simmer 20 minutes, adding bok choy and mushrooms the last 5 minutes.\nMeanwhile, heat a large nonstick skillet over medium- high. Toss tofu slabs with soy sauce. Sear tofu in hot skillet 2 minutes per side or until browned and crisp on edges.\nRemove and discard seasoning bag from pot, squeezing with tongs to remove liquid.\nServe squash mixture in bowls topped with tofu, edamame, carrots, radishes, scallions, and additional Thai basil. Serve with lime wedges and, if desired, sriracha sauce and cracked black pepper.",
           category: "Soup",
           datePublished: "2022-03-14",
           url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/spaghetti-squash-pho/"),
    Recipe(name: "Spicy Roasted Brussels Sprouts",
           image:"https://www.forksoverknives.com/wp-content/uploads/fly-images/159822/Spicy-Roasted-Brussels-Sprouts-wordpress-360x270-c.jpg",
           description:
            "Brussels sprouts are partially roasted before being tossed in a spicy paste and sent back into the oven to get irresistibly tender. The chickpea and almond flours in the paste add crispness while the medley of savory spices punch up the wow factor for these not-so-basic Brussels. The perfect side dish to serve with a hearty shepherd’s pie or lasagna, make a batch of these spicy sprouts when you’re craving an easy and delicious way to spruce up your standard roasted veggies.",
           ingredients: "1 lb. Brussels sprouts (about 20), halved lengthwise\n⅓ cup unsweetened, unflavored plant-based milk\n¼ cup almond meal\n2 tablespoons chickpea flour\n1 tablespoon lemon juice\n3 cloves garlic, minced\n1 teaspoon ground cumin\n1 teaspoon ground coriander\n½ teaspoon sea salt\n¼ teaspoon ground turmeric\n⅛ teaspoon cayenne pepper",
           directions: "Preheat oven to 350°F. Line a 15×10-inch baking pan with parchment paper. Place Brussels sprouts in a large bowl; sprinkle with 1 to 2 tablespoons of water and toss to coat. Spread Brussels sprouts in a single layer in the prepared pan. Roast 15 minutes.\nIn the same bowl stir together the remaining ingredients until a paste forms. Transfer roasted Brussels sprouts to bowl; toss well to coat evenly. Return sprouts to baking pan, spreading evenly. Roast 15 minutes more. Serve immediately.",
           category: "Side",
           datePublished: "2022-02-17",
           url: "https://www.forksoverknives.com/recipes/vegan-salads-sides/spicy-roasted-brussels-sprouts/"),
    Recipe(name: "Eat-the-Rainbow Salad",
           image:"https://www.forksoverknives.com/wp-content/uploads/fly-images/159991/Eat-the-Rainbow-Salad-wordpress-360x270-c.jpg",
           description:
            "Eating a colorful array of fruits and vegetables not only keeps meals interesting but also ensures you get the full spectrum of phytonutrients available from all the different color groups. This eye-catching rainbow salad features chewy wild rice, sweet red apples, tangy clementines, earthy beets, and tender salad greens to pack your bowl full of healthful ingredients. The zesty Orange-Poppyseed dressing comes together in a flash. Hearty enough to enjoy on its own, make this vibrant salad a staple of your weekday lunch routine to feel nourished and satisfied until dinnertime.",
           ingredients: "⅓ cup white wine vinegar\n¼ cup orange juice\n1 tablespoon poppy seeds\n1 tablespoon stone-ground mustard\n1 tablespoon pure maple syrup\n¼ teaspoon onion powder\nSea salt, to taste\nFreshly ground black pepper, to taste\n1⅓ cups dry brown and wild rice blend\n2 medium red apples\n4 clementines\n1 medium yellow summer squash\n1 8-oz. package cooked beets\n6 cups mixed salad greens\n2 cups fresh blueberries",
           directions: "For Orange-Poppyseed Dressing, in a small bowl whisk together the first six ingredients (through onion powder). Season to taste with salt and freshly ground black pepper, and set aside until serving.\nIn a medium saucepan combine rice and 4 cups water. Bring to boiling; reduce heat. Cover and simmer 30 to 40 minutes or until rice is tender. Spread rice in a shallow baking pan to cool.\nMeanwhile, core and thinly slice apples, peel and section clementines, halve yellow squash lengthwise then cut crosswise into ½-inch slices, and slice or wedge beets.\nSpread salad greens on a large platter. Top with cooled rice. Arrange apples, clementines, squash, beets, and blueberries on the rice. Drizzle with Orange–Poppy Seed Dressing.",
           category: "Salad",
           datePublished: "2022-03-09",
           url: "https://www.forksoverknives.com/recipes/vegan-salads-sides/eat-rainbow-salad/"),
    Recipe(name: "Air-Fried Fingerling Potatoes",
           image:"https://www.forksoverknives.com/wp-content/uploads/fly-images/160420/Air-Fried-Fingerling-Potatoes-wordpress-360x270-c.jpg",
           description:
            "Crispy air-fried fingerling potatoes are the perfect appetizer or side dish when you want to whip up something simple but satisfying. A smoky coating of chipotle chile powder gives the potatoes a tasty kick while a tangy chimichurri dip adds zesty herbal freshness. Using an air fryer means the spuds get perfectly golden brown without any oil, so you can enjoy the comforting flavors of fried food without the unhealthy ingredients. Add a sprinkle of flaky sea salt on top and enjoy!\nTip: For extra crispy air-fried potatoes with a golden exterior, coat spuds with a flax egg—a gooey 3:1 mixture of water and flaxseed meal.",
           ingredients: "1 tablespoon flaxseed meal\n1 teaspoon chipotle chile powder\n¼ teaspoon sea salt\n1 15-oz. no-salt-added can chickpeas\n½ cup lightly packed fresh parsley\n¼ cup lightly packed fresh cilantro\n3 cloves garlic\n2 tablespoons lime juice\n⅛ teaspoon crushed red pepper\n1 lb. fingerling potatoes (about 12), halved lengthwise",
           directions: "In a medium bowl combine flaxseed meal and 3 tablespoons water. Let stand 15 minutes. Mix in chile powder and salt.\nFor Creamy Chimichurri Dip, drain the chickpeas, reserving liquid (aquafaba). Rinse and drain chickpeas. In a small food processor or blender combine ¾ cup of the chickpeas, the parsley, cilantro, and garlic. Pulse until chopped. Add 2 tablespoons reserved aquafaba, the lime juice, and crushed red pepper. Pulse until smooth. Place in an airtight container and store in the refrigerator until ready to use. Reserve remaining chickpeas and aquafaba for another use.\nPreheat an air fryer to 370°F. Add potatoes to flaxseed mixture; toss to coat. Arrange potatoes in air fryer in a single layer, working in batches if necessary. Air-fry about 20 minutes or until golden and tender. Serve with Creamy Chimichurri Dip.",
           category: "Side",datePublished: "2022-05-20",
           url: "https://www.forksoverknives.com/recipes/vegan-salads-sides/air-fried-fingerling-potatoes/"),
    Recipe(name: "Tricolor Nice Cream Cupcakes",
           image:"https://www.forksoverknives.com/wp-content/uploads/fly-images/160895/Tricolor-Ice-Creamcakes-wordpress-360x270-c.jpg",
           description:
            "Here’s a fun and creative way to serve nice cream: Layer three different flavors in cupcake molds for rainbow-hued nice cream cupcakes. Colorful stripes of mango, banana, and berries give these frosty treats an eye-catching aesthetic that’s ideal for impressing guests at a dinner party. Top each cupcake with extra berries or even a sprinkle of granola to get a salty-sweet flavor profile. Feel free to make this recipe in advance because they’ll keep for two to three weeks in the freezer!\nTip: The volume of cupcake molds can vary, but they generally range from ⅓ to ½ cup each. If your pan or individual cups are larger, you’ll get six creamcakes; if they are smaller, the recipe will yield about nine.",
           ingredients: "2 cups frozen mixed berries\n2 medium bananas, each cut into 2 or 3 pieces and frozen\n2 cups frozen mango chunks",
           directions: "Arrange six silicone cupcake molds on a rimmed baking sheet. Place berries in a blender; cover and blend until smooth. Working quickly so berries don’t thaw, pour berry puree into cupcake molds, filling each mold one-third full. Transfer baking sheet to the freezer.\nThoroughly rinse blender pitcher, then add frozen bananas; cover and blend until creamy. Remove baking sheet from freezer and divide banana puree evenly among cupcake molds, filling them no more than two-thirds full. Return to freezer.\nPlace frozen mango in blender (there’s no need to rinse the blender unless desired). Blend until creamy and smooth. Remove baking sheet from freezer. Divide mango puree evenly among cupcake molds. Cover molds with a second baking sheet or with plastic wrap. Freeze at least 6 hours or until set. Unmold just before serving. If desired, top with additional frozen mixed berries.",
           category: "Dessert",
           datePublished: "2022-07-28",
           url: "https://www.forksoverknives.com/recipes/vegan-desserts/tricolor-nice-cream-cupcakes/"),
    Recipe(name: "Cilantro Ranch Bean Salad",
           image:"https://www.forksoverknives.com/wp-content/uploads/fly-images/160008/Cilantro-Ranch-Bean-Salad-wordpress-360x270-c.jpg",
           description:
            "This satisfying salad hits the spot when you’re craving Southwest flavors but don’t want a heavy meal. Nutritional yeast and chili powder give chickpeas a cheesy, smoky flavor that’s enhanced even further when baked to crispy perfection in the oven. A medley of roasted corn, juicy tomatoes, and spicy jalapeños brings brightness to the dish while a hearty serving of flavorful beans adds substance to the salad greens. The Cilantro Ranch dressing ties everything together with notes of zesty citrus and savory tomatillos. If you have extra dressing, use it as a dipping sauce for fresh veggies or as a spread on sandwiches.\nTip: Make the chickpeas ahead of time by preparing them as directed in Step 1. Place the cooled chickpeas in an airtight container and store at room temperature for up to 1 week.",
           ingredients: "6 to 7 oz. extra-firm lite silken tofu\n2 fresh tomatillos, peeled and chopped (½ cup)\n½ cup unsweetened, unflavored plant-based milk\n½ cup lightly packed cilantro leaves\n1 tablespoon lime juice\n1 clove garlic\n¼ teaspoon onion powder\n¼ teaspoon dry mustard\n¼ teaspoon freshly ground black pepper\nSea salt, to taste\n1 15-oz. can no-salt-added chickpeas, rinsed and drained (1½ cups)\n3 tablespoons nutritional yeast\n2 teaspoons chili powder\n2 cups frozen roasted corn\n4 cups chopped romaine lettuce\n4 cups fresh baby spinach\n3 cups Instant Pot o' Beans, drained\n2 cups chopped tomatoes\n½ cup slivered scallions\n¼ cup sliced pitted ripe olives\n1 fresh jalapeño chile, thinly sliced and seeded",
           directions: "For Cilantro Ranch Dressing, in a blender combine the first 10 ingredients (through sea salt). Cover and blend until smooth. Set aside.\nPreheat oven to 400°F. Line a 15x10-inch baking pan with parchment paper. Pat chickpeas dry with a clean towel. In a bowl toss chickpeas with nutritional yeast and chili powder. Spread chickpeas evenly in prepared pan. Bake 45 minutes or until crisp, stirring every 15 minutes. Remove from oven; cool.\nPlace corn in a colander set in a heatproof bowl. Pour boiling water over corn. Let stand 1 minute; drain and cool. Arrange romaine and spinach on plates. Top with corn and the next five ingredients (through jalapeño). Drizzle with Cilantro Ranch Dressing. Sprinkle with roasted chickpeas. Store leftover Cilantro Ranch Dressing in an airtight container in the refrigerator for up to 3 days.",
           category: "Salad",
           datePublished: "2022-05-15",
           url: "https://www.forksoverknives.com/recipes/vegan-salads-sides/cilantro-ranch-bean-salad/"),
    Recipe(name: "Cranberry-Orange Bread Pudding",
           image:"https://www.forksoverknives.com/wp-content/uploads/fly-images/158756/Cranberry-Orange-Bread-Pudding-wordpress-360x270-c.jpg",
           description:
            "Not sure what to do with that not-so-fresh loaf of bread? Transform it into a succulent, sweet bread pudding! The zesty flavors of orange and cranberry mingle with ginger and cinnamon in this delicious dessert that’s worthy of a Thanksgiving spread. Drizzle a dairy-free orange cream sauce over the top or a dollop of aquafaba whipped cream for an indulgent treat that only uses good-for-you ingredients.",
           ingredients: "1 cup + 1 to 3 tablespoons unsweetened, unflavored plant-based milk\n1 cup + 1 tablespoon orange juice\n½ cup Date Paste\n2 tablespoons flaxseed meal\n2 tablespoons white whole wheat flour\n1½ teaspoons orange zest\n1 teaspoon ground cinnamon\n½ teaspoon ground ginger\n8 oz. whole wheat bread, cut into ¾-inch cubes\n1 cup fresh or frozen cranberries, coarsely chopped\n6 oz. extra-firm light silken tofu\n2 tablespoons pure maple syrup\n½ teaspoon pure vanilla extract\nSea salt, to taste",
           directions: "Preheat oven to 350°F. In a large bowl combine 1 cup plant-based milk, 1 cup orange juice, the date paste, flaxseed meal, flour, 1 teaspoon orange zest, the cinnamon, and ginger. Let rest for 5 minutes. Add bread cubes and cranberries; mix well. Pour into an 8-inch square nonstick or silicone baking pan. Bake 25 to 30 minutes or until the top is golden-brown and firm to the touch. Transfer finished bread pudding to a wire rack; cool for 10 minutes.\nFor Orange Sauce, combine tofu, maple syrup, the remaining ½ teaspoon orange zest, the remaining 1 tablespoon orange juice, the pure vanilla extract, and salt in a blender. Cover and blend until smooth. Add plant-based milk 1 tablespoon at a time, until you reach drizzling consistency. Refrigerate until ready to serve.\nCut pudding into squares and spoon Orange Sauce over warm pudding just before serving.",
           category: "Dessert",
           datePublished: "2021-10-20",
           url: "https://www.forksoverknives.com/recipes/vegan-desserts/cranberry-orange-bread-pudding/")]
}
