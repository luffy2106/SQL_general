select item_name, item_type, count(item_name) as item_count
from availableItems
group by item_type, item_name
order by asc item_type, asc item_name;
