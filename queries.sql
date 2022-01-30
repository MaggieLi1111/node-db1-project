-- Database Queries

-- Find all customers with postal code 1010
SELECT PostalCode
from Customers
where PostalCode = "1010"

-- Find the phone number for the supplier with the id 11
SELECT PhoneNumber
from Suppliers
where PhoneId = "11"

-- List first 10 orders placed, sorted descending by the order date
Select *
from Orders
Order By OrderDate desc
limit 10

-- Find all customers that live in London, Madrid, or Brazil
Select *
from Customers
where City = "London" or City = "Madrid" or City = "Brazil" 

-- Add a customer record for "The Shire", the contact name is "Bilbo Baggins" the address is -"1 Hobbit-Hole" in "Bag End", postal code "111" and the country is "Middle Earth"
insert into Customers(ContactName, CustomerName, Address, City, PostalCode, Country)
values ("The shire", "Bilbo Baggins", "1 Hobbit-Hole", "Big End", "111", "Middle Earth")

-- Update Bilbo Baggins record so that the postal code changes to "11122"
Update Customers
Set PostalCode = "11122"
Where CustomerID = 92;

-- (Stretch) Find a query to discover how many different cities are stored in the Customers table. Repeats should not be double counted

-- (Stretch) Find all suppliers who have names longer than 20 characters. You can use `length(SupplierName)` to get the length of the name
