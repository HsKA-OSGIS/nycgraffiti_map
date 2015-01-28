# nycgraffiti_map
Repository for OpenSource project NYC Graffiti Map, WS 2014-2015, January 2015, HsKA.

# What is it?
The NYC Graffiti map has been developed by two passionate students from the Geomatics department of the Hochschule Karlsruhe Technik und Wirstchaft. It was designed as an educational tool to be used by students and educators that can learn/teach about demographics, spatial correlation and data interpretation using a subject that most pupils raised in an urban environment have first-hand experiences with.

# Licensing
Please see the file called 'License'.

# Authors
    Alex Boie - boal1013@hs-karlsruhe.de
    Cristina Balmus - bacr1012@hs-karlsruhe.de

#Data and data sources
All datasets used in this project were derived from the following sources:

    - After school programs - NYC Open Data - public domain
    - 2010 census tracts - NYC Open Data - public domain
    - NYC borough boundaries - NYC Open Data - public domain
    - OSM Basemap - OpenStreetMap Tile Server - ODbl
    - DSNY Graffiti data - NYC Open Data - public domain
    - 2012 ACS 5 year estimates - US Census Bureau - public domain:
        - Poverty status in the past 12 months
        - Income in the past 12 months.
    
*ACS - American Community Survey

#Software Used
    - GeoServer version 2.5 or later
    - pgAdmin III version 1.18.2 or later

Note: If you are using OSGeo-Live, these programs come pre-installed.

#External Libraries requiring internet access or local copy:
    - d3.js – http://d3js.org/d3.v3.min.js
    - OpenLayers 3 – http://ol3js.org/en/master/build/ol.js
    - OpenLayers 3  css  - http://ol3js.org/en/master/css/ol.css

#Data Structure:
    Data: Contains all spatial data for this project.
    Index: Contains the files and references for the webpage. 
    Styles: Contains '.sld' files to style the spatial data.

#Installation Steps:
1.	Create a new database in pgAdmin.
2.	Restore the dspace3.backup folder to the new database you created.
3.	In GeoServer create a new workspace and two data stores. One data store should be for PostGIS format and the second should be GeoTiff format.
4.	In your new workspace, add the 8 '.sld' files from the styles folder. Use the file name to name the style for clarity of distinction. Copy and paste the contents of each file and save the new styles.
5.	Publish the 6 vector layers in the pgAdmin database to the PostGIS formatted GeoServer data store. The Declared SRSs are EPSG:2263 (NAD83 / New York Long Island (ftUS)) for every layer. Apply the correlated style to each layer.
6.	Publish the Heatmap4.tif to the GeoTiff formatted GeoServer data store. The Declared SRS is EPSG:2263 (NAD83 / New York Long Island (ftUS)). Apply the heat map style to this layer.
7.	Take the contents of the Index folder and place them where you want the webpage to be located.  Make sure you can access GeoGerver and pgAdmin from this location. 
8.	In the index.html, update lines of code 250,261,272,283,294,305,316 with the location of your GeoServer.
9.	Update lines of code 252,263,274,285,296,307,318 with the names of your layers in GeoServer.

Note: The NYC Graffiti map was developed using OSGeo-Live in VirtualBox. The position of elements was set for a high resolution projector in VirtualBox. You may experience alignment errors on lower resolution monitors or in browsers outside of the VirtualBox environment. 
