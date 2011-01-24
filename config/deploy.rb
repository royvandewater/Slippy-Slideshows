# This defines a deployment "recipe" that you can feed to capistrano
# (http://manuals.rubyonrails.com/read/book/17). It allows you to automate
# (among other things) the deployment of your application.

# =============================================================================
# REQUIRED VARIABLES
# =============================================================================
# You must always specify the application and repository for every recipe. The
# repository must be the URL of the repository you want this recipe to
# correspond to. The deploy_to path must be the path on each machine that will
# form the root of the application path.

set :application, "presentations"
set :repository, "git@github.com:royvandewater/Slippy-Slideshows.git"

# =============================================================================
# ROLES
# =============================================================================
# You can define any number of roles, each of which contains any number of
# machines. Roles might include such things as :web, or :app, or :db, defining
# what the purpose of each machine is. You can also specify options that can
# be used to single out a specific subset of boxes in a particular role, like
# :primary => true.

role :web, "royvandewater.com"
role :app, "#{application}"

# =============================================================================
# OPTIONAL VARIABLES
# =============================================================================
# set :deploy_to, "/home/deploy/apps/presentations" # defaults to "/u/apps/#{application}"
set :user, "deploy"            # defaults to the currently logged in user
set :scm, :git               # defaults to :subversion
set :use_sudo, false
