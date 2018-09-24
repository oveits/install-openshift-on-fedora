
cd openshift-ansible \
  && ansible-playbook -i inventory/hosts.localhost playbooks/prerequisites.yml -vvv
