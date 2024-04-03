# Download data from AlphaESS

1. Add system to account
2. Obtain and record `appid` and `secret`
3. Create a `dl-solar.toml` file with contents:

```toml
appid = "appid-obtained-from-alphacloud"
secret = "secret-obtained-from-alphacloud"
target = '/directory/to/store/tsv/output
```

# SCRATCHPAD

```python
# r = await get(config, "getVerificationCode",
#               {"sysSn": config["sn"],
#                "checkCode": config["checkcode"],
#                })
# log.info(f"{r=}")
# fail("CODE REQUESTED")

# await _get("getOneDateEnergyBySn")  # system, day's power
# ——    eCharge         decimal         total energy charged from battery，unit：kWh
# ——    eChargingPile   decimal         Total energy consumed by charging piles，unit：kWh
# ——    eDischarge      decimal         Discharge，unit：kWh
# ——    eGridCharge     decimal         Grid-charge，unit：kWh
# ——    eInput          decimal         Grid consumption，unit：kWh
# ——    eOutput         decimal         Feed-in，unit：kWh
# ——    epv     decimal         PV generation，unit：kWh
# ——    sysSn   string          System S/N
# ——    theDate         string          Date

# await _get("getSumDataForCustomer")  # system, today's summary data
# # -     epvtoday        decimal         Today’s Generation,unit：kwh
# # -     epvtotal        decimal         Total Generation,unit：kwh
# # -     eload   decimal         Today’s Load,unit：kwh
# # -     eoutput         decimal         Today’s Feed-in,unit：kwh
# # -     einput          decimal         Today’s Consumed,unit：kwh
# # -     echarge         decimal         Today’s Charged,unit：kwh
# # -     edischarge      decimal         Today’s DisCharged,unit：kwh
# # -     todayIncome     decimal         Today’s Income
# # -     totalIncome     decimal         Total Profit
# # -     eselfConsumption        decimal         Self-consumption,unit：%
# # -     eselfSufficiency        decimal         Self-sufficiency,unit：%
# # -     treeNum         decimal         Trees Planted
# # -     carbonNum       decimal         CO2 Reduction,unit：kg
# # -     moneyType       string          Currencies

# await _get("getChargeConfigInfo")    # battery, high threshold
# await _get("getDisChargeConfigInfo") # battery, low threshold
# await _get("getEvChargerConfigList")
# await _get("getEvChargerCurrentsBySn")
# await _get("getEvChargerStatusBySn")
# await _get("getLastPowerData")       # system, last power reading

recent={
    # pv arrays; ppv=ppv1+ppv2 (W)
    'ppv': 1707.0, 'ppvDetail': {'ppv1': 850.0, 'ppv2': 857.0, 'ppv3': 0.0, 'ppv4': 0.0, 'pmeterDc': 0.0}, 
    
    # battery charge (%)
    'soc': 31.2, 
    
    # ev charging; disconnected
    'pev': 0, 'pevDetail': {'ev1Power': 0, 'ev2Power': 0, 'ev3Power': 0, 'ev4Power': 0}, 
    
    # ???
    'prealL1': 276.0, 'prealL2': 0.0, 'prealL3': 0.0, 
    
    # grid: +ve ~ from-grid ; -ve ~ to-grid (W)
    'pgrid': 7.0, 'pgridDetail': {'pmeterL1': 7.0, 'pmeterL2': 0.0, 'pmeterL3': 0.0}, 
    
    # battery load: +ve ~ from-battery ; -ve ~ to-battery (W)
    'pbat': -1217.064, 
    
    # house load (W)
    'pload': 496.936
}                                                                                           
```
