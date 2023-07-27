# Installation and Setup

### Front-end (Flutter)

1. Clone the repository: `git clone <repository-url>`
2. Navigate to the Flutter project directory: `cd task-management-flutter`
3. Install dependencies: `flutter pub get`
4. Run the application: `flutter run`

### Back-end (Buffalo)

1. Clone the repository: `git clone <repository-url>`
2. Navigate to the Buffalo project directory: `cd task-management-buffalo`
3. Install dependencies: `go mod tidy`
4. Set up the database: Update the `database.yml` file with your database credentials and run database migrations.
5. Start the server: `buffalo dev`

### Configuration

- Front-end configuration: Update the API endpoint in the `lib/utils/api.dart` file to match the server address and port.
- Back-end configuration: Update the `database.yml` file with your database credentials and ensure the required environment variables are set.

## Technologies Used

- Flutter: A UI toolkit for building natively compiled applications for mobile, web, and desktop platforms.
- Buffalo: A Go web development eco-system that provides a simple and elegant framework for building scalable and performant applications.

## Contributing

Contributions are welcome! If you encounter any issues or have suggestions for improvement, please submit a pull request or open an issue.

## License

This project is licensed under the [MIT License](LICENSE). Feel free to use and modify the code according to the terms of this license.
