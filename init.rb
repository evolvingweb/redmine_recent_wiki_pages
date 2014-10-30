require 'redmine'

# require_dependency "welcome_controller_patch"

Redmine::Plugin.register :redmine_recent_wiki_pages do
  name 'Redmine Recent Wiki Pages'
  author 'Alex Dergachev'
  url 'https://github.com/evolvingweb/redmine_recent_wiki_pages'
  author_url 'http://evolvingweb.ca'
  description 'Displays a list of recently updated wiki pages across all projects'
  version '0.0.1'
end
