# Create Heroku app
resource "heroku_app" "wedding_backend_app" {
  name   = "wedding-backend-app"
  region = "eu"

  # Specify buildpacks if required
  buildpacks = [
    "heroku/nodejs",
    "heroku/python"
  ]

  # Specify environment variables if required
  config_vars = {
    "ENV_VARIABLE_1" = "VALUE_1"
    "ENV_VARIABLE_2" = "VALUE_2"
  }
}

/*
# Add Heroku Postgres database
resource "heroku_addon" "example_db" {
  app_id = heroku_app.wedding_backend_app.id
  plan   = "heroku-postgresql:standard-0"
}

# Add Heroku Redis addon
resource "heroku_addon" "example_redis" {
  app_id = heroku_app.wedding_backend_app.id
  plan   = "heroku-redis:premium-0"
}
*/

# Export output
output "app_url" {
  value = heroku_app.wedding_backend_app.web_url
}