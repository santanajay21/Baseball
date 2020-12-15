require_relative './config/environment'

use Rack::MethodOverride


use PlayerController
use UserController
run ApplicationController