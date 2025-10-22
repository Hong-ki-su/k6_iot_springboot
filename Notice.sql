 CREATE TABLE notification (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,  
    project_id BIGINT NOT NULL,
    author_id BIGINT NOT NULL,                                   
    title VARCHAR(50) NOT NULL,                         
    content LONGTEXT NOT NULL,                                
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,  
    updated_at DATETIME DEFAULT NULL,               
   
      CONSTRAINT fk_notice_author FOREIGN KEY (author_id) REFERENCES users(id),
      CONSTRAINT fk_notice_project FOREIGN KEY (project_id) REFERENCES projects(id)
    
    );
USE k5_iot_springboot;