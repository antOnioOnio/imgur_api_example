# imgur_images_example

A new Flutter project.

## Overview

This project is an example of how to use an external API, specifically
the [Imgur API](https://apidocs.imgur.com/), to build a Flutter application that interacts with an
image gallery. The app demonstrates key features such as fetching data from the API, navigating
between screens, searching for images, and managing a list of favorite images.

## Architecture

This application follows a clean architecture approach, which is divided into three main layers:

1. **Presentation Layer**: This layer contains the UI code and the state management logic. It
   includes widgets, screens, and state management classes.
2. **Domain Layer**: This layer contains the business logic of the application. It includes
   entities.
3. **Data Layer**: This layer handles data retrieval and storage. It includes repositories, data
   sources (remote and local), and models.

### Presentation Layer

- **Widgets**: Stateless and stateful widgets that build the UI.
- **Features**: Different features of the application.
- **State Management**: Uses `freezed` and `bloc` for state management.

### Domain Layer

- **Entities**: Core classes that represent the business models.

### Data Layer

- **Repositories**: Interfaces and implementations for data operations.
- **Data Sources**: Remote and local data sources for fetching and storing data.
- **Models**: Data models for serialization and deserialization.

## Features

The app offers a number of core functionalities, centered around interacting with images from Imgur:

- **Central Gallery**: The main screen shows a grid of images fetched from the Imgur API. This
  serves as the central point for image exploration.
- **Detail View**: Tapping on any image opens a detailed view, where users can see more information
  about the selected image, including title and description.
- **Favorites**: Users can mark images as favorites. These favorites are stored locally, allowing
  users to revisit their preferred images later.
- **Search**: A `SearchDelegate` is implemented to allow users to search for images by keywords.
  This enhances the user experience by making it easier to find specific images from the Imgur
  gallery.

## Splash Screen

The application includes a splash screen that displays upon startup. This gives the app a polished
look and improves the initial user experience by providing a visual indication that the app is
loading.

## Retrofit

The application uses Retrofit for connecting with the Imgur API services. Retrofit is a type-safe
HTTP client for Dart and Flutter, which makes it easier to handle network requests and responses.

## Entity Transformation

The app transforms `RemoteEntity` objects fetched from the API into `Entity` objects used within the
domain layer. This separation ensures the data layer is decoupled from the business logic, adhering
to clean architecture principles.

## Contracts

The application uses abstract classes known as `contracts` to bridge the different layers. These
contracts define the methods that need to be implemented by concrete classes, improving the
modularity and testability of the app.

## State Management

The app uses `freezed` and `bloc` for state management. `freezed` is employed to create immutable
classes and handle union types, while `bloc` manages the state transitions in a predictable and
structured manner.

## Summary

This Flutter project serves as a comprehensive example of how to:

- Integrate an external API (Imgur) into a Flutter application.
- Navigate between different screens, including a detailed image view.
- Implement a search feature using `SearchDelegate`.
- Manage a favorites system, where users can add and revisit their preferred images.

## Demo Video

[Watch the demonstration video](./assets/video/readme_video.mp4)

## Flutter Version

This project uses **Flutter 3.16.7**.

To ensure compatibility, make sure you are using this version of Flutter or a compatible one. You
can check your current Flutter version by running:
