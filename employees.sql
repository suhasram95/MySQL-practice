CREATE TABLE employee
	(
		id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
		last_name VARCHAR(255) NOT NULL,
		middle_name VARCHAR(255),
		first_name VARCHAR(255) NOT NULL,
		age INT NOT NULL,
		current_status VARCHAR(50) NOT NULL DEFAULT 'employed'
	);

DESC employee;