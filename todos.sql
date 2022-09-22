CREATE TABLE "to_dos" (
  "id" uuid PRIMARY KEY,
  "title" varchar(100) NOT NULL,
  "description" text NOT NULL,
  "status" boolean DEFAULT true
);

insert into to_dos
(
	id,
	title,
	description,
	status
) values (
	'c24797ed-8fff-4160-a4bc-69a3a151193e',
	'Study',
	'Practice what we just learned in the Node JS class.',
	true
),
(
	'7ab154b7-6e98-4275-8a9d-2e5c5d999ba6',
	'Play',
	'Play some videogames to get distracted.',
	true
),
(
	'8b1a5c24-9aa0-4876-b656-e82e5610dbdc',
	'Wash the car',
	'Get the car to the car wash.',
	true
)

select * from to_dos

select * from to_dos where status = false