CREATE DATABASE if not exists lab_mysql;
USE lab_mysql;

CREATE TABLE if not exists Cars (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(255) NOT NULL,
    Manufacturer VARCHAR(255) NOT NULL,
    Model VARCHAR(255) NOT NULL,
    Year INT NOT NULL,
    Color VARCHAR(255) NOT NULL
);

CREATE TABLE if not exists Customers (
    ID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Phone_number VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    City VARCHAR(255) NOT NULL,
    State_Province VARCHAR(255) NOT NULL,
    Country VARCHAR(255) NOT NULL,
    Zip_Postal_code VARCHAR(255) NOT NULL
);

CREATE TABLE if not exists Salespersons (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Staff_ID INT NOT NULL,
    Name VARCHAR(255) NOT NULL,
    Store VARCHAR(255) NOT NULL
);

CREATE TABLE if not exists Invoices (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Invoice_number INT NOT NULL,
    Date DATE NOT NULL,
    Car INT NOT NULL,
    Customer INT NOT NULL,
    Salesperson INT NOT NULL,
    FOREIGN KEY (Car) REFERENCES Cars(ID),
    FOREIGN KEY (Customer) REFERENCES Customers(ID),
    FOREIGN KEY (Salesperson) REFERENCES Salespersons(ID)
);

-- Challenge 3 - Seeding the Database --
use lab_mysql;

INSERT INTO cars (ID, VIN, Manufacturer, Model, Year, Color)
VALUES (0, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
(1, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red');


INSERT INTO Customers (ID, Name, Phone_number, Email, Address, City, State_Province, Country, Zip_Postal_code)
VALUES (0, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
       (1, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
       (2, 'Napoleon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

INSERT INTO Salespersons (ID, Staff_ID, Name, Store)
VALUES (0, 00001, 'Petey Cruiser', 'Madrid'),
       (1, 00002, 'Anna Sthesia', 'Barcelona'),
       (2, 00003, 'Paul Molive', 'Berlin'),
       (3, 00004, 'Gail Forcewind', 'Paris'),
       (4, 00005, 'Paige Turner', 'Mimia'),
       (5, 00006, 'Bob Frapples', 'Mexico City'),
       (6, 00007, 'Walter Melon', 'Amsterdam'),
       (7, 00008, 'Shonda Leer', 'São Paulo');
       
INSERT INTO Invoices (ID, Invoice_number, Date, Car, Customer, Salesperson)
VALUES (10, 852399038, '22-08-2018', 0, 1, 3),
       (20, 731166526, '31-12-2018', 3, 0, 5),
       (30, 271135104, '22-01-2019', 2, 2, 7);

SELECT * FROM Invoices;