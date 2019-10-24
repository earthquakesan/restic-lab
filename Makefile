
inventory := inventory/hosts
pb_run := ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i ${inventory} playbooks
add-ssh-key:
	ssh-add ~/.vagrant.d/insecure_private_key

provision:
	 ${pb_run}/provision.yml

install-restic:
	${pb_run}/restic.yml