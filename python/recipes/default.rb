#
# Cookbook Name:: python
# Recipe:: default
#
# Copyright 2009, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
package "python2.6" do
  action :install
end

%w{ 
  dev imaging matplotlib matplotlib-data matplotlib-doc mysqldb 
  numpy numpy-ext paramiko scipy setuptools sqlite scons mako
  openid dateutil twill psycopg2 babel cherrypy3 django jinja
  virtualenv werkzeug boto pip libapache2-mod-wsgi coverage
  lxml paver processing nose mox
}.each do |pkg|
  package "python-#{pkg}" do
    action :install
  end
end
