# Скрипт по копированию локальных бекапов Proxmox в облака

1. документация по [vzdump](https://pve.proxmox.com/pve-docs/vzdump.1.html)
2. документация по [vzdump-hook](https://git.proxmox.com/?p=pve-manager.git;a=blob;f=vzdump-hook-script.pl;h=a93eeec80bd09128e70a4a9775438ab658da2191;hb=refs/heads/master)
3. документация по [rclone](https://rclone.org/docs/)
4. видео по бекапам в [proxmox](https://www.youtube.com/watch?v=48atUsvKY4Y&list=PLEFo-qGWcO2bIGEy7HbLX2nWfhVj3prmL&index=8)

## Предустановка

1. `apt update && apt install rclone` - ставим софт
2. `rclone config` - настраиваем удаленное хранилище

## Настройка

1. создаем файлик со скриптом `backup-script.sh` в папке `/opt/scripts/` и задаем ему права на выполнение `chmod +x backup-script.sh`
2. в скрипте нужно поправить переменные исходя из ситуации на вашем конкретном сервере
3. правим конфиг `/etc/vzdump.conf`
надо раскоментировать строку `# script` и прописать туда полный путь до скрипта бекапа `script: /opt/scripts/backup-script.sh`

## Использование

Создаем новую задачу на бекапирование в Proxmox, по факту положительного выполнения, срабатывает скрипт, данные улетают в облако

## Видео к курсу

- [видео]()

### Автор

- **Vassiliy Yegorov** [vasyakrg](https://github.com/vasyakrg)
- [сайт](https://vk.com/realmanual)
- [youtube](https://youtube.com/realmanual)
