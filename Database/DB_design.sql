CREATE TABLE "student" (
  "stu_id" BIGSERIAL PRIMARY KEY,
  "stu_name" VARCHAR(30),
  "stu_ph_no" VARCHAR(11),
  "stu_email" VARCHAR(50),
  "stu_dob" DATE
);

CREATE TABLE "books" (
  "book_id" BIGSERIAL PRIMARY KEY,
  "book_name" VARCHAR(30),
  "author_name" VARCHAR(50),
  "book_price" INT
);

CREATE TABLE "issues" (
  "isu_id" BIGSERIAL PRIMARY KEY ,
  "isu_date" DATE,
  "isu_book_id" BIGSERIAL,
  "isu_stu_id" BIGSERIAL
);

CREATE TABLE "branch" (
  "branch_id" BIGSERIAL PRIMARY KEY,
  "branch_name" VARCHAR(20),
  "branch_category" VARCHAR(20)
);

CREATE TABLE "login" (
  "login_id" BIGSERIAL PRIMARY KEY,
  "login_user_id" BIGSERIAL,
  "login_user_name" VARCHAR(50),
  "login_password" VARCHAR(20)
);

CREATE TABLE "user_details" (
  "user_id" BIGSERIAL PRIMARY KEY,
  "user_name" VARCHAR(30),
  "user_phone" VARCHAR(30),
  "user_email" VARCHAR(30)
);

CREATE TABLE "teacher" (
  "teacher_id" BIGSERIAL PRIMARY KEY,
  "teacher_name" VARCHAR(30),
  "teacher_number" VARCHAR(30),
  "teacher_email" VARCHAR(30)
);

ALTER TABLE "issues" ADD FOREIGN KEY ("isu_id") REFERENCES "student" ("stu_id");

ALTER TABLE "issues" ADD FOREIGN KEY ("isu_id") REFERENCES "books" ("book_id");

ALTER TABLE "books" ADD FOREIGN KEY ("book_id") REFERENCES "branch" ("branch_id");

ALTER TABLE "login" ADD FOREIGN KEY ("login_id") REFERENCES "user_details" ("user_id");

CREATE TABLE "teacher_user" (
  "teacher_teacher_id" BIGSERIAL,
  "user_user_id" BIGSERIAL,
  PRIMARY KEY ("teacher_teacher_id", "user_user_id")
);

ALTER TABLE "teacher_user" ADD FOREIGN KEY ("teacher_teacher_id") REFERENCES "teacher" ("teacher_id");

ALTER TABLE "teacher_user" ADD FOREIGN KEY ("user_user_id") REFERENCES "user_details" ("user_id");


CREATE TABLE "student_user" (
  "student_stu_id" BIGSERIAL,
  "user_user_id" BIGSERIAL,
  PRIMARY KEY ("student_stu_id", "user_user_id")
);

ALTER TABLE "student_user" ADD FOREIGN KEY ("student_stu_id") REFERENCES "student" ("stu_id");

ALTER TABLE "student_user" ADD FOREIGN KEY ("user_user_id") REFERENCES "user_details" ("user_id");

