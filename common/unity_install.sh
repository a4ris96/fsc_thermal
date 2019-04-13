  device_check=`grep_prop ro.product.device`
  API=`grep_prop ro.build.version.sdk`
  
if [ $API -ge "26" ] ;then
  dir="$VEN/etc"
else
  dir="$SYS/etc"
fi

ui_print " "
support=0
multiprofile=0

if [ $device_check == "akatsuki" ] || [ $device_check == "akatsuki_dsds" ] ; then
  ui_print "  Xperia XZ3 detected"
  device="XZ3"
  support=1
  multiprofile=1
fi

if [ $device_check == "aurora" ] || [ $device_check == "aurora_dsds" ] ; then
  ui_print "  Xperia XZ2 Premium detected"
  device="XZ3"
  support=1
  multiprofile=1
fi

if [ $device_check == "akari" ] || [ $device_check == "akari_dsds" ] ; then
  ui_print "  Xperia XZ2 detected"
  device="XZ3"
  support=1
  multiprofile=1
fi

if [ $device_check == "apollo" ] || [ $device_check == "apollo_dsds" ] ; then
  ui_print "  Xperia XZ2 Compact detected"
  device="XZ3"
  support=1
  multiprofile=1
fi

if [ $device_check == "poplar" ] || [ $device_check == "poplar_dsds" ] ; then
  ui_print "  Xperia XZ1 detected"
  device="XZ1"
  support=1
  multiprofile=1
fi

if [ $device_check == "lilac" ] || [ $device_check == "lilac_dsds" ] ; then
  ui_print "  Xperia XZ1 Compact detected"
  device="XZ1"
  support=1
  multiprofile=1
fi

if [ $device_check == "maple" ] || [ $device_check == "maple_dsds" ] ; then
  ui_print "  Xperia XZ Premium detected"
  device="XZ1"
  support=1
  multiprofile=1
fi

if [ $device_check == "keyaki" ] || [ $device_check == "keyaki_dsds" ] ; then
  ui_print "  Xperia XZs detected"
  device="XZ"
  support=1
  multiprofile=1
fi

if [ $device_check == "kagura" ] || [ $device_check == "kagura_dsds" ] ; then
  ui_print "  Xperia XZ detected"
  device="XZ"
  support=1
  multiprofile=1
fi

if [ $device_check == "Dora" ] || [ $device_check == "Dora_dsds" ] ; then
  ui_print "  Xperia X Performance detected"
  device="XZ"
  support=1
  multiprofile=1
fi

if [ $device_check == "satsuki" ] || [ $device_check == "satsuki_dsds" ] ; then
  ui_print "  Xperia Z5 Premium detected"
  device="Z5"
  support=1
fi

if [ $device_check == "sumire" ] || [ $device_check == "sumire_dsds" ] ; then
  ui_print "  Xperia Z5 detected"
  device="Z5"
  support=1
fi

if [ $device_check == "suzuran" ] || [ $device_check == "suzuran_dsds" ] ; then
  ui_print "  Xperia Z5 Compact detected"
  device="Z5"
  support=1
fi

if [ $device_check == "ivy" ] || [ $device_check == "ivy_dsds" ] ; then
  ui_print "  Xperia Z3+ detected"
  device="Z4"
  support=1
fi

    if [ $support -eq "0" ];then
	  ui_print "  Your device is not supported"
	  abort "  Aborting"
    fi

  ui_print " "
  ui_print "** DISCLAIMER **"
  ui_print " "
  ui_print "   Use at your own risk"
  ui_print "   I am not responsible"
  ui_print "   For any damage that could happen"
  ui_print "   Please do some research"
  ui_print "   To know how this mod works"
  ui_print " "

sleep "2"
  
if [ -z $PROFILEMODE ] ; then


  ui_print " "
  ui_print ".######...####....####.."
  ui_print ".##......##......##..##."
  ui_print ".######...####...##....."
  ui_print ".##..........##..##..##."
  ui_print ".##.......####....####.."
  ui_print "........................"
  ui_print " "
  if [ $multiprofile -eq "1" ];then
   
  ui_print "** Choose Thermal tweaks mode **"
  ui_print " "
  ui_print "   1. Balanced"
  ui_print "   2. Performance Boost"
  ui_print " "
  ui_print "** Please choose tweaks mode **"
  ui_print " "
  ui_print "   Vol(+) = Balanced (Recommended)"
  ui_print "   Vol(-) = Performance"
  ui_print " "
  
    if $VKSEL; then
    PROFILEMODE=0
    ui_print "   Balanced mode selected."
    ui_print " "
    cp -f "${TMPDIR}/devices/${device}/0/thermal-engine.conf"  "${TMPDIR}/${dir}/thermal-engine.conf"
    else
    PROFILEMODE=1
    ui_print "   Performance mode selected."
    ui_print " "
    cp -f "${TMPDIR}/devices/${device}/1/thermal-engine.conf"  "${TMPDIR}/${dir}/thermal-engine.conf"
    fi
	
	else
    PROFILEMODE=0
    ui_print "   Extracting files."
    ui_print " "
    cp -f "${TMPDIR}/devices/${device}/0/thermal-engine.conf"  "${TMPDIR}/${dir}/thermal-engine.conf"
	fi
	fi
	
 	for f in $(find /${TMPDIR} -name 'placeholder'); do rm $f; done

    ui_print "   Installation was successful !!.."
    ui_print " "
 sleep "0.5"
    ui_print "   Enjoy .."
    ui_print " "

