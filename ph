
{
  "log": {
    "disabled": false,
    "level": "info",
    "timestamp": true
  },
  "dns": {
    "servers": [
      {
        "tag": "proxyDns",
        "address": "https://1.1.1.1/dns-query",
        "detour": "select"
      },
      {
        "tag": "localDns",
        "address": "223.5.5.5",
        "detour": "direct"
      },
      {
        "tag": "block",
        "address": "rcode://success"
      }
    ],
    "rules": [
            {
                "domain_suffix": [
                    ".ir"
                ],
                "server": "dns-direct"
            },

      {
        "server": "localDns",
        "outbound": "any",
        "disable_cache": true
      },
      {
        "server": "localDns",
        "clash_mode": "direct"
      },
      {
        "server": "proxyDns",
        "clash_mode": "global"
      }

    ],
    "strategy": "ipv4_only"
  },
  "inbounds": [
    {
      "sniff": true,
      "type": "mixed",
      "listen": "127.0.0.1",
      "listen_port": 1081
    },
    {
      "stack": "system",
      "auto_route": true,
      "inet4_address": "172.19.0.1/30",
      "mtu": 9000,
      "sniff": true,
      "strict_route": true,
      "type": "tun",
      "platform": {
        "http_proxy": {
          "enabled": true,
          "server": "127.0.0.1",
          "server_port": 1081
        }
      }
    }
  ],
  "outbounds": [
    {
      "tag": "select",
      "type": "selector",
      "outbounds": [
        "auto",
        "A1",
        "A2",
        "A3",
		"A4",
		"A5",
		"A6",
		"A7",
		"A8"
      ]
    },
    {
      "tag": "auto",
      "type": "urltest",
      "outbounds": [
        "A1",
        "A2",
        "A3",
		"A4",
		"A5",
		"A6",
		"A7",
		"A8"
      ],
      "url": "https://www.gstatic.com/generate_204",
      "interval": "1m",
      "tolerance": 50
    },
    {
      "tag": "direct",
      "type": "direct"
    },
    {
      "tag": "block",
      "type": "block"
    },
    {
      "tag": "dns-out",
      "type": "dns"
    },
   
	{
      "server": "91.108.241.3",
      "server_port": 34344,
      "uuid": "fa98ccdf-157f-4b0a-9c10-8430f4f94411",
	  "password": "2c87a5bf9e45f2b2",
      "congestion_control": "bbr",
      "tls": {
        "enabled": true,
        "insecure": true,
		"alpn": [
			"h3",
			"spdy/3.1"
		]
      },
      "tag": "A1",
      "type": "tuic"
    },
    {
      "server": "[2a12:5940:777f::2]",
      "server_port": 34344,
      "uuid": "fa98ccdf-157f-4b0a-9c10-8430f4f94411",
	  "password": "2c87a5bf9e45f2b2",
      "congestion_control": "bbr",
      "tls": {
        "enabled": true,
        "insecure": true,
		"alpn": [
			"h3",
			"spdy/3.1"
		]
      },
      "tag": "A2",
      "type": "tuic"
    },
	{
      "server": "147.45.76.180",
      "server_port": 29393,
      "uuid": "c3c8a581-25c3-41a8-95bd-0188f63748b9",
	  "password": "01e584f913b01ca8",
      "congestion_control": "bbr",
      "tls": {
        "enabled": true,
        "insecure": true,
		"alpn": [
			"h3",
			"spdy/3.1"
		]
      },
      "tag": "A3",
      "type": "tuic"
    },
	{
      "server": "[2a12:5940:431d::2]",
      "server_port": 29393,
      "uuid": "c3c8a581-25c3-41a8-95bd-0188f63748b9",
	  "password": "01e584f913b01ca8",
      "congestion_control": "bbr",
      "tls": {
        "enabled": true,
        "insecure": true,
		"alpn": [
			"h3",
			"spdy/3.1"
		]
      },
      "tag": "A4",
      "type": "tuic"
    },
	{
      "server": "147.45.76.99",
      "server_port": 48282,
      "uuid": "6801db4e-76d9-4a3e-acdc-9ebdd1dd4e86",
	  "password": "c515252362b009f5",
      "congestion_control": "bbr",
      "tls": {
        "enabled": true,
        "insecure": true,
		"alpn": [
			"h3",
			"spdy/3.1"
		]
      },
      "tag": "A5",
      "type": "tuic"
    },
	{
      "server": "[2a12:5940:42c5::2]",
      "server_port": 48282,
      "uuid": "6801db4e-76d9-4a3e-acdc-9ebdd1dd4e86",
	  "password": "c515252362b009f5",
      "congestion_control": "bbr",
      "tls": {
        "enabled": true,
        "insecure": true,
		"alpn": [
			"h3",
			"spdy/3.1"
		]
      },
      "tag": "A6",
      "type": "tuic"
    },
	{
      "server": "147.45.76.116",
      "server_port": 54833,
      "uuid": "eec22c1c-2e37-4c66-b7a9-41cf43033070",
	  "password": "3e53ddf7839c5112",
      "congestion_control": "bbr",
      "tls": {
        "enabled": true,
        "insecure": true,
		"alpn": [
			"h3",
			"spdy/3.1"
		]
      },
      "tag": "A7",
      "type": "tuic"
    },
	{
      "server": "[2a12:5940:42d8::2]",
      "server_port": 54833,
      "uuid": "eec22c1c-2e37-4c66-b7a9-41cf43033070",
	  "password": "3e53ddf7839c5112",
      "congestion_control": "bbr",
      "tls": {
        "enabled": true,
        "insecure": true,
		"alpn": [
			"h3",
			"spdy/3.1"
		]
      },
      "tag": "A8",
      "type": "tuic"
    }
  ],
  "route": {
    "auto_detect_interface": true,
    "final": "select"
  },
  "experimental": {
    "clash_api": {
  "external_controller": "127.0.0.1:9090",
  "external_ui": "",
  "external_ui_download_url": "",
  "external_ui_download_detour": "",
  "secret":"",
  "default_mode": ""

    }
  }
}