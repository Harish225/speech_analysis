# Speech Analysis Group Assignment (Final Project)

[![License](http://img.shields.io/:license-mit-blue.svg)](http://doge.mit-license.org)

Final assignment for Web Architecture and Cloud Computing class at UNM (ECE 495/595) by

* Jayson Grace (jayson.e.grace@gmail.com)
* Amber Rutherford (anhruthe@gmail.com)
* Jeffrey Gordon (jeffreyrgordon@gmail.com)
* Harish Dara (harish225@unm.edu)
* Nicole Kim (nkim0912@salud.unm.edu)
* Meghana Sampelli (meghana.sampelli2811@gmail.com).


## Heroku Site
The heroku site can be found at: https://sheltered-anchorage-4143.herokuapp.com/

## Instructions

Clone the repo:
```bash
git clone https://github.com/l50/speech_analysis.git <name of folder you choose> && cd <name of folder you chose>
```
Set up the database:
```bash
rake db:migrate
```
Create Test Data:
```bash
rake db:seed
```
Run the server:
```bash
rails s
```

## Contributing
Please fork and do a pull request when you've created a feature that you want to be added.

## Todo
#### General:
- [x] Initial meeting with client Amy Neel - Due Nov 5
- [x] Project Management Plan - Due: Nov 10
- [x] Initial Requirements Document - Due: Nov 12
- [x] Gantt Chart - Due: Nov 12
- [x] Initial prototype - Due: Nov 17
- [x] Prototype 2 - Due: Nov 24
- [x] Prototype 3 - Due: Dec 1
- [] Final Presentation - Due: Dec 8-10

#### Jayson:
- [x] Create initial project skeleton
- [x] Fix layout of git repo
- [x] Create basic interface for CRUD operations
- [x] Implement authentication
- [x] Add bootstrap to make interface easier to use
- [x] Create seed data file with existing data provided by client
- [x] Fix flash notices
- [x] Create model validations for Speakers
- [x] Create model validations for Phonemes
- [x] Update Edit User page with bootstrap button
- [x] Ensure instructions for coding side are up-to-date
- [x] Determine way to create new options to add to drop down boxes (ex. state, country, etc.)
- [x] Ensure Speaker is associated with a user
- [x] Ensure Phoneme is associated with a speaker
- [x] Push product to Heroku
- [x] Assist Amber in adding phonemes to seed data 
- [x] Create form for Phonemes
- [x] Stop dropdowns in Speaker from accepting negative numbers
- [x] Implement way to read text file and display to phonemes view
- [x] Add validations and parsing to Phonemes form
- [x] Implement functionality in edit for validations and parsing for Phonemes
- [x] Add ability to instantiate multiple objects of phoneme and submit to db
- [x] Fix edit form to work with new controller code
- [x] Add speaker dropdown back in for new view
- [x] Create custom validations for comma checks on view
- [x] Add ability to instantiate multiple objects of phoneme and submit to db
- [] Remove unnecessary components to project
- [] Ensure no TODO's remain in code comments

#### Amber:
- [x] Help build initial prototype for seed data
- [x] Add ability to instantiate multiple objects of phoneme and submit to db
- [] Presentation

#### Jeffrey:
- [x] Ensure input file is being displayed properly - Due Nov 20 - 21st at the latest
- [x] Ensure aesthetics of page are good
- [x] Create nice page for login/signup - see https://stark-woodland-7238.herokuapp.com/ for contextual example
- [x] Add ability to instantiate multiple objects of phoneme and submit to db

#### Nicole:
- [x] Help subgroups with understanding their roles
- [] Presentation
- [] QA on web application
- [] Create instructions for the students

#### Harish:
- [x] Get UNM logo from Nicole
- [x] Steal UNM favicon
- [x] Supplement Replace Speech App in upper left corner with UNM logo
- [x] Redirect from logo 
- [x] Implement query functionality
- [x] Create query page

#### Future Work (May not be encompassed in assignment):
- [] Ensure only users that client allows can sign up for speech app
- [] Temporary table to allow users to save incomplete submissions for speakers.
