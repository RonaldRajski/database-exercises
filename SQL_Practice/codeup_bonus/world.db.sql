USE world;

# What languages are spoken in Santa Monica?

SELECT Language, Percentage
FROM countrylanguage
JOIN city USING(CountryCode)
WHERE city.Name = 'Santa Monica'
ORDER BY Percentage ASC AND Language DESC;

# What languages are spoken in Chicago?

SELECT Language, Percentage
    FROM countrylanguage
        JOIN city USING (CountryCode)
        WHERE city.Name = 'Chicago'
        ORDER BY Percentage ASC;



# How many different countries are in each region?

SELECT Region, count(Region) as num_countries
from country
Group By Region
Order by num_countries asc;

# What is the population for each region?

SELECT region, sum(population) as population
FROM country
GROUP BY region
ORDER BY population DESC;

# What is the population for each continent?

SELECT continent, sum(population) as population
FROM country
GROUP BY continent
ORDER BY population DESC;

# What is the average life expectancy globally?
SELECT AVG(LifeExpectancy)
from country;

# What is the avergae life expectancy for each region and each continent

SELECT Continent, avg((LifeExpectancy) as life_expec)




