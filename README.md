### Coder Academy FTB-18-02 Rails Assignment (A2-1)

# MealBuddies
 *a web app developed by **Anhar Athoi** and **Luke Stainlay***


---

<p> The project documentation been compiled in this README.md  as well as the responses to the submission deliverables.</p>

<p> All files linked by this README.md have been included in a folder named doc as part of the submission.</p>

[All resources included in this folder must be in either png, jpeg, pdf, or markdown format]
[need to add mealbuddies link]
[need to add screenshots]
[need to add db schema design]

---
>   A link (URL) to your published App
    
[MealBuddies](https://LinkToHerokuDeployVersion)

---
>   A link to your GitHub repository

[Anhar's GitHub Repo](https://github.com/anharathoi/mealbuddy)

[Luke's GitHub Repo](https://github.com/lukestainlay/mealbuddy)

---
>   Description of your project
 
This web application is a collaboration between Anhar Athoi and Luke Stainlay that connects people that are unable to cook with meals made by other people who have the skils, time and passion to cook.

 ---
>   Problem definition / purpose
 




>   Functionality / features
 
>   Screenshots
 
>   Tech stack (e.g. html, css, deployment platform, etc)
 
>   Instructions on how to setup, configure and use your App.
 
>   Design documentation including,
 
>   Design process
 
>   User stories
 
>   A workflow diagram of the user journey/s.
 
>   Wireframes
 
>   Database Entity Relationship Diagrams
 
>   Details of planning process including,
 
>   Project plan & timeline
 
>   Screenshots of Trello board(s)
 
>   Answers to the Short Answer questions (Section 2.2)


##  2.2 Requirements - Short Answer Questions


### **What is the need (i.e. challenge) that you will be addressing in your project?**

The need for fresh, wholesome and affordable meals that can are convenient, delicious and easy without requiring any culinary skill.

---
 ### **Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?**


Many people to not have the time to spend regularly preparing and cooking meals, yet the desire to eat tasty, healthy, and affordable meals is ever increasing. 

There also exists a growing number of experienced cooks that are opting out of the heavy demands of the hospitality industry, yet have time, skill, knowledge and passion for cooking. 

---
### **Describe the project you will be conducting and how your App will address the needs.**

MealBuddies provides the online platform that connects cooks with busy families, culinary novices, or anyone who enjoys affordable and wholesome food.

**Case study 1:**
Jane was a head chef at a busy innercity restaurant for 10 years until she found the late shifts and long hours became incompatible with her lifestyle. Now she runs a local cafe which opens for lunch only Wed-Sun. On Mondays and Tuesdays it is not profitable for the cafe to open due to low foot traffic in the area. To help cover costs, Jane utilises the Mondays and Tuesdays to make meals that she sells on MealBuddies.com.

David is a busy father of three children under the age of 5 and works full-time. He doesn't enjoy cooking but has taken on the responsibilty of preparing meals at his home to ease the pressure on his wife and newborn son. He finds it challenging to prepare meals with limited time and often reverts to unhealthy take-away meals.

David discovered MealBuddies, saw the range of meals that Jane had to offer and placed an order of paleo lasagne and chickek with ginger, lemon and honey on couscous and picked it up that same afernoon. He put the dish chicken in the oven and 25 minutes later there was a nutricious meal for the whole family to enjoy.



---
### **Describe the network infrastructure the App may be based on.**


The network infrustructure uses a WEBrick server and PostgreSQL database hosted on Heroku and AWS.



---
### **Identify and describe the software to be used in your App.**

The software used is Ruby, Ruby on Rails, CSS, HTML


---
### **Identify the database to be used in your App and provide a justification for your choice.**


The database used in the app is PostgreSQL.

The reason we chose that database is because it's open-source, we were already familiar with it, and it is recommended by Heroku. It also enforces datatypes (will throw an error if discrepancy), supports unique IDs as primary keys in rails, and can be programed inside of Ruby.

___
### **Identify and describe the production database setup (i.e. postgres instance).**

The app uses three models in Rails that connect the app to the PostgreSQL database. These are meal, order and user. The controller in Rails directs the model to access the respective Postgres table of data. Have accessed the data, the controller then applies this to the view of the appropriate web page.

---
### **Describe the architecture of your App.**

The app uses the MVC architecture pattern, whereby:
- the model enables access and modification to the data held on the database;
- the view is the output representaion of the data that has been accessed; and,
- the controller reacts to the user input and directs the model or view as appropriate.
---
### **Explain the different high-level components (abstractions) in your App.**

- The app is written in Ruby which is a high-level programming language
- The app uses gems sush as devise, geocoder and stripe which are abstractions of Ruby
- Rails itself is essentially a Ruby gem that enables the Ruby language to be used to build web applications
- ActiveRecord provides object relational mapping to the postgres database


---


### **Detail any third party services that your App will use.**

The app uses Heroku to deploy and store data. Images are stored in AWS.


___
### **Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).**

The double sided market place in any environment shares similar characteristics. Most notable of these is the ability for a user to be a buyer and a seller. In terms of data structures a matrix of 'buyers' or 'sellers' is inefficient and problematic. Instead, an item or house (or in the case of MealBuddies, a meal)is linked to the user data via a foreign key.

---
### **Discuss the database relations to be implemented.**


Our database consists of three key tables; a Users table, a Meals table, and an Orders table.

A user creates a meal and inputs the data associated with that meal (via the view) into the Meals table. The user that created this meal is linked using a foreign key.

When a meal is ordered, data is added to the Orders table which is linked to the Users table and Meal table via foreign key.

___
### **Describe your project’s models in terms of the relationships (active record associations) they have with each other.**

- A user has_many meals
- A user has_many orders
- A meal belongs_to user
- A meal has_many orders
- An order belongs_to user
- An order belongs_to meal

---
### **Provide your database schema design.**


[need db schema]

---
### *Provide User stories for your App.*

[need user stories]

---
### *Provide Wireframes for your App.*

[need wireframes]

---
### *Describe the way tasks are allocated and tracked in your project.*

Trello is used to allocate the main tasks and a running "to do" list is kept on Google Docs for simpler tasks.

Each time a task is completed Trello is updated and/or the item is marked off the list. Each time a task is thought of it is added to the list and if it is significant it is added to Trello.

At the start of each day we discuss where we are up to in the project and what we want to achieve for the day and for the next task.

At the end of each day we discuss what we achieved and where we want to start tomorrow.

---
### **Discuss how Agile methodology is being implemented in your project.**

As a team of two it naturally suited the use of agile methodology. Each morning we would discuss where the project is up to and what needed to be achieved in the next 24hrs. Any issues or foreseeable bottlenecks would be raised and discussed.

---
### *Provide an overview and description of your Source control process.*

Using git...

---
### **Provide an overview and description of your Testing process.**

Our testing process was continuous as each task was completed. Our app was deployed at least each day of the project to make it easier to identify any issues.

Our testing process involved the use of the faker gem that allowed us to test external data.

When we were close to completion we also had other students use the app to create mock scenarios and sought their feedback.

---
### **Discuss and analyse requirements related to information system security.**


---
### **Discuss methods you will use to protect information and data.**


---
### **Research what your legal obligations are in relation to handling user data.**()



---
---
---