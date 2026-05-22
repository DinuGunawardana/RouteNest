class ApiResult<T> {

  final T? data;

  final String? error;

  final bool success;

  ApiResult.success(this.data)
      : success = true,
        error = null;

  ApiResult.failure(this.error)
      : success = false,
        data = null;
}