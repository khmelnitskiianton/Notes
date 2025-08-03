# How to VPN

1. Need server to transfer traffic 
  
Settings: Debian 12, No ssh, IPv4

+ https://hostvds.com, use MIR to pay!

You maybe need to wait until new servers appears.

Best locations: Netherlands, Finland, Paris.

Rate: 1 dollar(cheapest), 2 dollars(for one), 4 dollars(for many)

After creation you will have username and password in EMAIL letter. Open and save IP, USERNAME(root), PASSWORD from it

+ https://aeza.net/virtual-servers, use SBP

1. Connect to server from your terminal: `ssh root@100.100.100.100` and enter password. Also you have online virtual terminal on site.

2. Follow guide https://habr.com/ru/articles/799751/ (open with vpn) or [pdf here](./habr.pdf). Beginning on 7th page! Before short introducing in networks

3. At the end of setup server and check that xray is active, you will have link `vless://` with settings of your server and e.t.c. Next download Hiddify/NekoBox or another app supports vless and load this link in it, you will have connection.

> Hiddify accepts only loading from buffer! You need copy link to clipboard, and then load it in hiddify.

## Возможные проблемы

Видите бесконечно Таймаут в Hiddify, заходите через сайт в консоль(или по ssh)
Если после `sudo systemctl status xray` видите disable, значит надо что то исправить

1. Переполнение логов

`Data hash table of /run/log/journal/####/system.journal has a fill level` сообщения

Добавить в конфиг:
```json
   "log": {
      "access": "",                 
      "error": "/var/log/xray/error.log",
      "loglevel": "error"
    },
```

Либо:

```bash
nano /etc/systemd/journald.conf
```
Меняем `SystemMaxUse=5000M` и `MaxRetentionSec=50000` теперь логи будут занимать не больше 5Гб и обновляться каждые пол дня

```bash
sudo systemctl restart systemd-journald
```

Либо делать 

```bash
# Rotate the current journal file
sudo journalctl --rotate

# Vacuum journals to keep only 200M worth of logs
sudo journalctl --vacuum-size=5000M

# Or keep only the last 7 days of logs
sudo journalctl --vacuum-time=1d
```

Далее 

```bash
sudo systemctl restart xray
sudo systemctl status xray
```

Перезагрузка сервера:
```bash
sudo systemctl reboot
```