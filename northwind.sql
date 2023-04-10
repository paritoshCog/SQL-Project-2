-- Show the ProductName, CompanyName, CategoryName from the products, suppliers, and categories table

select products.product_name, suppliers.company_name, categories.category_name from categories
join products on categories.category_id = products.category_id
join suppliers on products.supplier_id = suppliers.supplier_id

--Show the category_name and the average product unit price for each category rounded to 2 decimal places.

select categories.category_name, round(avg(products.unit_price),2) from categories
join
	products on categories.category_id = products.category_id 
group by
	categories.category_name
  
  
-- Show the city, company_name, contact_name from the customers and suppliers table merged together.
-- Create a column which contains 'customers' or 'suppliers' depending on the table it came from.

