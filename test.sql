SELECT *
FROM tl_medical_lo
WHERE ST_Distance(geom, ST_Transform(ST_SetSRID(ST_MakePoint('128.604125' ,'35.866774'), '4326'), '5179')) <= 100
ORDER BY ST_Distance(geom, ST_SetSRID(ST_MakePoint('128.604125' ,'35.866774'), 5179))