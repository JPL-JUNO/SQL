-- Active: 1691027669001@@127.0.0.1@3306@bank

SELECT
    custr_nbr,
    COALESCE(cifname, "missing") as cifname,
    COALESCE(cred_limit, "missing") as cred_limit,
    -- COALESCE(age, "missing"),
    CASE
        WHEN educa <> '' THEN CONCAT("C", educa)
        else "missing"
    END AS educa,
    -- CASE
    --     WHEN day_birth != "" THEN CONCAT("C", day_birth)
    --     ELSE 'missing'
    -- END
    CASE
        WHEN mar_status <> "" THEN CONCAT("C", mar_status)
        ELSE "missing"
    END as mar_status,
    COALESCE(yr_in_comp, -1) as yr_in_comp,
    COALESCE(income_ann, -1) as income_ann,
    CASE
        WHEN occu_desc <> "" THEN CONCAT("C", occu_desc)
        ELSE "missing"
    END as occu_desc,
    CASE
        WHEN occ_catgry <> "" THEN CONCAT("C", occ_catgry)
        ELSE "missing"
    END as occ_catgry,
    CASE
        WHEN occu_type <> "" THEN CONCAT("C", occu_type)
        ELSE "missing"
    END as occ_type
FROM custr_newest;

SELECT COALESCE(NULL, CONCAT("c",'B'));