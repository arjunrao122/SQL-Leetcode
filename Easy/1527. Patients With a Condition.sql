

select patient_id, patient_name, conditions 
from patients
where concat(' ',conditions) like '% DIAB1%';
