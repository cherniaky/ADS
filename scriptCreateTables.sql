CREATE TABLE Exams (
  exam_id INT PRIMARY KEY,
  exam_title VARCHAR2(50),
  exam_description VARCHAR2(200),
  exam_duration INT,
  passing_score INT,
  attempts_allowed INT
);

CREATE TABLE Courses (
  course_id INT PRIMARY KEY,
  course_title VARCHAR2(40),
  description VARCHAR2(50),
  duration INT,
  price INT,
  status VARCHAR2(10),
  "level" VARCHAR2(15),
  "language" CHAR(2),
  rating FLOAT(2),
  date_created DATE,
  date_updated DATE,
  exam_id INT UNIQUE,
  CONSTRAINT Courses_exam_id FOREIGN KEY(exam_id) REFERENCES Exams(exam_id)
);

CREATE TABLE Students (
  student_id INT PRIMARY KEY,
  first_name VARCHAR2(40),
  last_name VARCHAR2(40),
  email VARCHAR2(40),
  password VARCHAR2(100),
  language CHAR(2),
  date_of_birth DATE
);

CREATE TABLE Instructors (
  instructor_id INT PRIMARY KEY,
  first_name VARCHAR2(40),
  last_name VARCHAR2(40),
  email VARCHAR2(40),
  password VARCHAR2(100),
  biography VARCHAR2(100),
  phone_num VARCHAR2(100)
);

CREATE TABLE Instructor_Course (
  instructor_id INT NOT NULL,
  course_id INT NOT NULL,
  PRIMARY KEY (instructor_id, course_id),
  CONSTRAINT Instructor_Course_instructor_id FOREIGN KEY (instructor_id) REFERENCES Instructors(instructor_id) ON DELETE CASCADE,
  CONSTRAINT Instructor_Course_course_id FOREIGN KEY (course_id) REFERENCES Courses(course_id) ON DELETE CASCADE
);

CREATE TABLE Categories (
  category_id INT PRIMARY KEY,
  category_name VARCHAR2(40),
  category_description VARCHAR2(100),
  parent_category_id INT,
  CONSTRAINT Categories_parent_category_id FOREIGN KEY (parent_category_id) REFERENCES Categories(category_id)
);

CREATE TABLE Category_Course (
  category_id INT,
  course_id INT,
  PRIMARY KEY (category_id, course_id),
  CONSTRAINT Category_Course_category_id FOREIGN KEY (category_id) REFERENCES Categories(category_id),
  CONSTRAINT Category_Course_course_id FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

CREATE TABLE Certificates (
  certificate_id INT PRIMARY KEY,
  issue_date DATE,
  expiration_date DATE,
  certificate_URL VARCHAR2(150)
);

CREATE TABLE Enrollments (
  enrollment_id INT PRIMARY KEY,
  student_id INT NOT NULL,
  course_id INT NOT NULL,
  enrollment_date DATE,
  status VARCHAR2(40),
  completion_date DATE,
  certificate_id INT UNIQUE,
  CONSTRAINT Enrollments_student_id FOREIGN KEY (student_id) REFERENCES Students(student_id),
  CONSTRAINT Enrollments_course_id FOREIGN KEY (course_id) REFERENCES Courses(course_id),
  CONSTRAINT Enrollments_certificate_id FOREIGN KEY (certificate_id) REFERENCES Certificates(certificate_id)
);

CREATE TABLE Reviews (
  review_id INT PRIMARY KEY,
  student_id INT,
  course_id INT,
  rating INT,
  "comment" VARCHAR2(100),
  review_date DATE,
  CONSTRAINT Reviews_student_id FOREIGN KEY (student_id) REFERENCES Students(student_id),
  CONSTRAINT Reviews_course_id FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

CREATE TABLE Lessons (
  lesson_id INT PRIMARY KEY,
  course_id INT,
  lesson_title VARCHAR2(40),
  lesson_description VARCHAR2(250),
  video_URL VARCHAR2(1000),
  duration INT,
  lesson_order INT,
  CONSTRAINT Lessons_course_id FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);