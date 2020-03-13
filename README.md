# README

### <b><u> The Problem </u></b>

The powerlifting community is all about inclusion and helping people out. This application aims to provide the community with a place to buy and sell powerlifting goods. The original concept is to narrow it down to novice powerlifters who may not be sure what gear they need or even if they want to continue after their first competition. It has also been narrowed down to used gear, however there is no reason that new, unused gear could not be included. 

### <b><u> Why We Need This App </u></b>

Novice powerlifters aren’t guaranteed that they will have a good coach, or the right advice to get into or stay into the sport. Whether a powerlifter stays in the sport is highly dependant on their initial experience, so providing a marketplace where users can purchase products for cheaper than retail price which could get them to their first competition and into their next prep, while they find out what equipment they do/do not like, and whether they really need a piece of equipment. There is a lot of information out there, but you only find out if you know where to look. 

### <b><u> Market Research </u></b>

The Brisbane powerlifting community were surveyed during the planning stages of the project to provide an understanding if the application would provide a real-world solution for the community. Results showed that more than 80% of powerlifters have sold or given away powerlifting gear to another lifter, and 78% would purchase used gear from another lifter. When asked how they got gear as a novice, all those surveyed received gear through a combination - from purchasing/borrowing gear from a friend and/or purchasing gear brand new from the Australian distributor online. 
<br></br>
In March 2020, a Facebook group "Powerlifting gear; buy, sell & giveaway (Australia)" was created by a Brisbane Powerlifter and within a few days, has more than 250 members and the community has already started posting to the group, looking for specific equipment, and selling/giving away equipment. The initial idea for this application came from the administrator of the facebook page, a powerlifter who has not only received second hand equipment but continues to help out novice lifters by gifting equipment and teaching them the correct use of the equipment. This shouldn't be limited to those who know her, any powerlifter should be able to enter the sport and know they are getting the correct information to succeed in the sport. 

![Facebook Group](/app/assets/images/fbgroup.png)

https://www.facebook.com/groups/860449514383599/

<br>

### <b><u> Github Repository</u></b>
https://github.com/thestrongcoder/marketplace-app

### <b><u> Deployed Website </u></b>

https://platform-strong.herokuapp.com/

### <b><u> Purpose </u></b>

The purpose of the marketplace is to provide a place for all powerlifters, specifically powerlifters new to the sport, to buy and/or sell powerlifting gear at reasonable prices. This allows new powerlifters to get into the sport with the right gear without having to purchase equipment that can be costly upfront when they usually don’t know if they really want to invest into the sport. This is going to be a website which works in with the Global Powerlifting Corporation Australia. 

Not only will the marketplace showcase products, it will also provide information and links to websites and podcasts with insight to the powerlifting world. 

There will be links to powerliftingTV, the company that live streams GPC powerlifting competitions. 

There will also be links to the GPC powerlifting website which lists all official competitions, rule book, records, and registrations for members, coaches, and referees. 

### <b><u> Functionality / Features </u></b>

The main features of this application is to provide a double sided marketplace, allowing users to buy and sell powerlifting specific gear. The user will be able to view, and place an order/purchase an item using stripe payment gateway, and then review the order, linking the user purchasing the item, and the item being purchased. Using the devise gem, users are able to sign up or log in. 

Some added features, allow users to view links to the manufacturers websites so they can view more information. As well as links to media for information about the sport and competitions. 

### <b><u> Sitemap </u></b>

![Sitemap](/app/assets/images/sitemap.png)

### <b><u> Screenshots </u></b>

![About page](/app/assets/images/about-page.png)
![Product List - buyer](/app/assets/images/screenshot-show.png)
![Product List - index](/app/assets/images/screenshot-index.png)
![Product page - seller](/app/assets/images/product-screenshot.png)
![product List - cover](/app/assets/images/product-list-cover.png)
![Login page](/app/assets/images/login.png)
![Sign-up page](/app/assets/images/signup.png)



### <b><u> Target Audience </u></b>

The target audience are powerlifters of all skill levels, from novice to elite athletes. The main target will be novice powerlifters, as this will be a place for people new to the sport to obtain gear that will enable them to perform. Most powerlifters will rotate equipment in line with a competition. After a competition, wraps are usually replaced, this allows new powerlifters to use older gear without needing to fork out a lot of funds prior to knowing if they want to continue in the sport. 

### <b><u> Tech Stack </u></b>

- HTML
- CSS
- Sass
- Ruby on Rails
- Gems
- Postgresql
- PGAdmin
- Javascript
- Github
- Heroku

### <b><u> User Stories </u></b>

![User stories](/app/assets/images/userstories.jpg)


### <b><u> Wireframes </u></b>

![Home page](/app/assets/images/home.png)
![Sign-up page](/app/assets/images/signup-login.png)
![Product List](/app/assets/images/productlist.png)
![Product page](/app/assets/images/productpage.png)
![Add/edit item](/app/assets/images/newitem.png)


### <b><u> ERD </u></b>

![ERD](/app/assets/images/ERD.png)



### <b><u> High-Level Components of Application</u></b>
Explain the different high-level components (abstractions) in your app







### <b><u> Third-party Services</u></b>

Stripe API was used as a third party service to provide a payment to purchases made through the application.
![Stripe API](/app/assets/images/stripeapi.png)


### <b><u> Model and Database Relations - Active Record Associations </u></b>

This project required a number of relationships in order to accurately build what was needed for now and future purposes. Firstly, the product model has a 'has one' relationship with order and picture. It belonged to user, brand, and category models so that the product information was picking up the correct information. The list of products belonged to the product and user models. The order model belonged to the user and product model, so that the information from the order could be viewed on either sides. 


### <b><u> Database Schema Design </u></b>

![Schema](/app/assets/images/thestrongerd.png)


### <b><u> Tracking Tasks </u></b>
Describe the way tasks are allocated and tracked in your project

All tasks were tracked through a trello board. 

![Trello Board](/app/assets/images/trello1.png)
![Trello Board](/app/assets/images/trello2.png)
![Trello User Stories](/app/assets/images/trello-userstories.png)


