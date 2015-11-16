# Speech Analysis Group Assignment (Final Project)

[![License](http://img.shields.io/:license-mit-blue.svg)](http://doge.mit-license.org)

Final assignment for Web Architecture and Cloud Computing class at UNM (ECE 495/595) by

* Jayson Grace (jayson.e.grace@gmail.com)
* Amber Rutherford (anhruthe@gmail.com)
* Jeffrey Gordon (jeffreyrgordon@gmail.com)
* Harish Dara (harish225@unm.edu)
* Nicole Kim (nkim0912@salud.unm.edu)
* Meghana Sampelli (meghana.sampelli2811@gmail.com).

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
- [] Prototype 2 - Due: Nov 24
- [] Prototype 3 - Due: Dec 1
- [] Final Presentation - Due: Dec 8-10

#### For assignment:
- [] Get UNM logo
- [] Supplement Replace Speech App in upper left corner with UNM logo
- [] Ensure Speaker is associated with a user
- [] Ensure Phoneme is associated with a user
- [] Create instructions for the students
- [] Spec tests for ruby code
- [] Spec tests for Javascript code
- [] Implement concept of administrative account
- [] Remove unnecessary components to project
- [] Ensure no TODO's remain in code comments
- [] Steal UNM favicon
- [] Create nice page for login/signup - see https://stark-woodland-7238.herokuapp.com/ for contextual example

#### Jayson:
- [x] Create initial project skeleton
- [x] Fix layout of git repo
- [x] Create basic interface for CRUD operations
- [x] Implement authentication
- [x] Add bootstrap to make interface easier to use
- [x] Create seed data file with existing data provided by client
- [x] Fix flash notices
- [] Create model validations for Speakers
- [] Create model validations for Phonemes
- [x] Update Edit User page with bootstrap button
- [] Get queries from client
- [] Implement logic to separate views for different users
- [] Push product to Heroku
- [] Determine way to create new options to add to drop down boxes (ex. state, country, etc.)
- [x] Ensure instructions for coding side are up-to-date

#### Amber:
- [] Create interface for inputting Phoneme Data - Due Nov 20 - 21st at the latest
- [] Ensure input file is being displayed properly - Due Nov 20 - 21st at the latest
- [] Grab Phoneme image and display - Due Nov 20 - 21st at the latest
- [] Display table for phoneme translations - Due Nov 20 - 21st at the latest

#### Jeffrey:
- [] Create interface for inputting Phoneme Data - Due Nov 20 - 21st at the latest
- [] Ensure input file is being displayed properly - Due Nov 20 - 21st at the latest
- [] Grab Phoneme image and display - Due Nov 20 - 21st at the latest
- [] Display table for phoneme translations - Due Nov 20 - 21st at the latest

#### Harish:
- [] Determine way to create new options to add to drop down boxes (ex. state, country, etc.)

#### Nicole:
- [] Determine way to create new options to add to drop down boxes (ex. state, country, etc.)
- [] Ensure aesthetics of page are good

#### Meghana:
- [] Bug search

#### Future Work (May not be encompassed in assignment):
- [] Ensure only users that client allows can sign up for speech app
- [] Temporary table to allow users to save incomplete submissions for speakers.
