### Coder Academy FTB-18-02 Rails Assignment (A2-1)

# MealBuddies
 *a web app developed by **Anhar Athoi** and **Luke Stainlay***


---

The project documentation been compiled in this `README.md` as well as the responses to the submission deliverables.

All files linked by this `README.md` have been included in a folder named `docs` as part of the submission.

---


## Contents

[Short Answer Questions](#short-answer-questions)

[Deliverables](#deliverables)


---

##  Short Answer Questions


### **What is the need (i.e. challenge) that you will be addressing in your project?**

The need for fresh, wholesome, affordable meals that are convenient, delicious, and easy without requiring any culinary skill and can be made in only a few minutes.

---
 ### **Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?**


Many people do not have the time to spend regularly preparing and cooking meals, yet the desire to eat tasty, healthy, and affordable meals is ever increasing. 

There exists a growing number of experienced cooks that are opting out of the heavy demands of the hospitality industry, yet have the time, skill, knowledge and passion for cooking. 

---
### **Describe the project you will be conducting and how your App will address the needs.**

MealBuddies provides the online platform that connects cooks with busy families, culinary novices, or anyone who enjoys affordable and wholesome food.

**Case study:**

**Jane** was a head chef at a busy innercity restaurant for 10 years until she found the late shifts and long hours became incompatible with her lifestyle. Now she runs a local cafe which opens for lunch Wed-Sun. On Mondays and Tuesdays it is not profitable for the cafe to open due to low turnover. To help cover costs, Jane utilises the Mondays and Tuesdays to make meals that she sells on MealBuddies.

**David** is a busy father of three children under the age of 5 and works full-time. He doesn't enjoy cooking but has taken on the responsibilty of preparing meals at his home to ease the pressure on his wife and newborn son. He finds it challenging to prepare meals with limited time and often reverts to unhealthy take-away meals.

David discovered MealBuddies and saw the range of meals that Jane had to offer. He placed an two orders; 1 x paleo lasagne, and 1 x chicken with ginger, lemon and honey on couscous. He picked them up that same afernoon on his way home from work. When he got home he put the dish chicken in the oven and 25 minutes later there was wholesome, delicious meal for the whole family to enjoy.



---
### **Describe the network infrastructure the App may be based on.**


The network infrustructure uses a PUMA server and PostgreSQL database hosted on Heroku and AWS.



---
### **Identify and describe the software to be used in your App.**

The software used is Ruby, Ruby on Rails, CSS and HTML.


---
### **Identify the database to be used in your App and provide a justification for your choice.**


The database used in the app is PostgreSQL. The reason we chose it is because:
- it's open-source,
-  we were already familiar with it,
-  it is recommended by Heroku
-  it enforces datatypes (will throw an error if discrepancy)
-  it supports unique IDs as primary keys in railsm, and
-  it can be programed inside of Ruby.

___
### **Identify and describe the production database setup (i.e. postgres instance).**

The app uses three models in Rails that connect the app to the PostgreSQL database. These are meal, order and user. The controller in Rails directs the model to access the respective Postgres table of data. Having accessed the data, the controller then applies this to the view of the appropriate web page.

---
### **Describe the architecture of your App.**

The app uses the MVC architecture pattern, whereby:
- the model enables access and modification to the data held on the database,
- the view is the output representaion of the data that has been accessed, and
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

The two-sided market place in any environment shares similar characteristics. Most notable of these is the ability for a user to be a buyer and a seller. In terms of data structures a matrix of 'buyers' or 'sellers' is inefficient and problematic. Instead, an item or house (or in the case of MealBuddies, a meal) is linked to the user data via a foreign key.

---
### **Discuss the database relations to be implemented.**


Our database consists of three key tables; a Users table, a Meals table, and an Orders table.

A user creates a meal and inputs the data associated with that meal (via the view) into the Meals table. The user that created this meal is linked using a foreign key.

When a meal is ordered, data is added to the Orders table which is linked to the Users table and Meals table via foreign key.

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


![MealBuddies schema design (jpg)](docs/meal-buddies-db-design.jpg)

---
### **Provide User stories for your App.**

- "As a user who cooks I want to be able to sell meals"
- "As a user who eats I want to be able to buy meals"
- "As a user who eats I want to to be able to see what is available nearby"
- "As a user who cooks I want to be able to see the meals that I have on offer and edit them"
- "As a user I want to be able to edit my account details"

---
### **Provide Wireframes for your App.**

![MealBuddies Wireframe (jpg)](docs/meal-buddies-wireframe.jpg)

---
### **Describe the way tasks are allocated and tracked in your project.**

Trello is used to allocate the main tasks and a running "to do" list is kept on Google Docs for simpler tasks.

Each time a task is completed Trello is updated and/or the item is marked off the list. Each time a task is thought of it is added to the list and if it is significant it is added to Trello.

At the start of each day we discuss where we are up to in the project and what we want to achieve for the day and for the next task.

At the end of each day we discuss what we achieved and where we want to start tomorrow.

Screen shots and other resources were shared in a Google drive.

---
### **Discuss how Agile methodology is being implemented in your project.**

As a team of two it naturally suited the use of agile methodology. Each morning we would discuss where the project is up to and what needed to be achieved in the next 24hrs. Any issues or foreseeable bottlenecks would be raised and discussed.

---
### **Provide an overview and description of your source control process.**

Using git we were able to create branches to work on specific aspects of the app. Once completed we could commit and merge into the master and then push to the forked repository. We then created a pull request to the original repository which was then merged.

When required we pulled the updated version from the origin or upstream.

---
### **Provide an overview and description of your testing process.**

Our testing process was continuous as each task was completed. Our app was deployed at least each day of the project to make it easier to identify any issues.

Our testing process involved the use of the faker gem that allowed us to test external data.

When we were close to completion we also had other students use the app to create mock scenarios and sought their feedback.

---
### **Discuss and analyse requirements related to information system security.**

Security requirements of information systems are often reffered to as the information security triad: Confidentiality, Integrity, and Availability (CIA)

Confidentiality involves protecting information by restricting access to only those who are allowed to see it. Conversely, it also requires denying access to anyone who is not auhorised to see it.

Integrity is the certainty that the data being accessed has not been modified or manipulated. The information needs to be reliable and consistent as intended. If it becomes compromised the information can become untrustworthy and useless. This may be through intentional and malicious activity or accidental by a user with access to the information.

Information availability refers to the timely access of the information. It is not usually the case that all users require access to the informtion all the time. By allowing the information to be available only when required it can decrease the risk exposure of that information being misused.


---
### **Discuss methods you will use to protect information and data.**


- The devise gem restricts access to create, update, and delete methods via the `application_controller` to only users that are signed in. 

- Users are also restricted by the `MealController` in that they can only update the meals where they were the `current_user` at the time they were created. 
  
- Users of the app are further restricted by a private method in the `MealsController` so the only data that can be submitted is controlled by the app:
  
```Ruby
private
  def meal_params
    result = params.require(:meal).permit(:title, :description, :price, :available_from, :available_until, :quantity, :image)
    result[:price] = result[:price].to_f * 100.0
    result
  end
```

- Additionally, the database is held securely on the Heroku server and the key does not form part of the deployed code.


---
### **Research what your legal obligations are in relation to handling user data.**

If our annual turnover exceeds $3 million then we must conform to the Privact Act 1988. At this time we would be required to protect personal information from theft, misuse, interference, loss, unauthorised access, modification and disclosure.

This involves adoption of the 13 Australian Privacy Principles:


**1 — Open and transparent management of personal information**

Ensures that APP entities manage personal information in an open and transparent way. This includes having a clearly expressed and up to date APP privacy policy.

**2 — Anonymity and pseudonymity**

Requires APP entities to give individuals the option of not identifying themselves, or of using a pseudonym. Limited exceptions apply.

**3 — Collection of solicited personal information**

Outlines when an APP entity can collect personal information that is solicited. It applies higher standards to the collection of ‘sensitive’ information.

**4 — Dealing with unsolicited personal information**

Outlines how APP entities must deal with unsolicited personal information.

**5 — Notification of the collection of personal information**

Outlines when and in what circumstances an APP entity that collects personal information must notify an individual of certain matters.

**6 — Use or disclosure of personal information**

Outlines the circumstances in which an APP entity may use or disclose personal information that it holds.

**7 — Direct marketing**

An organisation may only use or disclose personal information for direct marketing purposes if certain conditions are met.

**8 — Cross-border disclosure of personal information**

Outlines the steps an APP entity must take to protect personal information before it is disclosed overseas.

**9 — Adoption, use or disclosure of government related identifiers**

Outlines the limited circumstances when an organisation may adopt a government related identifier of an individual as its own identifier, or use or disclose a government related identifier of an individual.

**10 — Quality of personal information**

An APP entity must take reasonable steps to ensure the personal information it collects is accurate, up to date and complete. An entity must also take reasonable steps to ensure the personal information it uses or discloses is accurate, up to date, complete and relevant, having regard to the purpose of the use or disclosure.

**11 — Security of personal information**

An APP entity must take reasonable steps to protect personal information it holds from misuse, interference and loss, and from unauthorised access, modification or disclosure. An entity has obligations to destroy or de-identify personal information in certain circumstances.

**12 — Access to personal information**

Outlines an APP entity’s obligations when an individual requests to be given access to personal information held about them by the entity. This includes a requirement to provide access unless a specific exception applies.

**13 — Correction of personal information**

Outlines an APP entity’s obligations in relation to correcting the personal information it holds about individuals.


---
---
---
Back to:

- [Top](#MealBuddies)
- [Contents](#contents)
- [Short Answer Questions](#short-answer-questions)

---
---
---

##  Deliverables


>   A link (URL) to your published App

Link to the web app on Heroku:    
[MealBuddies](https://young-depths-91758.herokuapp.com/)

To sign up, please use one of the following email addresses:
mealbuddy01@gmail.com

mealbuddy02@gmail.com

To find out why [click here](#Configuration)

---
>   A link to your GitHub repository

[Anhar's GitHub Repo](https://github.com/anharathoi/mealbuddy)

[Luke's GitHub Repo](https://github.com/lukestainlay/mealbuddy)

---
>   Description of your project
 
This market to market web application is a collaboration between Anhar Athoi and Luke Stainlay that connects people that are unable to cook with meals made by other people who have the skils, time and passion to cook.

 ---
>   Problem definition / purpose
 
Many people do not have the time to spend regularly preparing and cooking meals, yet the desire to eat tasty, healthy, and affordable meals is ever increasing. 

There also exists a growing number of experienced cooks that are opting out of the heavy demands of the hospitality industry, but still the have time, skill, knowledge and passion for cooking. 

---
>   Functionality / features

The app features meals that have been created by all users. This can easily be narrowed using the search features, either by location or by meal.

Once a meal is seleceted, any signed up user can purchase the meal with credit card details. An email will be sent the users and the total number of meals now available is updated accordingly.

A creator of a meal can upload an image of the meal and set their own price for each meal. Once created they can also update it.

Only signed in users can create and puchase meals. Once signed in, users are able to update their personal details.

---
>   Screenshots

Screenshots of the app:

![MealBuddies 1](docs/mealbuddies-1.png)
![MealBuddies 2](docs/mealbuddies-2.png)
![MealBuddies 3](docs/mealbuddies-3.png)
![MealBuddies 4](docs/mealbuddies-4.png)



---
>   Tech stack (e.g. html, css, deployment platform, etc)

The software used is Ruby, Ruby on Rails, CSS, HTML.

The app is deployed on Heroku with images being stored on AWS.

---
#### Configuration
>   Instructions on how to setup, configure and use your App.

The app launches from a web browser. No configuration is required. It has been designed so that it's intuitive to use so no instructions are required. The only limitation is that in the production version(in Heroku) the app sends error on sign up and upon payment if the email address has not been added in the verified email list of Mailgun. This is a limitation of the free Mailgun service and can be overcome with the paid version. For the purpose of testing the app the following email addresses can be used:

mealbuddy01@gmail.com

mealbuddy02@gmail.com

You can also use the following details to login and test all the other features:

mealbuddy03@gmail.com, password:123456

---

>   Design process
 
The design process began with clearly defining the objective of the app. This involved a brainstrom, creating user stories, discussion, and white boarding.

We then mapped out the functionality of the app and translated this to a basic wireframe in figma. Once finalised we began coding.

---

>   User stories

- "As a user who cooks I want to be able to sell meals"
- "As a user who eats I want to be able to buy meals"
- "As a user who eats I want to to be able to see what is available nearby"
- "As a user who cooks I want to be able to see the meals that I have on offer and edit them"
- "As a user I want to be able to edit my account details"
 
 ---
 
>   Wireframes

![MealBuddies Wireframe (jpg)](docs/meal-buddies-wireframe.jpg)

---
 
>   Database Entity Relationship Diagrams

![MealBuddies schema design (jpg)](docs/meal-buddies-db-design.jpg)

---

>   Project plan & timeline

The planning and timeframe for this project has been documented here ->
[Planning and Project Schedule (pdf)](docs/planning-and-project-schedule.pdf)
 

---

>   Screenshots of Trello board(s)

Daily Trello board screen shots were taken:

![Trello 1](docs/trello-1.png)
![Trello 2](docs/trello-2.png)
![Trello 3](docs/trello-3.png)
![Trello 4](docs/trello-4.png)
![Trello 5](docs/trello-5.png)
![Trello 6](docs/trello-6.png)
![Trello 7](docs/trello-7.png)
![Trello 8](docs/trello-8.png)
![Trello 9](docs/trello-9.png)
![Trello 10](docs/trello-10.png)
![Trello 11](docs/trello-11.png)


---

>   Answers to the Short Answer questions (Section 2.2)

[As above](#short-answer-questions)

>   Evidence of Communication

Outside of daily meetings and check-ins, slack was the main communication tool.

![Slack 1](docs/slack-1.png)
![Slack 2](docs/slack-2.png)




---
---
---
Back to:


- [Top](#MealBuddies)
- [Contents](#contents)
- [Short Answer Questions](#short-answer-questions)
- [Deliverables](#deliverables)
