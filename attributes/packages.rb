# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     http//www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Core packages - built to match the Setup.py file in the Aiflow repository.
default['airflow']['packages'] =
  {
    async: [{ name: 'greenlet', version: '>=0.4.9' },
            { name: 'eventlet', version: '>=0.9.7' }],
    jdbc: [{ name: 'jaydebeapi', version: '>=0.2.0' }],
    postgres: [{ name: 'psycopg2', version: '>=2.7.1' }],
    slack: [{ name: 'slackclient', version: '>=1.0.0' }],
  }

# OS packages needed for the above python packages.
default['airflow']['dependencies'] =
  {
    ubuntu:
    {
      default: [{ name: 'python-dev', version: '' },
                { name: 'build-essential', version: '' },
                { name: 'libssl-dev', version: '' }],
      mysql: [{ name: 'mysql-client', version: '' },
              { name: 'libmysqlclient-dev', version: '' }],
      postgres: [{ name: 'postgresql-client', version: '' },
                 { name: 'libpq-dev', version: '' }],
      mssql: [{ name: 'freetds-dev', version: '' }],
      crypto: [{ name: 'libffi-dev', version: '' }],
      password: [{ name: 'libffi-dev', version: '' }],
      gcp_api: [{ name: 'libffi-dev', version: '' }],
      ldap: [{ name: 'libldap2-dev', version: '' }],
      hive: [{ name: 'libsasl2-dev', version: '' }],
      devel_hadoop: [{ name: 'libkrb5-dev', version: '' }],
      webhdfs: [{ name: 'libkrb5-dev', version: '' }],
      kerberos: [{ name: 'libsasl2-dev', version: '' }]
    },
    centos:
    {
      default: [{ name: 'gcc', version: '' },
                { name: 'gcc-c++', version: '' },
                { name: 'epel-release', version: '' },
                { name: 'libjpeg-devel', version: '' },
                { name: 'zlib-devel', version: '' },
                { name: 'python-devel', version: '' }],
      mysql: [{ name: 'mariadb', version: '' },
              { name: 'mariadb-devel', version: '' }],
      postgres: [{ name: 'postgresql', version: '' },
                 { name: 'postgresql-devel', version: '' }],
      mssql: [{ name: 'freetds-devel', version: '' }],
      crypto: [{ name: 'libffi-devel', version: '' }],
      password: [{ name: 'libffi-devel', version: '' }],
      gcp_api: [{ name: 'libffi-devel', version: '' }],
      ldap: [{ name: 'cyrus-sasl-devel', version: '' }],
      hive: [{ name: 'cyrus-sasl-devel', version: '' }],
      devel_hadoop: [{ name: 'cyrus-sasl-devel', version: '' }],
      webhdfs: [{ name: 'cyrus-sasl-devel', version: '' }],
      kerberos: [{ name: 'cyrus-sasl-devel', version: '' }]
    }
  }
