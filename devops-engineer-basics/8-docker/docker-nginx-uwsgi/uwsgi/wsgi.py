#!/usr/bin/env python3
# -*- encoding: utf-8 -*-

def application(env, start_response):
    start_response('200 OK', [('Content-Type','text/html')])
    return [b"<h1>Hello World</h1>"]