# nycgraffiti_map
Repository for OpenSource project NYC Graffiti Map


# What is it?
The NYC Graffiti map has been developed by two passionate students from the Geomatics department of the Hochschule Karlsruhe Technik und Wirstchaft. It was designed as an educational tool to be used by students and educators that can learn/teach about demographics, spatial correlation and data interpretation using a subject that most pupils raised in an urban environment have first-hand experiences with.

# Licensing
Please see the file called License.

# Authors
Alex Boie,
Cristina Balmus

#Programs Used
GeoServer version 2.5 or later

pgAdmin III version 1.18.2 or later

If you are using OSGeo-Live, these programs come pre-installed.

#External Libraries requiring internet access or local copy:
d3.js – http://d3js.org/d3.v3.min.js

Open Layers 3 – http://ol3js.org/en/master/build/ol.js

Open Layers 3  css  - http://ol3js.org/en/master/css/ol.css


#Data Structure:
Data: Contains all spatial data for this project.

Index: Contains the files and references for the webpage.

Styles: Contains .sld files to style the spatial data.

#Installation Steps:
1.	Create a new database in pgAdmin.
2.	Restore the dspace3.backup folder to the new database you created.
3.	In GeoServer create a new workspace and two data stores. One data store should be for PostGIS format and the second should be GeoTiff format.
4.	In your new workspace, add the 8 .sld files from the styles folder. Use the file name to name the style for clarity of distinction. Copy and paste the contents of each file and save the new styles.
5.	Publish the 6 vector layers in the pgAdmin database to the PostGIS formatted GeoServer data store. The Declared SRSs are EPSG:2263 for every layer. Apply the correlated style to each layer.
6.	Publish the Heatmap4.tif to the GeoTiff formatted GeoServer data store. The Declared SRS is EPSG:2263. Apply the heat map style to this layer.
7.	Take the contents of the Index folder and place them where you want the webpage to be located.  Make sure you can access GeoGerver and pgAdmin from this location. 
8.	In the index.html, update lines 254,267,279,292,305,317,329 with the location of your GeoServer.
9.	Update lines 256,269,281,294,307,319,331 with the names of your layers in GeoServer.

Note: The web map was developed using OSGeo-Live in VirtualBox. The position of elements was set for a high resolution projector in VirtualBox. you may expierence alignment errors on lower resolution monitors or in browsers outside of VirtualBox environment. 
