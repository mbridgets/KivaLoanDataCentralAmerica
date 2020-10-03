

-- Create tables for raw data to be loaded into
CREATE TABLE kiva_data (
    Loan_ID INT,
    Loan_Name VARCHAR(250),
    Amount_Funded DECIMAL,
    Loan_Amount DECIMAL,
    Loan_Status VARCHAR(250),
    Activity_Name VARCHAR(250),
    Sector_Name VARCHAR(250),
    Country_Name VARCHAR(250),
    Town_Name VARCHAR(250),
    Currency VARCHAR(250),
    Dispursement_Date VARCHAR(250),
    Length_of_Loan DECIMAL,
    Total_Number_of_Lenders INT,
    Borrower_Gender VARCHAR(250),
    Repayment_Interval VARCHAR(250)
);

CREATE TABLE WorldBank_data (
    country_name VARCHAR(250),
    series_name VARCHAR(250),
    yr2011  DECIMAL,
    yr2012 DECIMAL,
    yr2013 DECIMAL,
    yr2014 DECIMAL,
    yr2015 DECIMAL,
    yr2016 DECIMAL,
    yr2017 DECIMAL,
    yr2018 DECIMAL
);


-- Joins tables
SELECT kiva_data.Country_Name, kiva_data.Borrower_Gender
FROM WorldBank_data
JOIN kiva_data
ON kiva_data.Country_Name = WorldBank_data.Country_Name;