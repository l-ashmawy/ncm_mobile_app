# NCM Mobile App ReadMe

NCM Mobile is a versatile project designed for submitting new request to get climate data. This comprehensive guide will
provide you with everything you need to know to get started with the project, from installation instructions to a
detailed description of its features.

## Table of Contents

- [Features](#features)

- [Installation](#installation)

    - [Prerequisites](#prerequisites)

    - [Clone the Repository](#clone-the-repository)

    - [Configuration](#configuration)

    - [Build and Run](#build-and-run)

- [Usage](#usage)

- [Contributing](#contributing)

- [License](#license)

## Features

- Login : That user can login with username and password and if data is correct then user can Login to the app and
  navigate to Dashboard.

- Dashboard : User can see the weather data of the current location and numbers of services with status and can make
  request.

- Services : Include station details that user can submit the details of the station to make request.

## Installation

Follow these steps to install and run NCM Mobile on your system.

### Prerequisites

Before you begin, ensure you have the following dependencies and tools installed:

- [Android Studio](#https://developer.android.com/studio/install) to install Android SDK.
- [Dart SDK](#https://dart.dev/get-dart)
- [Flutter](#https://docs.flutter.dev/get-started/install)

### Clone the Repository

1. Open your terminal or command prompt.

2. Use the following command to clone the NCM Mobile repository:

git clone https://github.com/l-ashmawy/ncm_mobile_app.git

### Configuration

1. Change your working directory to the cloned repository:

cd ncm_mobile_app

1. Get dependences  : Open terminal and write
    ```bash
   make pub_get_install
   ```

### Build and Run

1. Connect your device or start an emulator.

2. To build and run the project, use the following command:
    ```bash
   flutter run
   ```
This will build the project and install it on your connected device or emulator.

## Usage

1. Login: enter you username and password and click on login button to navigate to the dashboard [username and password must be at least 5 characters].
2. Dashboard: you can see the weather data and numbers of services with status and can make request when click on any item in services list.
3. Services: you can submit the details of the station to make request.
4. Reporting: you can see the requests that submitted by you. 

