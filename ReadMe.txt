Deployment Steps:

1) Restore the db in postgres
2) Run the script
3) Do the db configurations in attached db.properties file.
4) In the APIWrapper project, make the build and find the war in target folder. Rename the war to APIWrapper.war
5) Copy the war to the webapps folder in Tomcat
6) Copy the db.properties file in the conf folder of Tomcat.
7) Inside conf folder of Tomcat, add the path in catalina.properties as
   spring.config.databaseInfo=<Location of db.properties file>
8) Go to bin folder,start the tomcat server by startup.bat

9) Hit the url 
http://<server>:<port>/APIWrapper/rest/service/landing

for example:
http://localhost:8082/APIWrapper/rest/service/landing


On interacting with forms on UI, you can see the xml form of data that lies between yesterday and tomorrow, and in the desired sorted form.

Thanks