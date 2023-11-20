SELECT name, COUNT (visit_date) AS count_of_visits
FROM person_visits INNER JOIN person ON person.id = person_id
GROUP BY name HAVING COUNT (visit_date) > 3;