from flask import Response, jsonify, make_response


class APIResponse(Response):
    @classmethod
    def respond(cls, data):
        return make_response(jsonify(data=data))

    @classmethod
    def raise_error(cls, status_code=500):
        return Response(status=status_code)
