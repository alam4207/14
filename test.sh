#!/bin/env bash
KEY="-----BEGIN OPENSSH PRIVATE KEY-----\n
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\n
-----END OPENSSH PRIVATE KEY-----"

## 安装私钥
chmod 700 /root/.ssh
echo -e $KEY >/root/.ssh/id_rsa
chmod 600 /root/.ssh/id_rsa
ssh-keyscan gitee.com >/root/.ssh/known_hosts
ssh -T git@gitee.com
