#!/bin/bash

# Local Temperature summary from BOM. Consumed by BetterTouchTool for display in the touchbar
APP_TEMP=$(curl -H "Accept-Encoding: gzip" -s http://www.bom.gov.au/fwo/IDN60801/IDN60801.94763.json |
	gzip -d 2> /dev/null |
       	/usr/local/bin/jq '.observations.data[0].apparent_t')
/bin/echo -n "${APP_TEMP}°C "

FORECAST_ICON_NUMBER=$(curl -s ftp://ftp.bom.gov.au/anon/gen/fwo/IDN10064.xml |
	xpath '//area[@aac="NSW_PT114"]/forecast-period[@index="0"]/element[@type="forecast_icon_code"]/text()' 2>/dev/null)

case $FORECAST_ICON_NUMBER in
  "")           ICON="";;
  1)		ICON="☀️";;  # Sunny
  2)		ICON="☀️";;  # Clear
  3)		ICON="⛅️";;  # Mostly sunny/partly cloudy
  4)		ICON="☁️";;  # Cloudy
  9)		ICON="🌧💨";;  # Showers, very windy
  11|16|17)	ICON="🌦";;  # Possible Shower/Shower or two
  18)		ICON="🌧";;  # Rain
  *)            ICON="🐪 ($FORECAST_ICON_NUMBER)";;  # Not sure
esac

echo $ICON
