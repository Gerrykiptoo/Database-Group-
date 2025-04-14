-- User Roles
CREATE ROLE 'bookstore_admin', 'bookstore_staff', 'bookstore_report';

-- Admin Privileges
GRANT ALL PRIVILEGES ON BookstoreDB.* TO 'bookstore_admin';

-- Staff Privileges
GRANT SELECT, INSERT, UPDATE ON
BookstoreDB.book,
BookstoreDB.author,
BookstoreDB.customer TO 'bookstore_staff';

-- Report Privileges
GRANT SELECT ON BookstoreDB.* TO 'bookstore_report';

-- Create Users
CREATE USER 'admin_jane'@'localhost' 
IDENTIFIED BY 'SecurePass123!'
DEFAULT ROLE 'bookstore_admin';

CREATE USER 'staff_mike'@'%' 
IDENTIFIED BY 'StaffPass456!'
DEFAULT ROLE 'bookstore_staff';