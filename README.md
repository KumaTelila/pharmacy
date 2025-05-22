# 💊 Pharmacy Management System

A comprehensive Pharmacy Management System built with **Laravel**, designed to streamline the management of pharmaceutical operations, including inventory, sales, and user roles.

## 🚀 Features

* User authentication and role management
* Drug inventory tracking
* Sales and transaction management
* Responsive UI with modern front-end tooling
* Admin panel for overseeing operations

## 📦 Tech Stack

* **Backend:** Laravel (PHP)
* **Frontend:** Blade Templates, Bootstrap
* **Database:** MySQL
* **Tooling:** Composer, NPM, Laravel Mix

---

## 🛠️ Setup Instructions

Follow the steps below to get the project up and running on your local machine:

### 1. 🔄 Clone the Repository

```bash
git clone https://github.com/KumaTelila/pharmacy.git
cd pharmacy
```

### 2. 🗂️ Configure Environment

* Duplicate the `.env.example` file and rename it to `.env`
* Update your `.env` file with the correct database credentials:

  ```
  DB_DATABASE=your_database_name
  DB_USERNAME=your_username
  DB_PASSWORD=your_password
  ```

### 3. 🧱 Create the Database

* Open MySQL or a database GUI (e.g., phpMyAdmin)
* Create a database using the name specified in the `.env` file.

### 4. 📥 Install Dependencies

```bash
composer install
npm install
npm run dev
```

### 5. 🔄 Migrate and Seed the Database

```bash
php artisan migrate
php artisan db:seed
```

### 6. 🔐 Generate Application Key

```bash
php artisan key:generate
```

### 7. 🖥️ Run the Application

```bash
php artisan serve
```

Visit the displayed local URL (usually `http://127.0.0.1:8000`) in your browser to access the app. **Google Chrome** is recommended for the best experience.

---

## 🔑 Login Credentials

Login credentials for different user roles are provided in the project folder in `.txt` files. Please check those files to log in and explore the system functionalities.

---


