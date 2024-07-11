# Online Book Store

This project is an online book store application that allows users to buy and rent books.
The application includes separate sign-in pages for admins and users. Admins can manage books, 
track orders, and view financial reports, while users can browse, buy, and rent books.

## Features

### Admin
- Track orders and book rentals
- View amount generated from sales and rentals
- Add and delete books from the website

### Users
- Sign in and browse available books
- Buy or rent books
- Provide address and other details for order processing

## Technologies Used
- HTML
- CSS
- JavaScript
- PHP
- Bootstrap
- MySQL

## Getting Started

### Prerequisites
- A web server (e.g., Apache)
- PHP installed on the server
- MySQL database

### Installation
1. Clone the repository to your local machine:
   ```bash
   git clone https://github.com/yourusername/online-book-store.git
2. Navigate to the project directory:
   ```bash
   cd online-book-store
3. Import the database:

    Create a MySQL database named bookstore.
    Import the OnlineBookStore.sql file into the database.

4. Configure the database connection:

    Open config.php file in the root directory.
    Update the database connection settings (host, username, password, database name).

5. Start the web server and navigate to the project directory in your browser:
   ```bash
   http://localhost/online-book-store


### Usage

## Admin Login
  Navigate to the admin sign-in page: http://localhost/online-book-store/admin
  Use the admin credentials to log in and manage the store.
  
## User Login
  Navigate to the user sign-in page: http://localhost/online-book-store/user
  Create a user account or use existing credentials to log in and browse books.
  
### Project Structure
  index.html: Home page
  admin/: Directory containing admin-related pages and functionality
  user/: Directory containing user-related pages and functionality
  config.php: Database configuration file
  bookstore.sql: Database schema and initial data
  
### Contributing
  Contributions are welcome! Please feel free to submit a pull request or open an issue to discuss changes.
