part of api;

FutureOr<Request> requestInterceptor(request) async {
  // final token = StorageService.box.pull(StorageItems.accessToken);

  // request.headers['X-Requested-With'] = 'XMLHttpRequest';
  // request.headers['Authorization'] = 'Bearer $token';
  return request;
}
