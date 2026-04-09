# Sys-installs
 - `install_aws_cli.sh`:
	- This script silently installs Amazon Web Services Command Line Interface to Linux systems.
		- Requires root privileges
		- Requires `apt` package manager
		- Checks if AWS CLI already exists on the system
		- Verify installation with: `aws --version`

# Citations
 - [AWS CLI Installation Docs](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
	- Used the following commands from this set of Installation docs:
	```
	curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
	unzip awscliv2.zip
	sudo ./aws/install
	```
