#Phabricator running on ubuntu

Provisions a clean phabricator running on a Ubuntu VM using ansible.

Just execute:

    git clone https://github.com/katcipis/ansible.ubuntu.phabricator.git
    cd ansible.ubuntu.phabricator
    vagrant up

And you are ready to go ;-). Just go on the browser and check out *127.0.0.1:8080*.

Dont access using localhost:8080, Phabricator is annoying with domain names that dont have a dot. 
