from fabric.api import local, env
from fabric.contrib.project import rsync_project

env.hosts = []
env.user = ''

env.build_dir = 'build/'

# =============================================================================
#  ENV
# ==========================================================================
# def production():
#     '''Setting overides for production environment.'''
#     env.hosts = ['fueled.com']
#     env.user = 'ubuntu'
#     env.remote_deploy_dir = '/opt/webapps/fueled.com/'


# =============================================================================
#  TASKS
# ==========================================================================

def setup():
    '''Setup local development environment using middleman. http://middlemanapp.com/'''
    local('sudo gem install middleman')
    local('sudo bundle install')


def serve():
    '''Run local development server.'''
    local('bundle exec middleman')


def build(clean=False):
    local('rm -rf %(build_dir)s' % env)
    local('bundle exec middleman build --clean --verbose')


def deploy():
    build()
    env.last_commit = local('git log -1 --oneline', True)
    local('ghp-import -m "%(last_commit)s" %(build_dir)s' % env)
    local('git push origin gh-pages')
