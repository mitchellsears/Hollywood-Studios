# A: pulling the average rottentomatoes score from the lead studio disney 
SELECT leadstudio, avg(RottenTomatoes)
FROM hollywood
WHERE leadstudio = 'disney'

# B: pulling lead studio fox difference in profitability by subtracting the most and least profitable movie
SELECT leadstudio, max(profitability) - min(profitability) as profitability
FROM Hollywood
WHERE leadstudio = 'fox'

# C: pulling and unduplicated list of all leads studios that made comedy movies
SELECT distinct leadstudio, genre
FROM Hollywood
WHERE genre = 'comedy'

# D: Pulling total lead studios that have produced at least one movie. 
SELECT count(distinct LeadStudio)
FROM Hollywood

# E: Pulling the lead studio that has produced the most movies
SELECT LeadStudio, count(film)
FROM hollywood
GROUP BY LeadStudio 
ORDER BY count(film) desc
Limit 1
