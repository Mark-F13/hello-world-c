# Use the official lightweight GCC image (contains the standard C compiler)
FROM gcc:latest

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the C source code into the container
COPY main.c .

# Compile the C program using gcc
RUN gcc -o hello_c_app main.c

# Run the executable when the container starts
CMD ["./hello_c_app"]
