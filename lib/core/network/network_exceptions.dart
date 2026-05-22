class NetworkExceptions {

  static String getErrorMessage(dynamic error) {

    // Timeout
    if (error.toString().contains("Timeout")) {

      return "Connection timeout.";
    }

    // Socket exception
    if (error.toString().contains("SocketException")) {

      return "No internet connection.";
    }

    // Default
    return "Something went wrong.";
  }
}