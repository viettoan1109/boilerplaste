part of api;

FutureOr<dynamic> responseInterceptor(
    Request request, Response response) async {
  if (response.statusCode != 200) {
    handleErrorStatus(response);
    return;
  }

  return response;
}

void handleErrorStatus(Response response) {
  switch (response.statusCode) {
    case 400:
      // final message = ErrorResponse.fromJson(response.body);
      // CommonWidget.toast(message.error);
      break;
    default:
  }

  return;
}
