FROM maven:amazoncorretto
WORKDIR /app 
RUN mvn clean install 
COPY . .   
EXPOSE 9090
CMD ["java", "-war", "/app/target/*.war"]
