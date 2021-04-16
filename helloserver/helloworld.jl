using Pkg
Pkg.add("HTTP")

using HTTP

HTTP.serve() do request::HTTP.Request
    @show request
    @show request.method
    @show HTTP.header(request, "Content-Type")
    @show HTTP.payload(request)
    try
        return HTTP.Response("Hello World!")
    catch e
        return HTTP.Response(404, "Error: $e")
    end
end
request = HTTP.Messages.Request: