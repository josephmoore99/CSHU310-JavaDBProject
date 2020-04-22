CREATE TABLE Item(
ID int AUTO_INCREMENT,
ItemCode varchar(10) NOT NULL UNIQUE,
ItemDescription varchar(50),
Price decimal(4,2) DEFAULT 0,
PRIMARY KEY(ID)
);

CREATE TABLE Purchase( 
ID int AUTO_INCREMENT, 
ItemID int NOT NULL, 
Quantity int NOT NULL, 
PurchaseDate datetime DEFAULT CURRENT_TIMESTAMP, 
PRIMARY KEY (ID),
FOREIGN KEY (ItemID) REFERENCES Item(ID) 
);

CREATE TABLE Shipment ( 
ID INT AUTO_INCREMENT, 
ItemID INT NOT NULL, 
Quantity INT NOT NULL, 
ShipmentDate date DEFAULT (CURRENT_DATE), 
PRIMARY KEY (ID), 
FOREIGN KEY (ItemID) REFERENCES Item(ID) 
);