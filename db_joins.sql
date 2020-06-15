SELECT team.name, player.role, wizard.lastname, wizard.firstname 
FROM `player` INNER JOIN `wizard` ON player.id = wizard.id
INNER JOIN `team` ON player.team_id = team.id
Order BY team.name, player.role, wizard.lastname, wizard.firstname; 

SELECT wizard.lastname, wizard.firstname, player.enrollment_date
FROM `player` INNER JOIN `wizard` ON player.id = wizard.id
WHERE player.role = 'seeker' ORDER BY wizard.lastname, wizard.firstname;

SELECT wizard.lastname, wizard.firstname
FROM `player` INNER JOIN `wizard` ON player.id = wizard.id
WHERE player.enrollment_date = '' ORDER BY wizard.lastname, wizard.firstname
