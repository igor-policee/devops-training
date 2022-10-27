def application(env, start_response) -> list[str]:
    start_response('200 OK', [('Content-Type', 'text/html')])
    return ["Hello, Skillbox!"]