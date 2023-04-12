(SELECT pizzeria.name, COUNT (visit_date) AS count, 'visit' AS action_type
FROM person_visits INNER JOIN pizzeria ON pizzeria_id = pizzeria.id
GROUP BY pizzeria.name  ORDER BY  2 DESC LIMIT 3)
UNION ALL
(SELECT pizzeria.name, COUNT (order_date) AS count, 'order' AS action_type
FROM person_order INNER JOIN menu ON menu.id = menu_id
INNER JOIN pizzeria ON pizzeria_id = pizzeria.id
GROUP BY pizzeria.name ORDER BY  2 DESC LIMIT 3)
ORDER BY action_type ASC, count DESC;