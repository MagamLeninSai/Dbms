insert into candidate_skills values(6,5);


select c.id,first_name,name from candidates c 
   INNER JOIN  candidate_skills s ON c.id=candidate_id
  INNER JOIN  skills sk ON s.skill_id=sk.id  ;
  
SELECT * FROM candidates WHERE last_name LIKE 'Y%';
  
SELECT * FROM candidates ;

SELECT * FROM skills;

CALL get_candidate_skill(133);

SELECT * FROM skills ;
SELECT * from candidate_skills ;
SELECT * FROM candidates;