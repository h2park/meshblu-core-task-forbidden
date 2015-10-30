class Forbidden
  do: (request, callback) =>
    response =
      metadata:
        responseId: request.metadata.responseId
        code: 403
        status: 'Forbidden'

    callback null, response


module.exports = Forbidden
