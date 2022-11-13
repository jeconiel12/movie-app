class LocalException implements Exception {
  final String message;

  const LocalException(this.message);
}

class RemoteException implements Exception {
  final String message;

  const RemoteException(this.message);
}
