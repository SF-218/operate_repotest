#!bin/bash
puppet resource package git ensure=present
puppet resource package apache2 ensure=present
puppet resource service apache2 ensure=running
puppet module install puppetlabs-vcsrepo
puppet resource file /18059938/clone ensure=absent force=true
puppet resource file /18059938 ensure=directory
puppet resource file /18059938/clone ensure=directory
cd /18059938/clone
git clone https://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@github.com/SF-218/operate_repo.git
cp -p /18059938/operate_repo/index.html /var/www/html
