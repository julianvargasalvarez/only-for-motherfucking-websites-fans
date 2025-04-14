# Use the latest official Ruby image as the base
FROM ruby:3.4.2

# Set the working directory inside the container
WORKDIR /app

# Install required dependencies
RUN apt-get update -qq && apt-get install -y \
    nodejs \
    yarn \
    build-essential \
    libpq-dev

# Install Bundler and Rails
RUN gem install bundler rails

# Expose the default Rails port
EXPOSE 3000

# Default command to run Rails server (optional)
CMD ["rails", "server", "-b", "0.0.0.0"]
