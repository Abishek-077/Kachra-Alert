# 🗑️ Kachra Alert App

**Kachra Alert** is a Flutter-based smart waste management application that enables citizens to report garbage-related issues and helps authorities manage, track, and resolve those issues efficiently.

The application is built using **Clean Architecture**, follows a **feature-based structure**, and supports **offline-first functionality** using Hive local storage.

---

## 📱 Project Overview

Poor waste management is a growing urban problem. Kachra Alert aims to digitize and simplify the process of garbage reporting by allowing users to submit alerts directly from their mobile devices while enabling administrators to manage those alerts effectively.

This project is designed to be:
- Scalable
- Maintainable
- Suitable for real-world use
- Ideal for academic and final-year projects

---

## 🚀 Features

### 👤 User Features
- User registration and login (offline)
- Report garbage-related alerts
- View previously submitted alerts
- Offline data storage using Hive
- Clean and intuitive user interface

### 🛠️ Admin Features
- Admin login
- View all reported alerts
- Manage and update alert status
- Separate admin alert handling

### ⚙️ Application Features
- Offline-first architecture
- Role-based access (User / Admin)
- Feature-based clean architecture
- Centralized Hive service
- Scalable folder structure

---

## 🧱 Architecture

The app follows **Clean Architecture** principles with **feature-based modularization**.

lib/
├── core/
│ ├── constants/
│ ├── services/
│ ├── utils/
│ └── widgets/
│
├── features/
│ ├── auth/
│ │ ├── data/
│ │ ├── domain/
│ │ └── presentation/
│ │
│ ├── alerts/
│ ├── admin/
│ ├── schedule/
│ └── settings/
│
└── main.dart


Each feature contains:
- **data** → models, datasources, repositories  
- **domain** → entities, use cases  
- **presentation** → UI screens, controllers, providers  

---

## 🛠️ Tech Stack

- **Flutter** (Dart)
- **Hive** – Local NoSQL Database
- **Riverpod** – State Management
- **Material UI**
- **Clean Architecture**

---

## 🗄️ Local Database (Hive)

Hive is used for offline persistence of:
- User authentication data
- User sessions
- Garbage alerts
- Admin alerts
- App settings

All Hive adapters are initialized using a centralized service to ensure clean startup and proper dependency management.

---

## 🔐 Authentication

- Offline Sign Up & Login using Hive
- Session persistence
- Role-based authentication (`user`, `admin`)
- Secure local storage approach

---

## ⚙️ Setup & Installation

### Prerequisites
- Flutter SDK (>= 3.0.0)
- Dart SDK
- Android Studio / VS Code
- Android Emulator or Physical Device

### Run the App
```bash
flutter pub get
flutter run
