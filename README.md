# Download data from various sources

```toml
basedir = 'BASEDIR'
```

## AlphaESS

1. Add system to account
2. Obtain and record `appid` and `secret` via website

```toml
[secrets.alphaess]
appid = "appid-from-alphacloud"
secret = "secret-from-alphacloud"
```

## MyEnergi

1. Obtain serial number from app / website.
2. Obtain API key from website

```toml
[secrets.myenergi]
serial = "serial-number"
apikey = "api-key"
```

```bash
curl --digest -u '$SERIALNO:$APIKEY' \
    -H"accept: application/json" -H "content-type: application/json" \
    "https://s18.myenergi.net/cgi-jday-Z$SERIALNO-$DATE"
```

## Octopus

1. Obtain API key from website
2. Extract MPAN and Meter Serial Number via
 
```bash
curl -u '$APIKEY:' \ 
  'https://api.octopus.energy/v1/accounts/<account-number>/'  \
  | jq '{number: .number, \
         mpan: .properties[].electricity_meter_points[].mpan, \
         meter: .properties[].electricity_meter_points[].meters[].serial_number \
         }'
```

```toml
[secrets.octopus]
account = "account-number"
apikey = "api-key"
mpan = "mpan-id"
meter = "meter-serial-number"
```
