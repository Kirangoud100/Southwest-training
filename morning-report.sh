#!/bin/bash
# variables

FLIGHT_LOG="flight-status.log"
BAGGAGE_LOG="baggage-tracker.log"
ERROR_LOG="system-errors.log"
HEALTH_LOG="server-health.log"

echo "================================"
echo "SOUTHWEST AIRLINES MORNING REPORT"
echo "================================"
echo ""


echo "FLIGHTS"
DELAYED=$(grep "DELAYED" $FLIGHT_LOG | wc -l)
echo "DELAYED: $DELAYED" 
if [ $DELAYED -gt 10 ]
then 
     echo  "🚨 WARNING: Too many delays !"

else 
     echo "✅ Delays Normal"

fi 
echo -n "CANCELLED: "
grep "CANCELLED" $FLIGHT_LOG | wc -l

echo -n "ON-TIME: "
grep "ON-TIME" $FLIGHT_LOG | wc -l


echo ""
echo "BAGGAGE"
echo -n "Lost bags: "
grep "LOST" $BAGGAGE_LOG| wc -l

echo ""
echo "SYSTEMS"
echo -n "Errors: "
grep "ERROR" $ERROR_LOG| wc -l

echo -n "Critical: "
grep "CRITICAL" $HEALTH_LOG | wc -l

echo ""
echo "================================"
echo "Report Complete"
echo "================================"
