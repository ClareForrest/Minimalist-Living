# Q.7 Identification of the *problem* you are trying to solve by building this particular marketplace 

As an Apartment Enthusiast, I enjoy my compact apartment, but I also want to maintain the aesthetic integrity of minimalism whilst preserving the everyday functionality of a home.

My experience of living in a small apartment approximately 80m2 and also trying to follow a minimalist lifestyle has lead me to identify a gap in the market for everyday household items that have multiple purposes/functions and that are able to be packed away or that are different in design and shape to best work within a small space. 



# Q.8  Why is it a *problem* that needs solving?

Despite thousands of people living in apartments in and around the CBD, I have found that there are very few products that visually enhance a small space, and are both aesthetic and functional. Those that can be found are not all in one online location and take hours of time and energy to source.

My app - Minimalist Apartment Living - aims to solve this problem by bringing together a community of like-minded apartment enthusiasts. Through my app, users will be able to post any problems they've encountered in sourcing products or effectively utilising the small spaces they have and also to draw on the collective experience and enthusiasm for solving these challenges through the solutions section. 

It will allow for users to search the site to check if others have a similar challenge and also to list any challenges they're facing, with users able to view solutions related to a specific problem. These solutions will have the option include links to websites for items that the solution provider has sourced their own solution from, and a photo of a solution item they wish to sell should the user not require it anymore. The third option for users suggesting solutions is the ability to upload an instructional PDF document detailing DIY instructions for solutions the user may have created themselves. 

The **Target Audience** for my application is those living in the CBD / home under 80m^2. This is who the app will best cater to, however access will not be restricted to those meeting the above criteria and anyone can share their challenges and solutions in living a minimalist lifestyle. 



# Q. 9 A link (URL) to your deployed *app* 

Please find a link to my [Minimalist Apartment Living site here](https://minimalist-apartment-living.herokuapp.com/)



# Q.10 A link to your GitHub repository (repo).

Please find a link to my [Github here](https://github.com/ClareForrest/minliving)



# Q.11 Description of your marketplace *app*:

**Purpose:** The purpose of my application is to create a two-sided marketplace in which to share collective experience and enthusiasm from "a group of like-minded apartment enthusiasts" in following a minimalist home decor and lifestyle - to collate knowlege and items together in one convenient location. 

**Functionality / Features:** My app has features such as scrolling for overflow text, a home/landing page to direct users to sign in or sign up and it will feature a blog page that anyone can access. Other key features are the ability to purchase items/instructional PDFs and a search function to search the site for problems that may be similar to the one the current user faces.  "To collate knowledge and items together in one convenient location" is the main objective of the application.

To achieve the above features of my app, I have implemented the following functionality: 

- Authentication: Registered users can search and post problems and solutions and in future development will be able to read the blog. While non-registered users will be limited to the blog page. 

- Authorisation: Only the owner of a problem or solution post is able to edit or delete that post. In future development, an Admin account will be created whereby the site administrator will also be able to edit/delete all posts. 
- Search Functionality: I have implemented a search form for the site to search for categories that problems are listed under. 
- Image/Document attachment: I have implemented ActiveStorage and S3 for images and the PDF instructional documents to be attached. This meets the criteria for a two-sided marketplace and allows further sharing of knowledge and resources. 
- Payment: Stripe has also been implemented to enable transactions. Future development will allow users to create their own accounts for direct payments. 



**Sitemap:** Here is an image of my sitemap.![sitemap](/Users/clareforrest/Desktop/Assignments/CLAREFORREST_T2A2/docs/sitemap.png)



**Screenshots:** I have also included some screenshots to show examples of the above mentioned features.

- Devise Authentication: ![devise authentication](/Users/clareforrest/Desktop/Assignments/CLAREFORREST_T2A2/docs/devise authentication.png)

- Stripe: ![Stripe](/Users/clareforrest/Desktop/Assignments/CLAREFORREST_T2A2/docs/stripe implimentation.png)

  

- Rails Routes:

   ![rails routes](/Users/clareforrest/Desktop/Assignments/CLAREFORREST_T2A2/docs/rails routes.png)



**Target audience:** My target audience is specifically those living in the CBD / home under 80m^2 and it is these users the site best caters for, however anyone can access and utilise. 

**Tech stack:** My tech stack is comprised of the below;

- Ruby
- Ruby on Rails
- html
- scss
- Heroku
- Trello
- Balsamiq



# Q.12 User stories for your *app*

User stories have been used to drive development of the application. These stories have been created around the target audience - an apartment enthusiast who follows a minimalist lifestyle. 

Their stories are below;

***Users can post a problem:*** As an apartment enthusiast with a focus on minimalism, I struggle to find appropriate solutions to problems that I face. What I want to be able to do, is to describe my problem and find a solution for it. 

Users can post a solution: As an apartment enthusiast, I am excited to share my minimalist solutions to everyday living with others. 

***Users can search for a problem:*** As an apartment enthusiast in the CBD, I want to be out enjoying all the city has to offer, not trawling through online blogs and forums and store websites to find things to suit my minimalist and functional lifestyle. I want to be able to look for specific things all in one place. 

***User can sell solutions (actual item or PDF DIY instructions):*** Often, sourcing a solution has taken hours of research and effort or I have created a DIY solution myself. This means I'm quite invested in the product and should I not require it anymore, I would like to offer it to another apartment enthusiast to save them the same time and hassle and also to re-coup some of the money I have spent as often specialist solutions are more expensive due to their unique nature. 

**Future Development:**

***User can comment on solutions and problems:*** As an apartment enthusiast with a focus on minimalism, I have often tried several products and solutions in an attempt to find the best outcome. I also like to provide feedback on solutions that I have tried. I don't want to reinvent the wheel, just add a few spokes here and there. 

***User can receive notifications of solutions:*** As an apartment enthusiast who loves eating parmas and drinking lattes all around the city, I want to be able to continue doing this without constantly checking to see if someone has any ideas for my problem. I want to be able to receive notification via email of any solutions posted on my problems post. 

***All parties can read blogs:*** As a minimalist, apartment enthusiast and general web-surfer, I want to be able to read articles/blogs that meet my interests. I don't want to have to sign up to something - I just want to consume and move on. 



# Q.13 Wireframes for your *app*

Please find a link to my wireframes [here](https://drive.google.com/drive/folders/1TSrjuqP_UZ-xLm_Hyg-BlF6ybe_ofM_A)

I have also included the PDF versions in my docs directory



# Q. 14 An ERD for your *app*

My initial ERD is here, there is also a more extensive one at question 19.

 ![attached](/Users/clareforrest/Desktop/Assignments/CLAREFORREST_T2A2/docs/MinLiving ERD.png)



# Q.15 Explain the different high-level components (abstractions) in your *app*

The definition of abstraction is the consideration of something, independent of its attributes. In Rails specifically, this means that there are numerous methods available for developers to use, without the requirement of knowing specifically how they work - just that they do and what context to use them in. 

Abstraction in Rails is provided via inheritance. This means that objects can inherit, or have attributes passed on to them so that they don't need to be created with each instance of an object. This removes the onus from the programmer to correctly configure attributes and methods as the configuration has already been created with methods and made available through inheritance. Rails has single inheritance, however all classes inherit from either ActionController::Base, or ActiveRecord::Base which in turn, inherit from the Object class. Through these two classes, programmers are able to access all the required methods for a functioning application that is quick to set up and easy to design thanks to the removal of configuration requirements. 

Some Rails components that demonstrate abstraction are; params, redirect_to and render. These are provided from ActionController::Base and are used extensively in my application. 

`params` are an object that acts similarly to a hash in how the objects are accessed - with the `[: ]` notation. Params are one of the key components of my appliction. They allow the user to interact with the website and pass in information. The user can access or send data to my site three different ways, all using params;  query parameters, submitting a form or by typing directly in the URL. Params are an example of abstraction as essentially they allow the user to write to the database, but without the requirement to know or utilise Structured Query Language (SQL) directly. 

`redirect_to` is another example of abstraction in Rails. This function acts as the name implies, it redirects the user to a specified route. The configuration of this function is hidden behind the simple name and programmers don't need to know how this is configured, just how it works (what it does) and when to use it. I have used this function multiple times throughout my program to enhance the control flow of the app. 

`render` is also an abstracted function, that is similar to `redirect_to` in what it does and again, I have used this within my appliction. 

Other components within my app that are examples of abstraction are ActiveRecord::Base methods. 

Some common methods such as `.save`, `.new` and `.find` are utilised within my application and are provided through inheritance. Programmers don't have to set up these methods, they are present in all created classes. 

`.save` and `.find` are both SQL in disguise. `.save` inserts data into the database and `.find` queries the database before returning the query results. I have used `.new` and `.save` in conjunction with `params` to store user data within the database and utilise the `.find` method to return user results to them. 

One other example of abstraction within my application is the functionality of Rails itself. Rails has been designed to utilise Object Relational Mapping (ORM) in combination with the Model Views Controller (MVC) framework to provide the links between each other. This has been configured using specific naming conventions, however the actual inner workings of the framework are abstracted away and as long as the programmer follows the convention, the methods will work. 

[Reference](https://medium.com/@autumnmartin.dev/ruby-rails-and-the-4-principles-of-oop-7836a54074e6)

[Reference](https://www.rubyguides.com/2019/06/rails-params/)

[Reference](https://guides.rubyonrails.org/action_controller_overview.html)



# Q.16 Detail any third party services that your *app* will use

In my application I have implemented three third party services to further enhance functionality and user experience. These are Stripe, Heroku and AWS with S3.

**Stripe:** Stripe is multi-application software that at its core, facilitates fast and secure payments. It follows regulatory and best practise requirements and enables individuals through to small start ups and large companies to complete online monetary transactions. 

Within my application, Stripe allows the user to purchase an instructional PDF or an item that another user is selling. Ultimately each user will be able to set up their own account through stripe (removing the need for separate, non-tracked payments through other third party services) to make and receive payments. 

Stripe has extensive documenation and support and also includes the ability to configure webhooks to provide immediate and correct transaction feedback which further enhances the security of such payments and will give confidence to the users of my app. 

**Heroku:** Heroku is a platform service designed to facilitate deploying and running apps. 

I chose to deploy my app on heroku because as as well as it being designed specifically for programmers, it also offers start-up and student-friendly services. This means that I can enjoy the benefits of a professional site with excellent support and documentation on a scalable plan. 

**AWS and S3:** AWS or Amazon Web Services is a cloud based storage services that has multiple offerings by way of services. One of their services is S3 which is an object storage service within AWS. 

I opted to use S3 for my image and document storage instead of solely within the application as AWS is secure and using this third party app will reduce the load on my app in storing, accessing and retrieving images and documents. This will increase the speed and ability of my app and enable it to scale up easily in terms of user numbers and objects being stored. 

[Reference](https://stripe.com/en-au)

[Reference](https://dashboard.heroku.com/)

[Reference](https://aws.amazon.com/s3/)



# Q.17  Describe your projects *models* in terms of the relationships (active record associations) they have with each other

Within my application, I have utilised associations - methods used for creating relationships between tables/models. These associations are created using Primary and Foreign Keys and type of relationship is defined using the following methods: `belongs_to`, `has_one`, `has_many` `has_many :through`, `has_one :through`, `has_and_belongs_to_many`.

There are also other methods such as `has_one_attached` that can be used in furthering model relationships.

Within my application I have the following models; User, Problems,  Solutions with future development to include a separate model for attachments (currently attachments are attributes within the model), Blog and Comments.

The methods mentioned above are used to describe the relationships, or associations between models and different combinations imply a different relationship. 

The relationship types are;

-  One-to-one. This is defined with one model `belongs_to` another, with the corresponding model having the `has_one` method assigned. 
- One-to-many: To define this relationship, one model has `belongs_to` while the corresponding model specifies `has_many`.  
- Many-to-many: This association is seen with the use of `has_many` and `has_many` `:through`
- Polymorphic. This association uses the above methods of `belongs_to` and `has_many` but can be used on multiple models where a model is related to more than one other model. 

I implemented one-to-many relationships within my application. This is the same as my original plan and the proposed future developments will also be a one-to-many association. 

The database relataions are further explained in question 18. 

[Reference](https://guides.rubyonrails.org/association_basics.html)



# Q.18 Discuss the database relations to be implemented in your application

**Database Relations:** I have implemented one-to-many relationships within my application. 

**I have provided a ERD below** (question 19) to visually explain the relationships within my application and will reference the ERD here. 

**Entities:** I have the following entities - User, Problems and Solutions. Each entity (referred to within my application as a Model) has a unique identifier column - typically an ID - and other columns with the attributes of the model. Each entry to the database is stored on a new row and can be queried by referencing any of the attributes. To create the associations between tables, Primary Keys (PK) and Foreign Keys (FK) are used. With each association the table that `belongs_to` another, holds an additional attribute of the FK, which is typically the model name followed by `_id`. 

The one-to-many relationships within my database are; 

- User has_many Problems
- Problems belong_to User
- User has_many Solutions
- Solutions belong_to User
- Problems has_many Solutions
- Solutions belong_to (one) Problem

As can be seen in the below ERD, the User table has a primary key of ID. Since the Problem table `belongs_to` the User table (ie, all problems must be attached to a user), the Problem table also holds the FK attribute of `user_id`.

Another example is the Solution table `belongs_to` the Problem table and therefore must have the FK of `problem_id` as one of its attributes.  

Future Development will also include:

- Problem has_many Comments
- Comment belongs_to (one) Problem
- Solution has_many Comments
- Comment belongs_to (one) Solution

**Entities Purpose:** Each entity I have chosen is critical for the functioning of my app. 

Users allow me to implement authorisation and authentication of my app and promote accountability by users for their posts. 

Having separate Problem and Solution entities allows the search and display functions to be accurate and advise the user what they are seeing. 

**Attributes:** As seen below, each entity has different attributes with each having an id by default. 

User has email and password. 

Problems has title, body, category and a FK of user_id. It also has an optional FK for image.

Solutions also has title and body, a FK of problem_id, with an additional price attribute and optional FK for image and document.

**Attributes Purpose:** Without an email and password, I would not be able to enforce authentication or authorisation in my app. 

Without a title and body for Problems and Solutions, the information will not be able to be effectively displayed or created. 

Without a price and option to upload and image and/or document, users would not know what they are purchasing or how much it is. 



# Q.19 Provide your database schema design

Please find an image of my database schema design ![here](/Users/clareforrest/Desktop/Assignments/CLAREFORREST_T2A2/docs/draw.io erd.png)



# Q. 20 Describe the way tasks are allocated and tracked in your project

**Tasks allocation and tracking:**

To track tasks within my project, I employed a management app called trello.com. Trello allows me to create tasks for the entirity of my project and to then allocate those tasks into lists - grouped according to their status - and to then be able to mark as completed once the task has been fulfilled without the need to delete the project history. This gives me a good visual sense of my progress. 

**Task Management:**

To manage each task, I used a variety of the options available in Trello. 

**Lists:** I used Lists to group my tasks according to their completion status. I created four lists - 'If time permits...', 'To Do', 'Working On' and 'Completed'. All cards started out in the 'If time permits...' list and those that met the minimum viable product (MVP) criteria were then moved to 'To Do'. Each day, different cards were moved from 'To Do', to 'Working On' and then either back to 'To Do' or to 'Completed' dependent on their completion status.  

Having tasks grouped under their appropriate heading meant I could specify my focus for the day while still having all tasks in one central location. Having a 'Completed' list also allows me to keep track of the project's history. 

**Cards:** I created multiple individual cards, each with the task itself as the heading. Within the cards I entered an overview into the description section of what needed to be done so that I could keep the headings short and succinct. Other options within the cards that I used are labels, checklist and due date.

**Checklist:** For most tasks, I added in a checklist with specific instructions or actions to be completed in order to achieve the overall task. 

**Labels:** Labels are able to be color-coded for easy identification and grouping, as well as be named to further clarify the group each task falls under. 

**Due Date:** Due date was also implemented on time sensitive tasks as this provided a visual reminder for tasks. This enabled me to prioritise and complete some tasks before others as required. ie. Gems need to be installed before they can be used and Users need to be set up before they can access stripe etc 

**Task Completion Challenges:**  

Tasks that I got stuck on were often the last item in my checklist. For example, I completed all the tasks within User Solutions in one instance except implementing AWS and S3. This required further research and assistance before this final task could be completed. 

Another example was the creation of the ERD. This took more time than I had anticipated and was initially a challenge to understand.

**Roadblocks:**

Some of the roadblocks I identified in the daily standups were; the ERD, heroku, search functionality, bootstrap and stripe. 

Heroku: Having not used this platform before I am not familiar with how it works and when there were deviations from the instructions, this caused some delays in the deployment due to further instructions and help being required. 

Searching: Implementing this functionality became a roadblock due to the examples not matching and the differences needing to be explained/researched further. 

Bootstrap: Again, not having used this prior to this assignment becoming familiar with how to implement the code in order to achieve the desired outcome was a challenge that delayed my design progress. 

Stripe: This software program was completely new to me and there are several ways to implement its functionality into an application. A roadblock occured when trying to implement this with the javascript which I've not studied yet and as the examples weren't an exact match, any deviation from the example required further study and support. 