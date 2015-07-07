
URL : http://52.25.235.219/openFDA/

Technical Approach – Development Prototype


1.	Introduction
2.	Background Study
3.	Objectives
4.	Data Research & Collection Approach
5.	Design Approach
6.	Development Approach



1.	Introduction
  About Cascades Technologies, inc. (CTi)
    Team CTi Leader, Cascades Technologies, inc. (CTi), is a Capability Maturity Model Integration (CMMI) Level 3 Appraised, Hispanic-Owned Small Disadvantaged Business (SDB) government contractor and we support USCIS FADS project with agile development teams that interact and communicate with other organizational functions such as Process and Practices, Architecture and Design, Continuous Integration and Continuous Delivery, Testing, QA and Training Development.
Our approach was to use the data available in the API provided by FDA to create interactive graphical data representations which would potentially unearth useful information which is hidden in the dataset.

2.	Background Study

    The background study involved analysing the following datasets and explores the wide-range of available data using various API methods and search conditions.
    •	Adverse events data. FDA’s publicly available drug adverse event and medication error reports, and medical device            adverse event reports.
    •	Recalls data. Enforcement report data, containing information gathered from public notices about certain recalls of          FDA-regulated products.
    •	Labeling data. Structured Product Labeling (SPL) data for FDA-regulated human prescription drug, OTC drug and                biological product labeling.

3.	Data Research & Collection Approach

    We made calls to the openFDA API and collected the data relevant to Drugs, Medical Devices and Foods based on the various search conditions. The API returns results in JSON format. Our approach was to convert the resultant JSON data into our desired data format. Currently we stored all the data into Microsoft Excel 2003 and used it for generating the graphs.
We created various types of search conditions and made calls to the dataset and collected the data. Based on the collected data we created our end point dataset to generate the graphs.
Each and every search has one or more endpoints, which serve unique data about various Adverse Events, Labelling and Enforcement Reports for Drugs, Medical Devices and Foods. Every time we created a unique query and called the API to collect data about a particular item which could potentially demonstrate a new pattern in the data.

4.	Objectives

    •	To create a dashboard based on the existing public data in openFDA to create meaningful visualizations. This would in        turn help FDA and other stakeholders to create awareness and improve public health.
    •	To create an easy access to the open data in FDA and generate the results based on user queries.

5.	Design Approach

    All stakeholders were involved in a brainstorming session where we discussed the data in detail and zeroed in on the variety of visualizations that we wanted to showcase and the data we wanted to depict. Once we were all in agreement about what we wanted to chart, we came up with the idea of a Dashboard like interface where the user can see the rich variety of visualizations in a Grid like layout. We then provided our designer with a hand drawn image of how we exactly wanted the end result to be. The designer then enhanced our idea, added more details and delivered a neat design template using GIMP, which was then passed on to the devteam.

6.	Development Approach

    For development we decided to generate various graphs based on the above design using the OpenFDA dataset and Chart.js API. We chose the LAMP stack to create a secure web application Dashboard using the MVC pattern. There are a ton of open source MVC frameworks available for PHP, we chose Symfony due to our familiarity with it, its enterprise level qualities and its ability to fuel a rapid pace of development. At the client side we use Knockout.js which follows the MVVM pattern. The data is sent in JSON format from the server to the client and is bound to Chart.js using Knockout.js. We formatted & aggregated the data we collected from the API and persisted it in a MySQL Server Database. We then used the application to visualize various scenarios pertaining to Adverse Events, Enforcement Reports for Drugs, Medical Devices and Foods.
We created the following charts using various data points such as gender, drug classes, indication reported reaction, types of events etc. 
1.	Enforcement Reports for Drugs vs Medical Devices vs Foods Year 2012 – 2015.
2.	Medical Device Usage Report Based on Year 2010-2014.
3.	Adverse Events for Drugs Indication from Year 2006-2010.
4.	Adverse Events Reports for Drugs Reported Reaction from 2006 - 2010.

