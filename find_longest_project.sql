SELECT
    p.ID AS PROJECT_ID,
    DATEDIFF(p.FINISH_DATE, p.START_DATE) / 30 AS MONTH_COUNT
FROM
    project p
WHERE
    DATEDIFF(p.FINISH_DATE, p.START_DATE) / 30 = (
        SELECT
            MAX(DATEDIFF(FINISH_DATE, START_DATE) / 30)
        FROM
            project
    );