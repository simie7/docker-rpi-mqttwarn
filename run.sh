cd /mqttwarn

if [ ! -f mqttwarn.ini.sample ] ; then
 cp /mqttwarn.ini.sample ./mqttwarn.ini
fi

exec /mqttwarn/mqttwarn.py
