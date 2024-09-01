CREATE DATABASE Customer;
USE Customer;

CREATE TABLE Customer.CustomerChurn_Stage (CustomerId BIGINT NOT NULL,
											Surname VARCHAR(30),
                                            CreditScore INT,
                                            Geography VARCHAR(30),
                                            Gender VARCHAR(10),
                                            Age INT,
                                            Balance DECIMAL(13,2),
                                            Exited TINYINT,
                                            PRIMARY KEY (CustomerId));
                                            
                                            

CREATE TABLE Customer.CustomerChurn(CustomerId BIGINT NOT NULL,
									Surname VARCHAR(30),
									CreditScore INT,
									Geography VARCHAR(30),
									Gender VARCHAR(10),
									Age INT,
									Balance DECIMAL(13,2),
									Exited TINYINT,
									SourceSystemNm NVARCHAR(20) NOT NULL,
									CreateAgentID NVARCHAR(20) NOT NULL,
									CreateDtm DATETIME NOT NULL,
									ChangeAgentId NVARCHAR(20) NOT NULL,
									ChangeDtm DATETIME NOT NULL,
									PRIMARY KEY (CustomerId));
                                    
                                    
SHOW CREATE TABLE Customer.CustomerChurn_Stage;

SHOW CREATE TABLE Customer.CustomerChurn;

SELECT COUNT(*) FROM Customer.CustomerChurn_Stage;
SELECT * FROM Customer.CustomerChurn_Stage ORDER BY CustomerId DESC LIMIT 5;

