USE cosmiccakes;

CREATE VIEW Order_Items_View AS

-- this is a query to list order_items, which staff member is preparing them and what is the status

SELECT staff.Staff_Name, staff.Staff_Position,  order_item.Item_Qty, staff_makes_order_item.staff_makes_order_status, cake_type.CakeName, size_shape.Shape,size_shape.Size,ItemID

FROM staff
INNER JOIN staff_makes_order_item
ON staff.StaffID = staff_makes_order_item.staff_StaffID 

INNER JOIN order_item
ON staff_makes_order_item.order_item_ItemID = order_item.ItemID

INNER JOIN cake_type
ON order_item.cake_type_CakeID = cake_type.CakeID

INNER JOIN size_shape
ON cake_type.SizeShapeID = size_shape.SizeShapeID;

CREATE VIEW Order_Items_baking_View AS

-- This query looks to list those order item that are in the baking process only

SELECT staff.Staff_Name, staff.Staff_Position,  order_item.Item_Qty, staff_makes_order_item.staff_makes_order_status, cake_type.CakeName, size_shape.Shape,size_shape.Size

FROM staff
INNER JOIN staff_makes_order_item
ON staff.StaffID = staff_makes_order_item.staff_StaffID AND staff_makes_order_item.staff_makes_order_status = 'Baking'

INNER JOIN order_item
ON staff_makes_order_item.order_item_ItemID = order_item.ItemID

INNER JOIN cake_type
ON order_item.cake_type_CakeID = cake_type.CakeID

INNER JOIN size_shape
ON cake_type.SizeShapeID = size_shape.SizeShapeID;

CREATE VIEW customer_with_orders_view AS

-- This query is listing customers with orders

SELECT customer.Customer_Name, customer.Customer_Phone, order_table.Order_Date, order_table.Payment_Status, order_table.OrderID

FROM customer
INNER JOIN order_table
ON customer.CustomerID = order_table.customer_CustomerID;

CREATE VIEW customer_orders_with_items_view AS

-- in this query we join all records from two existing views to show orders with items which are being made

SELECT *
FROM customer_with_orders_view
INNER JOIN order_item_has_order_table
ON customer_with_orders_view.OrderID = order_table_OrderID

INNER JOIN Order_Items_View
ON Order_Items_View.ItemID = order_item_has_order_table.order_item_ItemID;