PATH="$PATH:/usr/local/bin"
ansible-playbook --connection=local --inventory 127.0.0.1, --extra-vars "workspace=${WORKSPACE}" ./ansible/playbooks/pb_run_dummy_selenium_job.yaml
# "--connection=local" ansible in kurulu oldugu makinede bu komutu calistirmak istiyoruz. Target node larda calistirmaya ihtiyac yok ve sadece ansible in kurulu oldugu host da calistirmak istiyorsak kullaniyoruz