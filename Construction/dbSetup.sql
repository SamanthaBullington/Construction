CREATE TABLE IF NOT EXISTS accounts(
  id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) COMMENT 'User Name',
  email varchar(255) COMMENT 'User Email',
  picture varchar(255) COMMENT 'User Picture'
) default charset utf8 COMMENT '';

CREATE TABLE company(  
    id int NOT NULL primary key AUTO_INCREMENT comment 'primary key',
    name varchar(255) comment 'company name'
) default charset utf8 comment '';

CREATE TABLE contractor(  
    id int NOT NULL primary key AUTO_INCREMENT comment 'primary key',
    name varchar(255) comment 'contractor name'
) default charset utf8 comment '';

CREATE TABLE jobs(  
    id int NOT NULL primary key AUTO_INCREMENT comment 'primary key',
    create_time DATETIME COMMENT 'create time',
    update_time DATETIME COMMENT 'update time',
    contractorId int comment 'contractor id',
    companyId int comment 'company id',
    FOREIGN KEY (companyId) REFERENCES company(id) ON DELETE CASCADE,
    FOREIGN KEY (contractorId) REFERENCES contractor(id) ON DELETE CASCADE
) default charset utf8 comment '';