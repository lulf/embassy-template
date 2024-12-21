MEMORY
{
{% if chip contains "rp2040" -%}
  BOOT2   : ORIGIN = 0x10000000, LENGTH = 0x100
{% endif -%}
  FLASH : ORIGIN = {{ flash_start }}, LENGTH = {{ flash_size }}
  RAM : ORIGIN = {{ ram_start }}, LENGTH = {{ ram_size }}
{% if chip contains "nrf9160" -%}
  IPC   : ORIGIN = 0x20000000, LENGTH = 64K
{% endif -%}
}

{% if chip contains "nrf9160" -%}
PROVIDE(__start_ipc = ORIGIN(IPC));
PROVIDE(__end_ipc   = ORIGIN(IPC) + LENGTH(IPC));
{% endif -%}
