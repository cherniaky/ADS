INSERT INTO Exams (exam_id, exam_title, exam_description, exam_duration, passing_score, attempts_allowed)
VALUES (1, 'Java Certification Exam', 'Test your Java programming skills', 120, 80, 3);
INSERT INTO Exams (exam_id, exam_title, exam_description, exam_duration, passing_score, attempts_allowed)
VALUES (2, 'Python Certification Exam', 'Test your Python programming skills', 90, 75, 2);
INSERT INTO Exams (exam_id, exam_title, exam_description, exam_duration, passing_score, attempts_allowed)
VALUES (3, 'Web Development Certification Exam', 'Test your web development skills', 180, 85, 4);
INSERT INTO Exams (exam_id, exam_title, exam_description, exam_duration, passing_score, attempts_allowed)
VALUES (4, 'Data Science Certification Exam', 'Test your data science skills', 150, 70, 3);
INSERT INTO Exams (exam_id, exam_title, exam_description, exam_duration, passing_score, attempts_allowed)
VALUES (5, 'Android Development Certification Exam', 'Test your Android app development skills', 120, 80, 3);
INSERT INTO Exams (exam_id, exam_title, exam_description, exam_duration, passing_score, attempts_allowed)
VALUES (6, 'iOS Development Certification Exam', 'Test your iOS app development skills', 120, 80, 3);
INSERT INTO Exams (exam_id, exam_title, exam_description, exam_duration, passing_score, attempts_allowed)
VALUES (7, 'JavaScript Certification Exam', 'Test your JavaScript programming skills', 90, 75, 2);
INSERT INTO Exams (exam_id, exam_title, exam_description, exam_duration, passing_score, attempts_allowed)
VALUES (8, 'Node.js Certification Exam', 'Test your Node.js programming skills', 120, 80, 3);
INSERT INTO Exams (exam_id, exam_title, exam_description, exam_duration, passing_score, attempts_allowed)
VALUES (9, 'Machine Learning Certification Exam', 'Test your machine learning skills', 180, 85, 4);
INSERT INTO Exams (exam_id, exam_title, exam_description, exam_duration, passing_score, attempts_allowed)
VALUES (10, 'Project Management Certification Exam', 'Test your project management skills', 90, 75, 2);

INSERT INTO Courses (course_id, course_title, description, duration, price, status, "level", "language", rating, date_created, date_updated, exam_id)
VALUES (1, 'Introduction to Programming', 'Learn the basics of programming', 30, 99, 'Active', 'Beginner', 'EN', 4.5, TO_DATE('2021-01-01', 'YYYY-MM-DD'), TO_DATE('2022-01-01', 'YYYY-MM-DD'), 1);
INSERT INTO Courses (course_id, course_title, description, duration, price, status, "level", "language", rating, date_created, date_updated, exam_id)
VALUES (2, 'Web Development Bootcamp', 'Become a full-stack web developer', 90, 299, 'Active', 'Intermediate', 'EN', 4.8, TO_DATE('2021-02-01', 'YYYY-MM-DD'), TO_DATE('2022-02-01', 'YYYY-MM-DD'), 2);
INSERT INTO Courses (course_id, course_title, description, duration, price, status, "level", "language", rating, date_created, date_updated, exam_id)
VALUES (3, 'Data Science Fundamentals', 'Learn data analysis and visualization', 60, 199, 'Active', 'Intermediate', 'EN', 4.3, TO_DATE('2021-03-01', 'YYYY-MM-DD'), TO_DATE('2022-03-01', 'YYYY-MM-DD'), 3);
INSERT INTO Courses (course_id, course_title, description, duration, price, status, "level", "language", rating, date_created, date_updated, exam_id)
VALUES (4, 'Introduction to Machine Learning', 'Learn the basics of machine learning', 45, 149, 'Active', 'Intermediate', 'EN', 4.6, TO_DATE('2021-04-01', 'YYYY-MM-DD'), TO_DATE('2022-04-01', 'YYYY-MM-DD'), 4);
INSERT INTO Courses (course_id, course_title, description, duration, price, status, "level", "language", rating, date_created, date_updated, exam_id)
VALUES (5, 'Python for Beginners', 'Learn the basics of Python programming language', 20, 49, 'Active', 'Beginner', 'EN', 4.2, TO_DATE('2021-05-01', 'YYYY-MM-DD'), TO_DATE('2022-05-01', 'YYYY-MM-DD'), NULL);
INSERT INTO Courses (course_id, course_title, description, duration, price, status, "level", "language", rating, date_created, date_updated, exam_id)
VALUES (6, 'Advanced Python Programming', 'Learn advanced Python programming techniques', 45, 99, 'Active', 'Advanced', 'EN', 4.7, TO_DATE('2021-06-01', 'YYYY-MM-DD'), TO_DATE('2022-06-01', 'YYYY-MM-DD'), NULL);
INSERT INTO Courses (course_id, course_title, description, duration, price, status, "level", "language", rating, date_created, date_updated, exam_id)
VALUES (7, 'Java Programming for Beginners', 'Learn the basics of Java programming language', 25, 69, 'Active', 'Beginner', 'EN', 4.1, TO_DATE('2021-07-01', 'YYYY-MM-DD'), TO_DATE('2022-07-01', 'YYYY-MM-DD'), NULL);
INSERT INTO Courses (course_id, course_title, description, duration, price, status, "level", "language", rating, date_created, date_updated, exam_id)
VALUES (8, 'Android App Development', 'Learn to build Android apps', 75, 199, 'Active', 'Intermediate', 'EN', 4.5, TO_DATE('2021-07-01', 'YYYY-MM-DD'), TO_DATE('2021-06-01', 'YYYY-MM-DD'), 5);
INSERT INTO Courses (course_id, course_title, description, duration, price, status, "level", "language", rating, date_created, date_updated, exam_id)
VALUES (9, 'iOS App Development', 'Learn to build iOS apps', 80, 249, 'Active', 'Intermediate', 'EN', 4.4, TO_DATE('2021-09-01', 'YYYY-MM-DD'), TO_DATE('2022-09-01', 'YYYY-MM-DD'), 6);
INSERT INTO Courses (course_id, course_title, description, duration, price, status, "level", "language", rating, date_created, date_updated, exam_id)
VALUES (10, 'Project Management Fundamentals', 'Learn the basics of project management', 40, 149, 'Active', 'Beginner', 'EN', 4.0, TO_DATE('2021-10-01', 'YYYY-MM-DD'), TO_DATE('2022-10-01', 'YYYY-MM-DD'), NULL);

INSERT INTO Students (student_id, first_name, last_name, email, password, language, date_of_birth)
VALUES (1, 'John', 'Doe', 'johndoe@email.com', 'password1', 'en', TO_DATE('1990-01-01','YYYY-MM-DD'));
INSERT INTO Students (student_id, first_name, last_name, email, password, language, date_of_birth)
VALUES (2, 'Jane', 'Doe', 'janedoe@email.com', 'password2', 'en', TO_DATE('1992-05-15','YYYY-MM-DD'));
INSERT INTO Students (student_id, first_name, last_name, email, password, language, date_of_birth)
VALUES (3, 'Bob', 'Smith', 'bobsmith@email.com', 'password3', 'fr', TO_DATE('1995-08-21','YYYY-MM-DD'));
INSERT INTO Students (student_id, first_name, last_name, email, password, language, date_of_birth)
VALUES (4, 'Alice', 'Johnson', 'alicejohnson@email.com', 'password4', 'en', TO_DATE('1997-03-07','YYYY-MM-DD'));
INSERT INTO Students (student_id, first_name, last_name, email, password, language, date_of_birth)
VALUES (5, 'David', 'Brown', 'davidbrown@email.com', 'password5', 'es', TO_DATE('1993-11-22','YYYY-MM-DD'));
INSERT INTO Students (student_id, first_name, last_name, email, password, language, date_of_birth)
VALUES (6, 'Lisa', 'Garcia', 'lisagarcia@email.com', 'password6', 'es', TO_DATE('1996-09-17','YYYY-MM-DD'));
INSERT INTO Students (student_id, first_name, last_name, email, password, language, date_of_birth)
VALUES (7, 'Michael', 'Lee', 'michaellee@email.com', 'password7', 'en', TO_DATE('1998-12-05','YYYY-MM-DD'));
INSERT INTO Students (student_id, first_name, last_name, email, password, language, date_of_birth)
VALUES (8, 'Sarah', 'Wilson', 'sarahwilson@email.com', 'password8', 'en', TO_DATE('1994-06-30','YYYY-MM-DD'));
INSERT INTO Students (student_id, first_name, last_name, email, password, language, date_of_birth)
VALUES (9, 'Kevin', 'Jackson', 'kevinjackson@email.com', 'password9', 'fr', TO_DATE('1991-02-14','YYYY-MM-DD'));
INSERT INTO Students (student_id, first_name, last_name, email, password, language, date_of_birth)
VALUES (10, 'Emily', 'Taylor', 'emilytaylor@email.com', 'password10', 'en', TO_DATE('1999-07-11','YYYY-MM-DD'));

INSERT INTO Instructors (instructor_id, first_name, last_name, email, password, biography, phone_num)
VALUES (1, 'John', 'Doe', 'johndoe@example.com', 'password', 'John is a seasoned software engineer with over 10 years of experience in the industry.', 'Web development, Data Science');
INSERT INTO Instructors (instructor_id, first_name, last_name, email, password, biography, phone_num)
VALUES (2, 'Jane', 'Smith', 'janesmith@example.com', 'password', 'Jane is a passionate educator with a background in mathematics and computer science.', 'Mathematics, Computer Science');
INSERT INTO Instructors (instructor_id, first_name, last_name, email, password, biography, phone_num)
VALUES (3, 'Mark', 'Johnson', 'markjohnson@example.com', 'password', 'Mark is a software architect with expertise in designing scalable and reliable systems.', 'Software Architecture');
INSERT INTO Instructors (instructor_id, first_name, last_name, email, password, biography, phone_num)
VALUES (4, 'Sarah', 'Lee', 'sarahlee@example.com', 'password', 'Sarah is a UX designer with a passion for creating intuitive and delightful user experiences.', 'User Experience Design');
INSERT INTO Instructors (instructor_id, first_name, last_name, email, password, biography, phone_num)
VALUES (5, 'Michael', 'Chen', 'michaelchen@example.com', 'password', 'Michael is a data scientist with expertise in machine learning and predictive modeling.', 'Data Science, Machine Learning');
INSERT INTO Instructors (instructor_id, first_name, last_name, email, password, biography, phone_num)
VALUES (6, 'Anna', 'Nguyen', 'annanguyen@example.com', 'password', 'Anna is a full-stack developer with expertise in building modern web applications.', 'Web development, React');
INSERT INTO Instructors (instructor_id, first_name, last_name, email, password, biography, phone_num)
VALUES (7, 'Chris', 'Wilson', 'chriswilson@example.com', 'password', 'Chris is a DevOps engineer with experience in deploying and managing cloud infrastructure.', 'DevOps, Cloud Computing');
INSERT INTO Instructors (instructor_id, first_name, last_name, email, password, biography, phone_num)
VALUES (8, 'Emily', 'Jones', 'emilyjones@example.com', 'password', 'Emily is a frontend developer with a passion for creating beautiful and responsive user interfaces.', 'Web development, CSS');
INSERT INTO Instructors (instructor_id, first_name, last_name, email, password, biography, phone_num)
VALUES (9, 'Chris', 'Wilson', 'chriswilson@example.com', 'password', 'Chris is a DevOps engineer with experience in deploying and managing cloud infrastructure.', 'DevOps, Cloud Computing');
INSERT INTO Instructors (instructor_id, first_name, last_name, email, password, biography, phone_num)
VALUES (10, 'Emily', 'Jones', 'emilyjones@example.com', 'password', 'Emily is a frontend developer with a passion for creating beautiful and responsive user interfaces.', 'Web development, CSS');

INSERT INTO Instructor_Course (instructor_id, course_id)
VALUES (1, 2);
INSERT INTO Instructor_Course (instructor_id, course_id)
VALUES (2, 5);
INSERT INTO Instructor_Course (instructor_id, course_id)
VALUES (3, 7);
INSERT INTO Instructor_Course (instructor_id, course_id)
VALUES (1, 1);
INSERT INTO Instructor_Course (instructor_id, course_id)
VALUES (2, 3);
INSERT INTO Instructor_Course (instructor_id, course_id)
VALUES (3, 4);
INSERT INTO Instructor_Course (instructor_id, course_id)
VALUES (4, 6);
INSERT INTO Instructor_Course (instructor_id, course_id)
VALUES (5, 1);
INSERT INTO Instructor_Course (instructor_id, course_id)
VALUES (6, 2);
INSERT INTO Instructor_Course (instructor_id, course_id)
VALUES (5, 3);

INSERT INTO Categories (category_id, category_name, category_description, parent_category_id)
VALUES (1, 'Web Development', 'Courses related to web development', NULL); 
INSERT INTO Categories (category_id, category_name, category_description, parent_category_id)
VALUES (2, 'Mobile Development', 'Courses related to mobile app development', NULL); 
INSERT INTO Categories (category_id, category_name, category_description, parent_category_id)
VALUES (3, 'JavaScript', 'Courses related to JavaScript programming', 1); 
INSERT INTO Categories (category_id, category_name, category_description, parent_category_id)
VALUES (4, 'Python', 'Courses related to Python programming', 1); 
INSERT INTO Categories (category_id, category_name, category_description, parent_category_id)
VALUES (5, 'iOS Development', 'Courses related to iOS app development', 2); 
INSERT INTO Categories (category_id, category_name, category_description, parent_category_id)
VALUES (6, 'Android Development', 'Courses related to Android app development', 2); 
INSERT INTO Categories (category_id, category_name, category_description, parent_category_id)
VALUES (7, 'React', 'Courses related to React programming', 1); 
INSERT INTO Categories (category_id, category_name, category_description, parent_category_id)
VALUES (8, 'Node.js', 'Courses related to Node.js programming', 1); 
INSERT INTO Categories (category_id, category_name, category_description, parent_category_id)
VALUES (9, 'Data Science', 'Courses related to data science', NULL); 
INSERT INTO Categories (category_id, category_name, category_description, parent_category_id)
VALUES (10, 'Machine Learning', 'Courses related to machine learning', 9);

INSERT INTO Category_Course (course_id, category_id)
VALUES (1, 3); 
INSERT INTO Category_Course (course_id, category_id)
VALUES (1, 7); 
INSERT INTO Category_Course (course_id, category_id)
VALUES (1, 8); 
INSERT INTO Category_Course (course_id, category_id)
VALUES (1, 4); 
INSERT INTO Category_Course (course_id, category_id)
VALUES (2, 1); 
INSERT INTO Category_Course (course_id, category_id)
VALUES (2, 7); 
INSERT INTO Category_Course (course_id, category_id)
VALUES (2, 8); 
INSERT INTO Category_Course (course_id, category_id)
VALUES (2, 3); 
INSERT INTO Category_Course (course_id, category_id)
VALUES (2, 4); 
INSERT INTO Category_Course (course_id, category_id)
VALUES (2, 10);

INSERT INTO Certificates (certificate_id, issue_date, expiration_date, certificate_URL)
VALUES (1, TO_DATE('2022-01-01','YYYY-MM-DD'), TO_DATE('2023-01-01','YYYY-MM-DD'), 'https://example.com/certificate1');
INSERT INTO Certificates (certificate_id, issue_date, expiration_date, certificate_URL)
VALUES (2, TO_DATE('2022-02-01','YYYY-MM-DD'), TO_DATE('2023-02-01','YYYY-MM-DD'), 'https://example.com/certificate2');
INSERT INTO Certificates (certificate_id, issue_date, expiration_date, certificate_URL)
VALUES (3, TO_DATE('2022-03-01','YYYY-MM-DD'), TO_DATE('2023-03-01','YYYY-MM-DD'), 'https://example.com/certificate3');
INSERT INTO Certificates (certificate_id, issue_date, expiration_date, certificate_URL)
VALUES (4, TO_DATE('2022-04-01','YYYY-MM-DD'), TO_DATE('2023-04-01','YYYY-MM-DD'), 'https://example.com/certificate4');
INSERT INTO Certificates (certificate_id, issue_date, expiration_date, certificate_URL)
VALUES (5, TO_DATE('2022-05-01','YYYY-MM-DD'), TO_DATE('2023-05-01','YYYY-MM-DD'), 'https://example.com/certificate5');
INSERT INTO Certificates (certificate_id, issue_date, expiration_date, certificate_URL)
VALUES (6, TO_DATE('2022-06-01','YYYY-MM-DD'), TO_DATE('2023-06-01','YYYY-MM-DD'), 'https://example.com/certificate6');
INSERT INTO Certificates (certificate_id, issue_date, expiration_date, certificate_URL)
VALUES (7, TO_DATE('2022-07-01','YYYY-MM-DD'), TO_DATE('2023-07-01','YYYY-MM-DD'), 'https://example.com/certificate7');
INSERT INTO Certificates (certificate_id, issue_date, expiration_date, certificate_URL)
VALUES (8, TO_DATE('2022-08-01','YYYY-MM-DD'), TO_DATE('2023-08-01','YYYY-MM-DD'), 'https://example.com/certificate8');
INSERT INTO Certificates (certificate_id, issue_date, expiration_date, certificate_URL)
VALUES (9, TO_DATE('2022-09-01','YYYY-MM-DD'), TO_DATE('2023-09-01','YYYY-MM-DD'), 'https://example.com/certificate9');
INSERT INTO Certificates (certificate_id, issue_date, expiration_date, certificate_URL)
VALUES (10, TO_DATE('2022-10-01','YYYY-MM-DD'), TO_DATE('2023-10-01','YYYY-MM-DD'), 'https://example.com/certificate10');


INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date, status, completion_date, certificate_id)
VALUES (1, 1, 2, TO_DATE('2022-01-01','YYYY-MM-DD'), 'Enrolled', NULL, NULL);
INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date, status, completion_date, certificate_id)
VALUES (2, 2, 4, TO_DATE('2022-02-01','YYYY-MM-DD'), 'Enrolled', NULL, NULL);
INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date, status, completion_date, certificate_id)
VALUES (3, 3, 1, TO_DATE('2022-03-01','YYYY-MM-DD'), 'Enrolled', NULL, NULL);
INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date, status, completion_date, certificate_id)
VALUES (4, 4, 5, TO_DATE('2022-04-01','YYYY-MM-DD'), 'Enrolled', NULL, NULL);
INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date, status, completion_date, certificate_id)
VALUES (5, 5, 3, TO_DATE('2022-05-01','YYYY-MM-DD'), 'Enrolled', NULL, NULL);
INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date, status, completion_date, certificate_id)
VALUES (6, 1, 6, TO_DATE('2022-06-01','YYYY-MM-DD'), 'Completed', TO_DATE('2022-08-01','YYYY-MM-DD'), 1);
INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date, status, completion_date, certificate_id)
VALUES (7, 2, 8, TO_DATE('2022-07-01','YYYY-MM-DD'), 'Completed', TO_DATE('2022-10-01','YYYY-MM-DD'), 2);
INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date, status, completion_date, certificate_id)
VALUES (8, 3, 9, TO_DATE('2022-08-01','YYYY-MM-DD'), 'Enrolled', NULL, NULL);
INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date, status, completion_date, certificate_id)
VALUES (9, 4, 10, TO_DATE('2022-09-01','YYYY-MM-DD'), 'Enrolled', NULL, NULL);
INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date, status, completion_date, certificate_id)
VALUES (10, 5, 7, TO_DATE('2022-10-01','YYYY-MM-DD'), 'Enrolled', NULL, NULL);

INSERT INTO Reviews (review_id, student_id, course_id, rating, "comment", review_date)
VALUES (1, 1, 1, 4, 'Great course, I learned a lot!', TO_DATE('2022-01-01','YYYY-MM-DD'));
INSERT INTO Reviews (review_id, student_id, course_id, rating, "comment", review_date)
VALUES (2, 2, 1, 5, 'Excellent content and instructors', TO_DATE('2022-02-01','YYYY-MM-DD'));
INSERT INTO Reviews (review_id, student_id, course_id, rating, "comment", review_date)
VALUES (3, 3, 2, 4, 'The course was informative and well-structured', TO_DATE('2022-03-01','YYYY-MM-DD'));
INSERT INTO Reviews (review_id, student_id, course_id, rating, "comment", review_date)
VALUES (4, 4, 2, 3, 'The pace was a bit too slow for me', TO_DATE('2022-04-01','YYYY-MM-DD'));
INSERT INTO Reviews (review_id, student_id, course_id, rating, "comment", review_date)
VALUES (5, 5, 3, 5, 'Loved the hands-on approach to learning', TO_DATE('2022-05-01','YYYY-MM-DD'));
INSERT INTO Reviews (review_id, student_id, course_id, rating, "comment", review_date)
VALUES (6, 6, 3, 4, 'Great course for beginners', TO_DATE('2022-06-01','YYYY-MM-DD'));
INSERT INTO Reviews (review_id, student_id, course_id, rating, "comment", review_date)
VALUES (7, 7, 4, 4, 'The instructors were knowledgeable and engaging', TO_DATE('2022-07-01','YYYY-MM-DD'));
INSERT INTO Reviews (review_id, student_id, course_id, rating, "comment", review_date)
VALUES (8, 8, 4, 5, 'I learned a lot and had fun doing it', TO_DATE('2022-08-01','YYYY-MM-DD'));
INSERT INTO Reviews (review_id, student_id, course_id, rating, "comment", review_date)
VALUES (9, 9, 5, 3, 'The course was a bit too challenging for me', TO_DATE('2022-09-01','YYYY-MM-DD'));
INSERT INTO Reviews (review_id, student_id, course_id, rating, "comment", review_date)
VALUES (10, 10, 5, 4, 'I enjoyed the course and found it very informative', TO_DATE('2022-10-01','YYYY-MM-DD'));

INSERT INTO Lessons (lesson_id, course_id, lesson_title, lesson_description, video_URL, lesson_order)
VALUES (1, 1, 'Introduction to Programming', 'An introduction to programming concepts', 'https://www.youtube.com/watch?v=abc123', 1);
INSERT INTO Lessons (lesson_id, course_id, lesson_title, lesson_description, video_URL, lesson_order)
VALUES (2, 1, 'Variables and Data Types', 'An overview of variables and data types in programming', 'https://www.youtube.com/watch?v=def456', 2);
INSERT INTO Lessons (lesson_id, course_id, lesson_title, lesson_description, video_URL, lesson_order)
VALUES (3, 1, 'Conditional Statements', 'How to use conditional statements in programming', 'https://www.youtube.com/watch?v=ghi789', 3);
INSERT INTO Lessons (lesson_id, course_id, lesson_title, lesson_description, video_URL, lesson_order)
VALUES (4, 2, 'HTML Basics', 'An introduction to HTML', 'https://www.youtube.com/watch?v=jkl012', 1);
INSERT INTO Lessons (lesson_id, course_id, lesson_title, lesson_description, video_URL, lesson_order)
VALUES (5, 2, 'CSS Basics', 'An introduction to CSS', 'https://www.youtube.com/watch?v=mno789', 2);
INSERT INTO Lessons (lesson_id, course_id, lesson_title, lesson_description, video_URL, lesson_order)
VALUES (6, 2, 'JavaScript Basics', 'An introduction to JavaScript', 'https://www.youtube.com/watch?v=pqr345', 3);
INSERT INTO Lessons (lesson_id, course_id, lesson_title, lesson_description, video_URL, lesson_order)
VALUES (7, 3, 'Data Cleaning', 'How to clean and preprocess data for analysis', 'https://www.youtube.com/watch?v=stu678', 1);
INSERT INTO Lessons (lesson_id, course_id, lesson_title, lesson_description, video_URL, lesson_order)
VALUES (8, 3, 'Data Visualization', 'How to visualize data using popular libraries', 'https://www.youtube.com/watch?v=vwx901', 2);
INSERT INTO Lessons (lesson_id, course_id, lesson_title, lesson_description, video_URL, lesson_order)
VALUES (9, 4, 'Supervised Learning', 'An overview of supervised learning techniques', 'https://www.youtube.com/watch?v=lmn234', 1);
INSERT INTO Lessons (lesson_id, course_id, lesson_title, lesson_description, video_URL, lesson_order)
VALUES (10, 4, 'Unsupervised Learning', 'An overview of unsupervised learning techniques', 'https://www.youtube.com/watch?v=opq567', 2);

