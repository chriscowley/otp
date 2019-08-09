install:
	install -m 0755 otp /usr/local/bin/otp
	install -m 0644 otp-completion.bash /etc/bash_completion.d/otp-completion.bash

remove:
	rm -f /usr/local/bin/otp /etc/bash_completion.d/otp-completion.bash
