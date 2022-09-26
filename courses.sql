CREATE TABLE "users" (
  "user_id" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar UNIQUE NOT NULL,
  "age" int NOT NULL,
  "courses" uuid,
  "role" uuid
);

CREATE TABLE "courses" (
  "course_id" uuid PRIMARY KEY,
  "title" varchar(100) NOT NULL,
  "description" text NOT NULL,
  "level" varchar NOT NULL,
  "category" uuid,
  "teacher" varchar NOT NULL,
  "videos" uuid
);

CREATE TABLE "course_videos" (
  "video_id" uuid PRIMARY KEY,
  "title" varchar(100) NOT NULL,
  "url" text NOT NULL
);

CREATE TABLE "categories" (
  "category_id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "roles" (
  "role_id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "levels" (
  "level_id" numeric PRIMARY KEY,
  "title" varchar NOT NULL
);

ALTER TABLE "courses" ADD FOREIGN KEY ("course_id") REFERENCES "users" ("courses");

ALTER TABLE "course_videos" ADD FOREIGN KEY ("video_id") REFERENCES "courses" ("videos");

ALTER TABLE "roles" ADD FOREIGN KEY ("role_id") REFERENCES "users" ("role");

ALTER TABLE "categories" ADD FOREIGN KEY ("category_id") REFERENCES "courses" ("category");

ALTER TABLE "levels" ADD FOREIGN KEY ("level_id") REFERENCES "courses" ("level");

insert into users (
	user_id,
	name,
	email,
	password,
	age,
	courses,
	role
) values (
	'f2e9a6f0-e909-407b-bb07-586d3a1f7936',
	'Jose Tizon',
	'joset@email.com',
	'pass123',
	22,
	'7a8e71c6-7816-4980-b52b-52d57ac085a4',
	'16cf9a64-b7e2-4b84-9921-75417f6c849f'
), (
	'dd7f78e3-da4b-4bed-ba8c-32ad94006e89',
	'Alfredo Pinelo',
	'alfredop@email.com',
	'word456',
	23,
	'55a810ae-cc17-4f4f-a15f-c04dd32bac0f',
	'75347144-7cad-40e5-a711-6e5837e66a39'
);

insert into courses (
	course_id,
	title,
	description,
	level,
	category,
	teacher,
	videos
) values (
	'7a8e71c6-7816-4980-b52b-52d57ac085a4',
	'Getting started with Node JS',
	'The perfect course to learn the basics of Node JS.',
	1,
	'1b7dd939-badf-4a18-8ca7-4d209761f457',
	'Luis Perez',
	'6e1eee4b-6341-4c29-84c7-47145f6a0b3a'
), (
	'55a810ae-cc17-4f4f-a15f-c04dd32bac0f',
	'World of Ecuations',
	'For those who are looking to improve their math skills.',
	2,
	'e4def287-202a-4e7c-8736-39d8d1e22228',
	'Juan Lopez',
	'fc59881b-b1d3-412e-aa78-0ef94cae6514'
);

insert into course_videos(
	video_id,
	title,
	url
) values (
	'6e1eee4b-6341-4c29-84c7-47145f6a0b3a',
	'Introduction',
	'www.youtube.com'
), (
	'fc59881b-b1d3-412e-aa78-0ef94cae6514',
	'Installing tools',
	'www.youtube.com'
), (
	'40791026-3658-4261-a2a1-0b75f3a87ca9',
	'Getting started',
	'www.youtube.com'
);

insert into categories (
	category_id,
	name
) values (
	'1b7dd939-badf-4a18-8ca7-4d209761f457',
	'Programming'
), (
	'e4def287-202a-4e7c-8736-39d8d1e22228',
	'Science'
), (
	'0feb2d57-6a38-4cc9-822f-dc320291ab22',
	'Maths'
);

insert into roles (
	role_id,
	name
) values (
	'16cf9a64-b7e2-4b84-9921-75417f6c849f',
	'Student'
), (
	'75347144-7cad-40e5-a711-6e5837e66a39',
	'Teacher'
), (
	'512a326c-c2e7-4fc6-820f-0dc7ea185e53',
	'Admin'
);

insert into levels(
	level_id,
	title
) values (
	1,
	'Begginer'
), (
	2,
	'Intermediate'
), (
	3,
	'Advanced'
);
