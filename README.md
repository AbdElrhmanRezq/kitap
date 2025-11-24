# Kitap
Kitap is a Flutter application for discovering and browsing a vast library of free e-books. Leveraging the Google Books API, the app provides a clean and intuitive interface for users to find their next read. Built with a focus on clean architecture and modern development practices, Kitap offers a seamless and responsive user experience.

## Features

*   **Discover Books:** Browse curated lists of featured books and a real-time feed of the newest books available.
*   **Book Details:** Access comprehensive details for each book, including title, author(s), average rating, and a preview link.
*   **Smart Search:** Find books quickly with a dynamic search that updates results as you type.
*   **Similar Books:** Get recommendations for similar books based on the category of the currently viewed book.
*   **Modern UI:** Enjoy a visually appealing dark theme with custom typography (`GT Sectra Fine`) for comfortable reading and browsing.

## Technical Overview

The application is built using a clean, feature-driven architecture to ensure scalability and maintainability.

*   **Framework:** Flutter
*   **Architecture:** Clean Architecture with a feature-first approach.
*   **State Management:** `flutter_bloc` (using Cubits) for predictable and decoupled state management.
*   **Navigation:** `go_router` for a declarative, URL-based routing solution.
*   **Networking:** `dio` for efficient and robust network requests to the Google Books API.
*   **Dependency Injection:** `get_it` for service location and decoupling dependencies.
*   **Functional Programming:** `dartz` is used for explicit error handling with the `Either` type.

## Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

You need to have the Flutter SDK installed on your machine.
*   [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)

### Installation

1.  **Clone the repository:**
    ```sh
    git clone https://github.com/AbdElrhmanRezq/kitap.git
    ```
2.  **Navigate to the project directory:**
    ```sh
    cd kitap
    ```
3.  **Install dependencies:**
    ```sh
    flutter pub get
    ```
4.  **Run the application:**
    ```sh
    flutter run
