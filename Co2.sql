CREATE TABLE company (
  id INTEGER PRIMARY KEY,
  company_name VARCHAR(255),
  created_date DATE,
  company_age INTEGER,
  company_industry VARCHAR(255),
  company_desc VARCHAR(255),
  company_about TEXT,
  company_email VARCHAR(255),
  company_phone VARCHAR(255),
  company_logo VARCHAR(255)
);



INSERT INTO company (id, company_name, created_date, company_age, company_industry, company_desc, company_about, company_email, company_phone, company_logo)
VALUES (1, 'CO2', '2020-01-01', 2, 'web development', 'We are a marketing agency', 'We are a digital marketing agency specializing in SEO, Web design...', 'co2@company.com', '123-456-7890', 'co2_logo.png');

CREATE TABLE services (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  description TEXT,
  service_photo VARCHAR(255),
  company_id INTEGER,
  FOREIGN KEY (company_id) REFERENCES company(id)
);

INSERT INTO services (id, name, description, service_photo, company_id)
VALUES
(1, 'Digital Marketing', 'We help businesses grow online', 'digital_marketing.png', 1),
(2, 'Internet Marketing', 'We increase online visibility and drive traffic', 'internet_marketing.png', 1),
(3, 'Content Marketing', 'We create valuable content to engage audiences', 'content_marketing.png', 1),
(4, 'Social Marketing', 'We leverage social media to reach target audiences', 'social_marketing.png', 1),
(5, 'B2B Marketing', 'We help businesses market to other businesses', 'b2b_marketing.png', 1),
(6, 'E-mail Marketing', 'We use email to promote products and services', 'email_marketing.png', 1);


CREATE TABLE team (
team_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255) NOT NULL,
age INT NOT NULL,
role VARCHAR(255) NOT NULL,
fb_profile VARCHAR(255) NOT NULL,
twitter_profile VARCHAR(255) NOT NULL,
instagram_profile VARCHAR(255) NOT NULL,
linkedin_profile VARCHAR(255) NOT NULL,
member_photo BLOB NOT NULL,
company_id INT NOT NULL,
FOREIGN KEY (company_id) REFERENCES company (company_id)
);

INSERT INTO team (name, age, role, fb_profile, twitter_profile, instagram_profile, linkedin_profile, member_photo, company_id)
VALUES ('Jane Smith', 28, 'Lead Developer', 'https://www.facebook.com/janesmith', 'https://www.twitter.com/janesmith', 'https://www.instagram.com/janesmith', 'https://www.linkedin.com/in/janesmith', 'photo_blob', 1);

INSERT INTO team (name, age, role, fb_profile, twitter_profile, instagram_profile, linkedin_profile, member_photo, company_id)
VALUES ('Bob Johnson', 35, 'Chief Financial Officer', 'https://www.facebook.com/bobjohnson', 'https://www.twitter.com/bobjohnson', 'https://www.instagram.com/bobjohnson', 'https://www.linkedin.com/in/bobjohnson', 'photo_blob', 1);

INSERT INTO team (name, age, role, fb_profile, twitter_profile, instagram_profile, linkedin_profile, member_photo, company_id)
VALUES ('Sara Lee', 25, 'Marketing Manager', 'https://www.facebook.com/saralee', 'https://www.twitter.com/saralee', 'https://www.instagram.com/saralee', 'https://www.linkedin.com/in/saralee', 'photo_blob', 1);



CREATE TABLE project (
project_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255) NOT NULL,
short_description TEXT NOT NULL,
long_description TEXT NOT NULL,
link VARCHAR(255) NOT NULL,
project_photo BLOB NOT NULL,
dates VARCHAR(255) NOT NULL,
company_id INT NOT NULL,
FOREIGN KEY (company_id) REFERENCES company (company_id),
services_id INT NOT NULL,
FOREIGN KEY (services_id) REFERENCES services (services_id)
);


INSERT INTO project (name, short_description, long_description, link, project_photo, dates, company_id)
VALUES ('Project A', 'Website Redesign', 'We redesigned the company website to improve user experience and increase engagement. The new design is mobile-friendly and includes new features such as a blog and a resource center.', 'https://www.projecta.com', 'projecta_photo_blob', '2021-01-01 to 2021-04-30', 1);

INSERT INTO project (name, short_description, long_description, link, project_photo, dates, company_id)
VALUES ('Project B', 'Social Media Campaign', 'We developed and executed a social media campaign to increase brand awareness and drive traffic to the company website. The campaign included targeted ads, influencer partnerships, and engaging content.', 'https://www.projectb.com', 'projectb_photo_blob', '2021-05-01 to 2021-08-31', 1);

INSERT INTO project (name, short_description, long_description, link, project_photo, dates, company_id)
VALUES ('Project C', 'Email Marketing Strategy', 'We developed an email marketing strategy to promote a new product launch. The strategy included creating a segmented email list, developing targeted messaging, and conducting A/B testing to optimize results.', 'https://www.projectc.com', 'projectc_photo_blob', '2021-09-01 to 2021-12-31', 1);
