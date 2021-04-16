# Get julia:latest for the build
FROM julia:latest

# We must import the 'helloserver.py'.
# We use the keyword 'ADD' to do that.
# ADD <file> <workdir>
ADD helloworld.jl /helloserver/

# The 'WORKDIR' changes the base directory of your image.
# Here we define '/helloserver/' as base directory (where all commands will be executed).
WORKDIR /helloserver/