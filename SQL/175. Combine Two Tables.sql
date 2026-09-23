/*
Problem:
Combine the Person and Address tables and report the first name, last name, city, and state of each person. 
If a person does not have an address, their city and state should be NULL.

Approach:
Use a LEFT JOIN between Person and Address using personId.

Why LEFT JOIN?
LEFT JOIN keeps all records from the Person table, even when
there is no matching record in the Address table.

Key:
personId is the common key used to join both tables.

Time Complexity:
O(n + m)

Space Complexity:
O(n + m)
*/

SELECT p.firstName, p.lastName, a.city, a.state
FROM Person p
LEFT JOIN Address a
ON p.personId = a.personId;
