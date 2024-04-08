MEMORY
{
{% if chip contains "rp2040" -%}
  BOOT2   : ORIGIN = 0x10000000, LENGTH = 0x100
{% endif -%}
  FLASH : ORIGIN = {{ flash_start }}, LENGTH = {{ flash_size }}
  RAM : ORIGIN = {{ ram_start }}, LENGTH = {{ ram_size }}
}
