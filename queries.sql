

-- Create tables for raw data to be loaded into
CREATE TABLE kiva_data (
    Loan_ID INT,
    Loan_Name VARCHAR(250),
    Amount_Funded DECIMAL(5,2),
    Loan_Amount DECIMAL(5,2),
    Loan_Status VARCHAR(250),
    Activity_Name VARCHAR(250),
    Sector_Name VARCHAR(250),
    Country_Name VARCHAR(250),
    Town_Name VARCHAR(250),
    Currency VARCHAR(250),
    Dispursement_Date DATETIME NOT NULL,
    Length_of_Loan DECIMAL(5,2),
    Total_Number_of_Lenders INT,
    Borrower_Gender VARCHAR(250),
    Repayment_Interval VARCHAR(250)
);

CREATE TABLE WorldBank_data (
    Country_Name VARCHAR(250),
    Series Name VARCHAR(250),
    2011  DECIMAL(15,3),
    2012 DECIMAL(15,3),
    2013 DECIMAL(15,3),
    2014 DECIMAL(15,3),
    2015 DECIMAL(15,3),
    2016 DECIMAL(15,3),
    2017 DECIMAL(15,3),
    2018 DECIMAL(15,3)
);


-- Joins tables
SELECT kiva_data.Country_Name, kiva_data.Borrower_Gender
FROM WorldBank_data
JOIN kiva_data
ON kiva_data.Country_Name = WorldBank_data.Country_Name;
