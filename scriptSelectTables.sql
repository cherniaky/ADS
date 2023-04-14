-- 1
-- vypočíta celkové trvanie každého kurzu súčtom trvania jednotlivých lekcií
CREATE VIEW Course_Duration AS
SELECT
    course_id,
    SUM(duration) as total_duration
FROM
    Lessons
GROUP BY
    course_id;

-- vypočíta priemerné hodnotenie a počet recenzií pre každý kurz na základe údajov z tabuľky Recenzie
CREATE VIEW Course_Rating AS
SELECT
    course_id,
    AVG(rating) as average_rating,
    COUNT(review_id) as review_count
FROM
    Reviews
GROUP BY
    course_id;

-- 2
-- kombinuje rôzne dátové polia týkajúce sa kurzu (názov, opis, trvanie, cena atď.) s údajmi týkajúcimi sa jeho skúšky a in štruktora
CREATE VIEW Course_Details AS
SELECT
    Courses.course_id,
    course_title,
    description,
    duration,
    price,
    status,
    "level",
    "language",
    rating,
    date_created,
    date_updated,
    exam_title,
    exam_description,
    exam_duration,
    passing_score,
    attempts_allowed,
    Instructors.first_name as instructor_first_name,
    Instructors.last_name as instructor_last_name
FROM
    Courses
    JOIN Exams ON Courses.exam_id = Exams.exam_id
    JOIN Instructor_Course ON Courses.course_id = Instructor_Course.course_id
    JOIN Instructors ON Instructor_Course.instructor_id = Instructors.instructor_id;


-- zobrazuje stav zápisu a dátum ukončenia pre každého študenta a kurz, okrem zrušených zápisov
CREATE VIEW Student_Enrollment_Status AS
SELECT
    Students.student_id,
    first_name,
    last_name,
    email,
    Enrollment_Status.status,
    Enrollment_Status.completion_date
FROM
    Students
    LEFT JOIN (
        SELECT
            Enrollments.student_id,
            Enrollments.course_id,
            Enrollments.status,
            Enrollments.completion_date
        FROM
            Enrollments
        WHERE
            Enrollments.status != 'cancelled'
    ) Enrollment_Status ON Students.student_id = Enrollment_Status.student_id;


-- zobrazuje hierarchické vzťahy medzi kurzami a im priradenými kategóriami
CREATE VIEW Course_Category_Hierarchy AS
SELECT
    Courses.course_id,
    course_title,
    Categories.category_id,
    Categories.category_name,
    Categories_2.category_id as parent_category_id,
    Categories_2.category_name as parent_category_name
FROM
    Courses
    JOIN Category_Course ON Courses.course_id = Category_Course.course_id
    JOIN Categories ON Category_Course.category_id = Categories.category_id
    LEFT JOIN Categories Categories_2 ON Categories.parent_category_id = Categories_2.category_id;

-- 3
-- zobrazuje počet zápisov pre každý jazyk v tabuľke Kurzy
CREATE VIEW course_enrollment_count_by_language AS
SELECT
    c."language",
    COUNT(*) enrollment_count
FROM
    courses c
    JOIN enrollments e ON c.course_id = e.course_id
GROUP BY
    c."language";

-- zobrazuje priemerné hodnotenie pre každú úroveň kurzu v tabuľke Kurzy
CREATE VIEW avg_rating_by_course_level AS
SELECT
    c."level",
    ROUND(AVG(r.rating), 2) avg_rating
FROM
    courses c
    LEFT JOIN reviews r ON c.course_id = r.course_id
GROUP BY
    "level";

-- 4
-- spája údaje o študentoch, ktorí ukončili alebo sa zapísali do kurzu.
CREATE VIEW combined_categories AS
SELECT
    s.*
FROM
    Enrollments e
    JOIN Students s ON e.student_id = s.student_id WHERE e.status = 'Completed'
UNION
SELECT
    s.*
FROM
    Enrollments e
    JOIN Students s ON e.student_id = s.student_id WHERE e.status = 'Enrolled';

-- 5
-- zobrazuje 5 najlepších kurzov s najväčším počtom zápisov
CREATE VIEW top_5_courses_enrollments AS
SELECT
    c.course_title,
    enrollment_count
FROM
    courses c
    INNER JOIN (
        SELECT
            course_id,
            COUNT(*) AS enrollment_count
        FROM
            enrollments
        GROUP BY
            course_id
        ORDER BY
            enrollment_count DESC
    ) e ON c.course_id = e.course_id
WHERE
    ROWNUM <= 5;

-- zobrazuje mená in štruktorov, ktorí vyučujú viac ako jeden kurz.
CREATE VIEW instructors_multiple_courses AS
SELECT
    DISTINCT i.first_name,
    i.last_name
FROM
    instructors i
WHERE
    i.instructor_id IN (
        SELECT
            instructor_id
        FROM
            instructor_course
        GROUP BY
            instructor_id
        HAVING
            COUNT(*) > 1
    );

-- 6
CREATE SEQUENCE seq_id START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER tr_insert_id 
BEFORE INSERT ON Courses 
FOR EACH ROW 
BEGIN 
  :NEW.course_id := seq_id.NEXTVAL;
END;

-- 7
CREATE OR REPLACE TRIGGER tr_check_price 
BEFORE UPDATE OF price ON courses 
FOR EACH ROW 
BEGIN 
  IF :NEW.price > 100 THEN 
    DBMS_OUTPUT.PUT_LINE('Warning: The price of this course has been increased to a value greater than 100.');
  END IF;
END;