
if [ ! -d /mqttwarn/config ] ; then
  mkdir /mqttwarn/config
fi

if [ ! -d /mqttwarn/log ] ; then
  mkdir /mqttwarn/log
fi

if [ ! -f /mqttwarn/config/mqttwarn.ini ] ; then
 cp /mqttwarn.ini /mqttwarn/config/mqttwarn.ini
fi


if [ ! -h /mqttwarn/mqttwarn.ini ] ; then
  ln -s /mqttwarn/config/mqttwarn.ini /mqttwarn/mqttwarn.ini
fi

cd /mqttwarn
exec /mqttwarn/mqttwarn.py


