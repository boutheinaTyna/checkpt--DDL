------------------------------     Data definition language Checkpoint      --------------------------
-- Creating Product table
CREATE TABLE Product(
    Product_id VARCHAR2(20) CONSTRAINT pk_prdct PRIMARY KEY,
    Product_Name VARCHAR2(20) CONSTRAINT notnull_prdct NOT NULL,
    Price NUMBER CHECK(Price>0)
);

-- Creating Customer table
CREATE TABLE Customer(
    Customer_id VARCHAR2(20) CONSTRAINT pk_customer PRIMARY KEY,
    Customer_Name VARCHAR2(20)  CONSTRAINT notnull_customer NOT NULL,
    Customer_tel NUMBER 
);

-- Creating Orders table
CREATE TABLE Orders (
    Quantity NUMBER,
    Total_amount NUMBER,
    CONSTRAINT fk_customer FOREIGN KEY (Custumer_id) REFERENCES Customer(Costumer_id),
    CONSTRAINT fk_prdct FOREIGN KEY (Product_id) REFERENCES Product(Product_id),
);

-- Adding the Category column to the PRODUCT table
ALTER TABLE Product ADD Category VARCHAR2(20);

-- Adding the OrderDate column to the Orders table with a default value "SYSDATE"
ALTER TABLE Orders ADD OrderDate DATE DEFAULT SYSDATE;